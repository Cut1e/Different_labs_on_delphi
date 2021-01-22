unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    sac1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:array[1..6] of Integer;
  I:Byte;
  s:Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Randomize;
for I:=1 to 6 do begin A[I]:=Random(9);
Label1.caption:=Label1.caption+IntToStr(a[I])+#9;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
s:=0;
for I:= 1 to 6 do s:=s+a[I];
label2.caption:=' сумма равна '+inttostr(s);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
StatusBar1.Panels[1].Text:=DateToStr(Date);
Timer1.enabled:=True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[2].Text:=TimeToStr(Time);
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
 Randomize;
for I:=1 to 6 do A[I]:=Random(9);
Label1.caption:=IntToStr(I);
end;

procedure TForm1.N12Click(Sender: TObject);
begin
s:=0;
for I:= 1 to 6 do s:=s+a[I];
label2.caption:=' сумма равна '+inttostr(s);
end;

end.
