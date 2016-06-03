unit Unit1;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, Project1_TLB, StdVcl;

type
  TComCOM = class(TTypedComObject, IComCOM)
  protected
    function Schet1(X, Y, Z: Single): Single; stdcall;
    function Schet2(X, Y, Z: Single): Single; stdcall;
  end;

implementation

uses ComServ;



function TComCOM.Schet1(X, Y, Z: Single): Single;
begin
 if ((((Sqr(x)*x)/y))<>0) and ((Y+((Sqr(x)*x)/y))<>0) and ((Y+sqr(x))<>0)
and (((Y+sqr(x))/(Y+((Sqr(x)*x)/y)))<>0)  then
result:=y-(x/((Y+sqr(x))/(Y+((Sqr(x)*x)/y))));
end;

function TComCOM.Schet2(X, Y, Z: Single): Single;
begin
if ((z/2)<>0)and ((Abs(y)+6)<>0) then
result:=exp((1-Sqr(Sin(z/2)/Cos(z/2)))*ln((Sqrt(Abs(y)+6))));
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TComCOM, Class_ComCOM,
    ciMultiInstance, tmApartment);
end.
