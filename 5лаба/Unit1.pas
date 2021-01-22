unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, Grids, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure N3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:array[1..10] of Integer;
  max,i:Integer;

implementation

{$R *.dfm}

procedure TForm1.N3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Statusbar1.Panels[1].Text:=DateToStr(Date);
Timer1.Enabled:=True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Statusbar1.Panels[2].Text:=TimeToStr(Time);
end;

procedure TForm1.N11Click(Sender: TObject);
begin
Randomize;
label1.caption:='';
for i:=1 to 10 do begin
a[i]:=Random(15)-10; label1.Caption:=label1.caption + inttostr( a[i] )+'_';end;
max:=a[i];
for i:=1 to 10 do
if max<a[i] then max:=a[i];
label2.caption:=label2.caption+'Максимальное число'+#9+ inttostr(max);

end;

procedure TForm1.N21Click(Sender: TObject);
begin
for i:=1 to 10 do
a[i]:=strtoint(StringGrid1.cells[i,1]);
max:=a[i];
for i:=1 to 10 do
if max<a[i] then max:=a[i];
label3.caption:=label3.caption+'Максимальное число'+#9+ inttostr(max);

end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
case key of
'0'..'9':;
#8:;
'-':;
else
key:=chr(0);
end;
end;

end.
