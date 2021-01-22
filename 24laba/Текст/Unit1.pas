unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  var x,y:Integer;
 

implementation

{$R *.dfm}
procedure runtext(var x,y:Integer);
begin
  with Form1.Canvas do TextOut(x,y,'Навины');
  x:=x+3;
  if x>=Form1.ClientWidth then begin x:=-190;
  Form1.Canvas.Font.Color:=Random(10);
end;
end;




procedure TForm1.Timer1Timer(Sender: TObject);
begin
runtext(x,y);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Randomize;
x:=-190;y:=30;
Timer1.Enabled:=True;
Form1.Canvas.Font.Size:=36;
Form1.Canvas.Font.color:=clLime;
end;

end.
