unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    TabSheet3: TTabSheet;
    Button5: TButton;
    Label3: TLabel;
    Button6: TButton;
    Label4: TLabel;
    TabSheet4: TTabSheet;
    Edit1: TEdit;
    Button7: TButton;
    StringGrid2: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i,j,min,max:Integer;
  a: array[1..5,1..5] of Integer;
  f1:file of Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
min:=0;
Randomize;
for i:=1 to 5 do
for j:=1 to 5 do begin
a[i,j]:=Random(10)-5;
StringGrid1.Cells[j,i]:=IntToStr(a[i,j]);
if min>a[i,j] then min:=a[i,j];
label1.Caption:='Минимальное число'+' '+inttostr(min);
end;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  max:=0;
for i:=1 to 5 do
for j:=1 to 5 do
if max<a[i,j] then max:=a[i,j];
label2.Caption:='Максимальное число'+' '+inttostr(max);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
AssignFile(f1,'d:\labs\t1.dat');
Rewrite(f1);
write(f1,min);
CloseFile(f1);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
AssignFile(f1,'d:\labs\t2.dat');
Rewrite(f1);
write(f1,max);
CloseFile(f1);
end;

procedure TForm1.Button5Click(Sender: TObject);
label m1;
begin
  label3.caption:=' ';
if FileExists('d:\labs\t1.dat') then AssignFile(f1,'d:\labs\t1.dat')
else begin ShowMessage('error');goto m1;end;
Reset(f1);
read(f1,min);
label3.caption:=IntToStr(min);
CloseFile(f1);
m1:end;

procedure TForm1.Button6Click(Sender: TObject);
label m1;
begin
  label4.Caption:=' ';
if FileExists('d:\labs\t2.dat') then AssignFile(f1,'d:\labs\t2.dat')
else begin ShowMessage('error');goto m1;end;
Reset(f1);
read(f1,max);
label4.caption:=IntToStr(max);
CloseFile(f1);
m1:end;

procedure TForm1.Button7Click(Sender: TObject);
var s,d:integer;
b:array[1..5,1..5] of integer;
begin Randomize;
s:=1;
d:=1;
for i:=1 to 5 do
for j:=1 to 5 do begin
a[i,j]:=Random(5)+1;
StringGrid2.Cells[j,i]:=IntToStr(a[i,j]);
if i=j then s:=s*a[i,j];
if i+j=6 then d:=d*a[i,j];
Edit1.Text:=IntToStr(s)+' '+inttostr(d);

end;
end;

end.

end.
