unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Obrabotka1: TMenuItem;
    Exit1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    Lvl11: TMenuItem;
    lvl21: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,s:Byte;
  c,d,z,w:Extended;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Label3.Caption:='';
Label3.Caption:=Label3.Caption+'_____________________'#13#10+'  a  '  +' ' + '        z  ' + ' ' + '        w  ' +#10#13'_____________________'+#13#10;
d:=StrToFloat(Edit1.Text);
c:=StrToFloat(Edit2.Text);
if c=0
then begin
  ShowMessage('Если C 0 то программа не работает( потому что очень глупая формула');
  Exit;
end;

for a:= 1 to 5 do
begin


if ((c+a)-1)<=0
then begin
  ShowMessage('Введите другое C');
  continue;
  end;
z:=(2*d)-(c*SQRT(42))/(c+a)-1;

if ((d+a)*a)-1<=0
then begin
  ShowMessage('D не может являться 0');
  Continue;
  end;
w:=SQRT(25/c)-(c+2)/((d+a)*a-1);


Label3.Caption:=Label3.Caption+'  '+FloatToStr(a)+'  '+'_I_'+' '+ FloatToStrf(z,ffFixed,5,2)+' '+'_I_'+' '+FloatToStrF(w,ffFixed,5,2)+' '+'_I_'+#10#13;





 end;








end;







procedure TForm1.FormCreate(Sender: TObject);
begin
StatusBar1.Panels[1].Text:=DateToStr(Date);
Timer1.Enabled:=True;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[2].Text:=TimeToStr(Time);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
case key of
'0'..'9':;
#8:;
'-':;
else
key:=chr(0);
end;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
close;
end;

end.
