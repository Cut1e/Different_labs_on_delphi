unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  film:TBitmap;
  rect1,rectkadr:TRect;
  wk,hk,ck:Integer;


implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
OpenDialog1.Execute;
film:=TBitmap.Create;
film.LoadFromFile(OpenDialog1.FileName);
wk:=Round(film.Width/10);
hk:=film.Height;
rect1:=bounds(10,10,wk,hk);
ck:=0;
Form1.Timer1.Interval:=500;
Timer1.Enabled:=True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
rectkadr:=Bounds(wk*ck,0,wk,hk);
Form1.Canvas.CopyRect(rect1,film.Canvas,rectkadr);
ck:=ck+1;
if ck>10 then Timer1.Enabled:=False;
end;

end.
