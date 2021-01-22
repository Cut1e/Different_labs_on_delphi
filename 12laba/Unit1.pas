unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  const nmax=10;
  type mas=array[1..nMax] of Integer;


var
  Form1: TForm1;
  i,x,n,y:Integer;
  a:mas;


implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);

function gorner(a:mas;x,N:Integer):Integer;
begin
  if n=1 then gorner:=a[n] else gorner:=gorner(a,x,n-1)*x+a[n];
end;
begin
x:=2;
n:=Strtoint(edit1.text);
for i:=1 to n do a[i]:=n+1-i;
y:=gorner(a,x,n+1);
edit2.text:=inttostr(y);
end;
end.
