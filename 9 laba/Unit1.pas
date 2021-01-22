unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function Fact(n:Integer):Integer;

var
  Form1: TForm1;
  n,a:integer;
  y:Extended;

implementation

{$R *.dfm}
function Fact(a:integer):integer; begin
if a<=1 then fact:=1 else fact:=a*fact(a-1);
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
 n:=StrToInt(Edit1.Text);
 y:=1/Fact(n+1);
 Edit2.Text:=FloatToStr(y);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
statusbar1.Panels[1].Text:=DateToStr(date);
timer1.enabled:=True;
end;

{procedure TForm1.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels[2].Text:=TimeToStr(Time);
end;}

end.
