unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Button3: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,y:Extended;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
label1.caption:='';
x:=0.5;
While x<=5 do begin x:=x+0.5;
  if x<=3 then  y:=1/exp(2*x);
  if x>3 then
    y:=Ln(x);
 label1.Caption:=Label1.Caption+''+FloatToStrf(y,ffFixed,5,2)+#10#13;

  end;
  end;


procedure TForm1.Button2Click(Sender: TObject);
begin
label2.caption:='';
x:=1;
While x<=5 do begin x:=x+0.5;
y:=2*x+0.33;
label2.Caption:=Label2.Caption+''+FloatToStrf(y,ffFixed,5,2)+#10#13;
end;

end;
procedure TForm1.FormCreate(Sender: TObject);
begin
Statusbar1.Panels[1].text:=DateToStr(DAte);
Timer1.Enabled:=True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Statusbar1.Panels[2].text:=timeToStr(time);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
label3.Caption:='';
x:=0;
repeat y:=2*x+0.33;
Label3.Caption:=label3.Caption+FloatToStr(y)+#10#13;
x:=x+0.5;
until x>4;
end;

end.
