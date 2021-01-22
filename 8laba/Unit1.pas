unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ComCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Button2: TButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    A1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Saveass1: TMenuItem;
    Pusk1: TMenuItem;
    First1: TMenuItem;
    Second1: TMenuItem;
    Exit1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure First1Click(Sender: TObject);
    procedure Second1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type matr=array[1..4,1..4] of Integer;


var
  Form1: TForm1;
  a:matr;
  i,j,n,m:Integer;
  procedure formi(var a:matr; var n,m:Integer );
  procedure vivod(a:matr; n,m:integer );
  procedure klava(a:matr);
  procedure vivod2(a:matr);

implementation


{$R *.dfm}
 procedure formi(var a:matr; var n,m:integer);
 begin

   Randomize;
   for i:=1 to n do
   for J:=1 to m do
   begin
    a[i,j]:=Random(10)-5;
    if  i<=j then a[i,j]:=0;
   end;
 end;
 procedure vivod(a:matr; n,m:Integer);
 begin
   Form1.StringGrid1.Visible:=true;

  for i:=1 to n do
   for J:=1 to m do
     form1.StringGrid1.cells[j,i]:=inttostr(a[i,j]);


   end;


 procedure vivod2(a:matr);
 begin
   Form1.StringGrid1.Visible:=true;
   Form1.StringGrid2.Visible:=true;
  for i:=1 to n do
   for J:=1 to m  do
   form1.StringGrid2.cells[j,i]:=inttostr(a[i,j]);

  end;

 procedure klava(a:matr);
 begin
   for I:=1 to n do
   for J:=1 to m do
   begin

 a[i,j]:=StrToInt(Form1.StringGrid1.Cells[j,i]);
 if  i<=j then a[i,j]:=0;

 end;
 end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  n:=StrToInt(Edit1.text);
  m:=StrToInt(Edit2.Text);
  if CheckBox1.Checked then
formi(a,n,m);
if CheckBox3.Checked then
vivod(a,n,m);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
klava(a);
vivod2(a);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
StringGrid1.Visible:=false;
StringGrid2.Visible:=false;
StatusBar1.Panels[1].Text:=DateToStr(date);
Timer1.Enabled:=True;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[2].Text:=TimeToStr(time);
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.First1Click(Sender: TObject);
begin
n:=StrToInt(Edit1.text);
  m:=StrToInt(Edit2.Text);
  if CheckBox1.Checked then
formi(a,n,m);
if CheckBox3.Checked then
vivod(a,n,m);
end;

procedure TForm1.Second1Click(Sender: TObject);
begin
klava(a);
vivod2(a)
end;

end.
