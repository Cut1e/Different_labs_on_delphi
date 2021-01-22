unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   x,y,n,m:Integer;

implementation

{$R *.dfm}
procedure football(x,y:Integer;color:TColor);
const dx=1;
dy=2;
var buf:TColor;
begin
  with Form1.Canvas do
  begin
    buf:=Pen.Color;
    pen.color:=color;
    MoveTo(10*dx,439*dy);
    LineTo(10*dx,400*dy);
    LineTo(75*dx,385*dy);
    LineTo(75*dx,439*dy);
    MoveTo(839*dx,439*dy);
    LineTo(839*dx,385*dy);
    LineTo(904*dx,400*dy);
    LineTo(904*dx,439*dy);
    Ellipse(150*dx,430*dy,175*dx,411*dy);
   // Ellipse(800,430,825,411);

    Pen.Color:=buf;

  end;
end;




procedure TForm1.FormActivate(Sender: TObject);
begin
x:=0;
y:=100;
Form1.Color:=clNavy;
Timer1.Interval:=50;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  football(x,y,Form1.Color);
  if x<Form1.ClientWidth
  then x:=x+5 else begin x:=0;y:=Random(50)+100;
end;
football(x,y,clWhite);
end;

end.
