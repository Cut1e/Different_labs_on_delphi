unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    StringGrid2: TStringGrid;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
ms=array [0..99,0..99] of Integer;
p=^ms;

procedure form (var a:p; n:Integer);
procedure suma (a:p; var x:Integer);
procedure umnoj (a:p; var z:Integer);
procedure zamena (a:p);
var 
Form1: TForm1;
j,i,z,x,n:Integer;
M:P;
implementation

{$R *.dfm}


procedure form (var a:p; n:Integer);
begin
Randomize;
for i:=0 to n-1 do
for j:=0 to n-1 do begin
a^[i,j]:=Random(16)-5;
Form1.StringGrid1.Cells[j+1,i+1]:=IntToStr(a^[i,j]);
end;
end;
procedure suma (a:p; var x:Integer);
begin
x:=0;
for i:=0 to n-1 do
for j:=0 to n-1 do
if a^[i,j]>0 then x:=x+a^[i,j];
end;
procedure umnoj (a:p; var z:Integer);
begin
z:=1;
for i:=0 to n-1 do
for j:=0 to n-1 do
if a^[i,j]>0 then z:=z*a^[i,j];
end;
procedure zamena (a:p);
begin
for i:=0 to n-1 do
for j:=0 to n-1 do begin
Form1.StringGrid1.Cells[j+1,i+1]:=IntToStr(a^[i,j]);
if i<=j then a^[i,j]:=0;
Form1.StringGrid2.Cells[j+1,i+1]:=IntToStr(a^[i,j]);end;
end;

procedure TForm1.button1Click(Sender: TObject);
begin
New(m);
n:=StrToInt(edit1.text);
StringGrid1.ColCount:=n+1;
StringGrid1.RowCount:=n+1;
StringGrid2.ColCount:=n+1;
StringGrid2.RowCount:=n+1;
form(m,n);

suma(m,x);
umnoj(m,z);

Label2.Caption:=IntToStr(x);
Label1.Caption:=IntToStr(z);
Dispose(m);

end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  New(m);
  Label1.Caption:=' ';
  label2.Caption:=' ';
  n:=StrToInt(edit1.text);
StringGrid1.ColCount:=n+1;
StringGrid1.RowCount:=n+1;
StringGrid2.ColCount:=n+1;
StringGrid2.RowCount:=n+1;
form(m,n);
zamena(m);
Dispose(m);

end;

end.

