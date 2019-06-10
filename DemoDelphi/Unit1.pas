unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleServer, HTTPSX_TLB, ExtCtrls;

type
  TFrmExemploHTTPS = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    Panel2: TPanel;
    MnResultado: TMemo;
    EdURL: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EdArquivo: TEdit;
    spdHTTPSX: TspdHTTPSX;

    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExemploHTTPS: TFrmExemploHTTPS;

implementation

{$R *.dfm}


procedure TFrmExemploHTTPS.Button1Click(Sender: TObject);
var
  _Url, _Arquivo : WideString;
begin
  _Url := EdURL.Text;
  _Arquivo := EdArquivo.Text;
  MnResultado.Text := spdHTTPSX.PutHTTPS(_Url, _Arquivo);
end;

procedure TFrmExemploHTTPS.Button2Click(Sender: TObject);
var
  _Url : WideString;
begin
  _Url := EdURL.Text;
  MnResultado.Text := spdHTTPSX.GetHTTPSIndy(_Url);

end;

end.
