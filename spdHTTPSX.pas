unit spdHTTPSX;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, HTTPSX_TLB, StdVcl, spdHTTPS, SysUtils, IniFiles,  Classes;

type
  TspdHTTPSX = class(TAutoObject, IspdHTTPSX)
  private

  protected
    FspdHTTPS: TSpdHTTPS;
    function GetHTTPSIndy(const aURL: WideString): WideString; safecall;
    function PutHTTPS(const aURL, aArquivo: WideString): WideString; safecall;

  public
    procedure Initialize; override;
    procedure BeforeDestruction; override;
  end;

implementation

uses ComServ;

{ TspdHTTPSX }

procedure TspdHTTPSX.Initialize;
begin
  inherited;
  try
    FspdHTTPS := TSpdHTTPS.Create(nil);
  except
    on E: Exception do
    begin
      raise Exception.Create(E.message);
    end;
  end;
end;

procedure TspdHTTPSX.BeforeDestruction;
begin
  inherited;
  try
    FspdHTTPS.Free;
  except
    on E: Exception do
    begin
      raise Exception.Create(E.message);
    end;
  end;
end;



function TspdHTTPSX.GetHTTPSIndy(const aURL: WideString): WideString;
begin
  try
    Result := FspdHTTPS.GetHTTPSIndy(aURL);
  except
    on E: Exception do
    begin
        raise Exception.Create(E.message);
    end;
  end;
end;


function TspdHTTPSX.PutHTTPS(const aURL, aArquivo: WideString): WideString;
begin
  try
    Result := FspdHTTPS.PutHTTPS(aURL, aArquivo);
  except
    on E: Exception do
    begin
        raise Exception.Create(E.message);
    end;
  end;
end;


initialization

TAutoObjectFactory.Create(ComServer, TspdHTTPSX, Class_spdHTTPSX, ciMultiInstance, tmNeutral);

end.
