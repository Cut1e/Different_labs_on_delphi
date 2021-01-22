unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i:integer;
  x,y:Extended;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  for i:=0 to 1000 do begin
  ProgressBar1.Position:=i;
  sleep(10);
  end;
 label1.caption:=' ';
 while x<=1 do begin x:=x+(0.001);
 y:=Sin(x);
 label1.Caption:=Label1.caption+' '+FloatToStrf(y,ffFixed,4,2)+#13;
end;
end;


end.
