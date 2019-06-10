program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FrmExemploHTTPS};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmExemploHTTPS, FrmExemploHTTPS);
  Application.Run;
end.
