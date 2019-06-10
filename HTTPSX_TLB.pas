unit HTTPSX_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 10/06/2019 15:50:42 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Dev\OcxHTTPS\spdHTTPSX (1)
// LIBID: {29C36A3D-69FB-4DC4-A401-1317D52A331D}
// LCID: 0
// Helpfile:
// HelpString: HTTPSX Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  HTTPSXMajorVersion = 1;
  HTTPSXMinorVersion = 0;

  LIBID_HTTPSX: TGUID = '{29C36A3D-69FB-4DC4-A401-1317D52A331D}';

  IID_IspdHTTPSX: TGUID = '{3A055A8C-DB96-42F8-94F1-484401CAC60A}';
  CLASS_spdHTTPSX: TGUID = '{947688AA-92DF-4E27-9F4C-1E01CFBFE0F2}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IspdHTTPSX = interface;
  IspdHTTPSXDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  spdHTTPSX = IspdHTTPSX;


// *********************************************************************//
// Interface: IspdHTTPSX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A055A8C-DB96-42F8-94F1-484401CAC60A}
// *********************************************************************//
  IspdHTTPSX = interface(IDispatch)
    ['{3A055A8C-DB96-42F8-94F1-484401CAC60A}']
    function GetHTTPSIndy(const aURL: WideString): WideString; safecall;
    function PutHTTPS(const aURL: WideString; const aArquivo: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IspdHTTPSXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3A055A8C-DB96-42F8-94F1-484401CAC60A}
// *********************************************************************//
  IspdHTTPSXDisp = dispinterface
    ['{3A055A8C-DB96-42F8-94F1-484401CAC60A}']
    function GetHTTPSIndy(const aURL: WideString): WideString; dispid 201;
    function PutHTTPS(const aURL: WideString; const aArquivo: WideString): WideString; dispid 202;
  end;

// *********************************************************************//
// The Class CospdHTTPSX provides a Create and CreateRemote method to
// create instances of the default interface IspdHTTPSX exposed by
// the CoClass spdHTTPSX. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CospdHTTPSX = class
    class function Create: IspdHTTPSX;
    class function CreateRemote(const MachineName: string): IspdHTTPSX;
  end;

implementation

uses System.Win.ComObj;

class function CospdHTTPSX.Create: IspdHTTPSX;
begin
  Result := CreateComObject(CLASS_spdHTTPSX) as IspdHTTPSX;
end;

class function CospdHTTPSX.CreateRemote(const MachineName: string): IspdHTTPSX;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_spdHTTPSX) as IspdHTTPSX;
end;

end.

