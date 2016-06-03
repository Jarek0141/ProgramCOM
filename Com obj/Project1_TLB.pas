unit Project1_TLB;

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
// File generated on 30.05.2016 15:01:51 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\»„Ó¸\Desktop\¿œ»\6 LAB\Project1 (1)
// LIBID: {52A58A2F-8B13-4380-BD23-570DAD460678}
// LCID: 0
// Helpfile:
// HelpString:
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
  Project1MajorVersion = 1;
  Project1MinorVersion = 0;

  LIBID_Project1: TGUID = '{52A58A2F-8B13-4380-BD23-570DAD460678}';

  IID_IComCOM: TGUID = '{17758F68-2795-42E9-9703-008CE91AB7A0}';
  CLASS_ComCOM: TGUID = '{09C15961-6A9F-40AB-8D9D-89902023C5AF}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IComCOM = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  ComCOM = IComCOM;


// *********************************************************************//
// Interface: IComCOM
// Flags:     (256) OleAutomation
// GUID:      {17758F68-2795-42E9-9703-008CE91AB7A0}
// *********************************************************************//
  IComCOM = interface(IUnknown)
    ['{17758F68-2795-42E9-9703-008CE91AB7A0}']
    function Schet1(X: Single; Y: Single; Z: Single): Single; stdcall;
    function Schet2(X: Single; Y: Single; Z: Single): Single; stdcall;
  end;

// *********************************************************************//
// The Class CoComCOM provides a Create and CreateRemote method to
// create instances of the default interface IComCOM exposed by
// the CoClass ComCOM. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoComCOM = class
    class function Create: IComCOM;
    class function CreateRemote(const MachineName: string): IComCOM;
  end;

implementation

uses System.Win.ComObj;

class function CoComCOM.Create: IComCOM;
begin
  Result := CreateComObject(CLASS_ComCOM) as IComCOM;
end;

class function CoComCOM.CreateRemote(const MachineName: string): IComCOM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComCOM) as IComCOM;
end;

end.

