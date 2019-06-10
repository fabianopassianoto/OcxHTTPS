unit spdHTTPS;

interface

uses
{$INCLUDE defines.inc}


  Windows,
{$IF COMPILERVERSION >= 23}
  vcl.Dialogs,
{$ELSE}
  Dialogs,
{$IFEND}
  Classes,
  SysUtils,
  IniFiles,
  WinHttp_TLB, IdTCPConnection, IdTCPClient, IdHTTP, IdSSLOpenSSL, IdMultipartFormData;

type
  TspdHTTPS = class(TObject)
  private


  protected

  public
    constructor Create(aOwner: TComponent);
    destructor Destroy; override;
    function GetHTTPSIndy(aURL: String): String; virtual;
    function PutHTTPS(aURL, aSourceFile: String): String; virtual;

  end;

{$R *.dcr}

implementation



constructor TspdHTTPS.Create(aOwner: TComponent);
begin


end;


destructor TspdHTTPS.Destroy;
begin

  inherited;
end;


function TspdHTTPS.GetHTTPSIndy(aURL: String): String;
var
  _erro : string;
  _Response : TStringStream;
  _Http: TIdHTTP;
  _IOHandler: TIdSSLIOHandlerSocketOpenSSL;
  _URL : string;
begin
  _Http := TIdHTTP.Create(nil);
  _Http.Request.CustomHeaders.Clear;
  _Http.Request.Clear;
  _URL := aURL;
  _Response := TStringStream.Create('');
  _IOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    _Http.ReadTimeout := 9999;
    _Http.IOHandler :=  _IOHandler;
    _Http.HandleRedirects := True;
    _Http.ConnectTimeout := 9999;
    _Http.HandleRedirects := True;
    _Http.HTTPOptions     := [];
    _Http.Request.ContentEncoding := 'UTF-8';
    try
      _Http.Get(_URL, _Response);
      result := _Response.DataString;
      if result = '' then
         result := _Http.ResponseText;
    except
      on E:EIdHTTPProtocolException do
      begin
        result := UTF8ToString((e as EIdHTTPProtocolException).ErrorMessage);
        _Http.Free;
        _Http := TIdHTTP.Create(nil);
      end;
      on E: EConvertError do
      begin
        _Http.Free;
        _Http := TIdHTTP.Create(nil);
      end;
      on E: Exception do
      begin
        _erro := e.message;
        _Http.Free;
        _Http := TIdHTTP.Create(nil);
      end;
    end;
    if _erro <> EmptyStr then
    begin
      raise Exception.Create('Erro de Conexão: ' +_erro);
    end;
  finally
    _IOHandler.Free;
    _Response.Free;
    if (_Http.Socket <> nil) and _Http.Socket.Connected then
      _Http.Socket.Close;
    _Http.Free;
  end;
end;



function TspdHTTPS.PutHTTPS(aURL, aSourceFile: String): String;
var
  _URL : string;
  _Winhttp: IWinHttpRequest;
  _texto : string;
begin
  _URL := aURL;
  _texto := aSourceFile;
  _Winhttp := CoWinHttpRequest.Create;

  try
    _Winhttp.Option[WinHttpRequestOption_SslErrorIgnoreFlags] := $3300;
    _Winhttp.Open('PUT', _URL, False);
    _Winhttp.SetRequestHeader('Content-Type', 'application/json');
    _Winhttp.Send(_texto);
    result := _Winhttp.ResponseText;
  except
    on E: Exception do
    begin
      result := e.message;
    end;
  end;

end;

end.
