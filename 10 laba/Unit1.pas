unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type ms=set of 'a'..'z';

var
  Form1: TForm1;
  st:string;
  vE1,ve2,ve3:ms;
  i,s:Integer;
  x:char;
  procedure formi(var  vE1:ms; st:string);
  procedure obrab(vE1:ms);
   procedure obrab2(vE2:ms);
   procedure formi2(var  vE2:ms; st:string);
   procedure  last(var s:Integer; ve1,ve2:ms);
implementation

{$R *.dfm}
procedure formi(var  vE1:ms; st:string);
begin
  ve1:=[];
  for I:=1 to Length(st) do
  vE1:=vE1+[st[i]];
end;
procedure obrab(vE1:ms);
begin
for x:='a' to 'z' do
if x in Ve1 then Form1.edit2.text:=Form1.edit2.text+x;
end;
procedure formi2(var  vE2:ms; st:string);
begin
  ve2:=[];
  for I:=1 to Length(st) do
  vE2:=vE2+[st[i]];
  end;
  procedure obrab2(vE2:ms);
begin
for x:='a' to 'z' do
if x in Ve2 then Form1.edit4.text:=Form1.edit4.text+x;
end;
procedure last(var s:Integer; ve1,ve2:ms);
begin

  ve3:=ve1*ve2;
 For x:='a' to 'z' do
if x in ve3 then
    s:=s+1;

end;


procedure TForm1.Button1Click(Sender: TObject);
begin
 st:=Form1.Edit1.text;
 formi(ve1,st);
 obrab(ve1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 st:=Form1.Edit3.text;
 formi2(vE2,st);
obrab2(vE2);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

  label1.Caption:=' ';

last( s,ve1,ve2 );
form1.Label1.Caption:=IntToStr(s);
end;

end.

