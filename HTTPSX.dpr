library HTTPSX;

uses
  ComServ,
  HTTPSX_TLB in 'HTTPSX_TLB.pas',
  spdHTTPSX in 'spdHTTPSX.pas' {spdHTTPSX: CoClass};

{$E ocx}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
