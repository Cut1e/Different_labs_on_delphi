unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    N31: TMenuItem;
    StringGrid2: TStringGrid;
    CheckBox3: TCheckBox;
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:array[1..4,1..4] of Integer;
  i,j,m,n,s:Integer;
  f1: file of Integer;

implementation

{$R *.dfm}

procedure TForm1.N6Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
StringGrid1.Visible:=false;
label1.Visible:=False;
  StringGrid2.Visible:=False;
end;

procedure TForm1.N11Click(Sender: TObject);
 label m1;
begin

  if not (CheckBox1.Checked) then begin  showmessage('Не стоит CheckBox');goto m1;end;
  StringGrid1.Visible:=True;
  AssignFile(f1,'d:\labs\t1.dat');
  Rewrite(f1);
for I:=1 to 4 do
for j:=1 to 4 do begin
a[i,j]:=Random(10);
write(f1,a[i,j]);
StringGrid1.Cells[j,i]:=IntToStr(a[i,j]);

end;
m1:end;

procedure TForm1.N21Click(Sender: TObject);
begin
  s:=0;
if CheckBox2.Checked then label1.Visible:=True;
for i:=1 to  4 do
for j:= 1 to 4 do begin
 if i+j<=5 then s:=s+a[i,j];
label1.Caption:=' ';
label1.caption:=IntToStr(s);
end;
end;

procedure TForm1.N31Click(Sender: TObject);
label m1;
begin

   if not (CheckBox3.Checked) then begin  showmessage('Не стоит CheckBox');goto m1;end;
    StringGrid2.Visible:=True;
if FileExists('d:\labs\t1.dat') then AssignFile(f1,'D:\labs\t1.dat')
else begin ShowMessage('error');end;
Reset(f1);
for i:=1 to 4 do
for j:=1 to 4 do begin
  write(f1,a[i,j]);
  StringGrid2.Cells[j,i]:=IntToStr(a[i,j]);
end;
 CloseFile(f1);
m1:end;
end.
