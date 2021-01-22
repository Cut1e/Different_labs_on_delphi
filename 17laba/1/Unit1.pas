unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Sg1: TStringGrid;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Sg2: TStringGrid;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
 i,k,z,j, a,b,c:Integer;
  f1,f2,f3: file of Integer;
  mas1:array[1..10] of Integer;
mas2:array[1..3,1..3] of Integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
AssignFile(f1,'d:\labs\t1.dat');
Rewrite(f1);Randomize;
A:=Random(5);
b:=Random(7);
c:=Random(9);
write(f1,a,b,c);
CloseFile(f1);
end;

procedure TForm1.Button2Click(Sender: TObject);
label m1;
begin
 if FileExists('d:\labs\t1.dat') then
 Assignfile(f1,'d:\labs\t1.dat') else begin ShowMessage('nope');
 goto m1;
 end;
 Reset(f1);
 read(f1,a,b,c);
 label1.Caption:=IntToStr(a);
 label2.Caption:=IntToStr(b);
 label3.Caption:=IntToStr(c);
 m1:end;


procedure TForm1.Button3Click(Sender: TObject);
begin
AssignFile(f2,'d:\labs\t2.dat');
Rewrite(f2);Randomize;
for i:=1 to 9 do begin mas1[i]:=Random(9);
write(f2,a,b,c);end;
CloseFile(f2);
end;

procedure TForm1.Button4Click(Sender: TObject);
label m2;
begin
  if FileExists('d:\labs\t2.dat') then
 Assignfile(f2,'d:\labs\t2.dat') else begin ShowMessage('nope');
 goto m2;
 end;
 Reset(f2);
 for i:= 1 to 9 do begin
 read(f2,k);
 Sg1.Cells[i,1]:=IntToStr(k);
 end;
 CloseFile(f2);
m2:end;



procedure TForm1.Button5Click(Sender: TObject);
begin
 AssignFile(f3,'d:\labs\t3.dat');
Rewrite(f3);Randomize;
for i:=1 to 3 do
for j:=1 to 3 do begin mas2[i,j]:=Random(9);
write(f3,mas2[i,j]);end;
CloseFile(f3);
end;

procedure TForm1.Button6Click(Sender: TObject);
label m3;
begin
  if FileExists('d:\labs\t3.dat') then
 Assignfile(f3,'d:\labs\t3.dat') else begin ShowMessage('nope');
 goto m3;
 end;
 Reset(f3);
 for i:= 1 to 3 do
 for j:=1 to 3 do begin
 read(f3,z);
 Sg2.Cells[j,i]:=IntToStr(z);
 end;
 CloseFile(f3);
m3:end;


end.

end.
