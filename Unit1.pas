unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,math, Project1_TLB;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  md: icomcom;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var A,B:extended;
begin
a:=0;
b:=0;
md:=CoComCOM.Create;
A:=md.Schet1(StrToFloat(edit1.Text),StrToFloat(edit2.Text),StrToFloat(edit3.Text));
B:=md.Schet2(StrToFloat(edit1.Text),StrToFloat(edit2.Text),StrToFloat(edit3.Text));
label4.Caption:='A='+a.ToString;
label5.Caption:='B='+b.ToString;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
var i:integer;
begin
if not (Key in ['0'..'9','-',#8,',','.']) then Key:=#0;
//if (Key='-') and (((Sender as TEdit).Text)<> '-') then Key:=#0;
for i:= 1 to length((Sender as TEdit).Text) do
if ((Key=',') and ((Sender as TEdit).Text[i]=',')) then key:=#0;
  if (key='-') and ((Sender as TEdit).text<>'')
    then
      Key:=#0;
end;

end.
