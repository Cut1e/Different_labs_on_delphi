unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    StringGrid1: TStringGrid;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    StringGrid2: TStringGrid;
    Memo1: TMemo;
    Button4: TButton;
    StringGrid3: TStringGrid;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i,j,n,m: Integer;
  s: Extended;
  f1:Text;
  a: array [1..4,1..4] of Extended;
  b: array [1..4,1..4] of Extended;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
for I:=1 to 4 do
for j:=1 to 4 do begin
a[i,j]:=Random(10)+1;
StringGrid1.Cells[j,i]:=FloatToStr(a[i,j]);

end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  label1.caption:=' ';
  s:=0;
for i:=1 to 4 do
for j:=1 to 4 do
 if s<a[i,j] then s:=a[i,j];
 label1.caption:=FloatToStr(s);
end;               

procedure TForm1.Button3Click(Sender: TObject);
begin
AssignFile(f1,'d:\labs\t2.txt');
Rewrite(f1);
 for i:= 1 to 4 do
 for J:=1 to 4 do  begin
 b[i,j]:=a[i,j]/s;
 write(f1,b[i,j]);
 StringGrid2.Cells[j,i]:=FloatToStrf(b[i,j],ffFixed,4,1);

end;
closefile(f1);
end;
procedure TForm1.Button4Click(Sender: TObject);
//label m1;
begin
Memo1.Lines.LoadFromFile('d:\labs\20.txt');
if FileExists('d:\labs\20.txt') then AssignFile(f1,'d:\labs\20.txt') else begin
ShowMessage('error'); {goto m1;}end;
Reset(f1);
readln(f1,m,n);
for i:=1 to m do begin
  for j:=1 to n do begin
    read(f1,a[i,j]);
    StringGrid3.Cells[j,i]:=FloatToStr(a[i,j]);
  end;
  readln(f1);
end;
CloseFile(f1);
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
 if FileExists('d:\labs\t2.txt') then AssignFile(f1,'d:\labs\t2.txt')
 else begin ShowMessage('error');end;
 Reset(f1);
 for i:=1 to 4 do
 for J:=1 to 4 do begin
 read(f1,a[i,j]);
 StringGrid3.Cells[j,i]:=floatToStrf(a[i,j],ffFixed,4,1);
 end;
 CloseFile(f1);

end;

end.
