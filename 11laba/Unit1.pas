unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type mas=array [1..100] of Integer;

var
  Form1: TForm1;
  n,m,i:Integer;
  a:mas;
  procedure vvod (var rtz :mas);
  procedure sortp(var rtz:mas);
  procedure vivodi(rtz: mas);
  procedure vivodr(rtz:mas);


implementation

{$R *.dfm}
procedure vvod(var rtz:mas);
begin
  Randomize;
  n:=Random(9);
  for i:=1 to n do
  rtz[i]:=Random(9);
end;
procedure sortp(var rtz:mas);
var t,r: Integer;
begin
 for r:=1 to (n-1) do
 for I:= 1 to (n-1) do
 if rtz[i]>rtz[i+1] then begin
   t:=rtz[i];
   rtz[i]:=rtz[i+1];
   rtz[i+1]:=t;

 end;
end;
procedure vivodi(rtz:mas);
begin
  form1.Label1.caption:=' ';
  for I:= 1 to n do
  form1.Label1.caption:=form1.Label1.Caption+inttostr(rtz[i])+#9;
  form1.Label1.caption:=form1.Label1.caption+#10#13;

end;
procedure vivodr(rtz:mas);
begin
  form1.Label2.caption:=' ';
  for I:= 1 to n do
  form1.Label2.caption:=form1.Label2.Caption+inttostr(rtz[i])+#9;
  form1.Label2.Caption:=form1.Label2.Caption+#10#13;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 vvod(a);
 vivodi(a);
 sortp(a);
 vivodr(a);
end;

end.
