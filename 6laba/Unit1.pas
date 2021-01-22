unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
StatusBar1.Panels[1].Text:=DateToStr(Date);
Timer1.Enabled:=True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[2].Text:=TimeToStr(Time);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N11Click(Sender: TObject);
var st:string;
i,s,c,b:Integer;

begin
Label1.Caption:=' ';

st:=edit1.Text;
s:=0;
b:=0;
st:=st+' ';
for i:=1 to Length(st) do begin
if (st[i] <> ' ') And (st[i]='1') then begin s:=s+1; c:=s; end
else begin if s mod 2 <>0 then begin
b:=b+c;
s:=0;
label1.caption:=label1.Caption+ IntToStr(b)+#9;
b:=0 ;
end;
s:=0;
end;
end;
end;






end.
