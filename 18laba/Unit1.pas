unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var dist:Integer;
t:Real;
min:Integer;
sek:integer;
v:Real;
begin
dist:=StrToInt(Edit1.Text);
t:=StrToFloat(Edit2.text);
min:=Trunc(t);
sek:=Trunc(t*100) mod 100;
v:=(dist/1000)/((min*60+sek)/3600);
label1.caption:='Дистанция:'+edit1.Text+'M'+#13+'Время:'+inttostr(MIN)+'мин'+
IntToStr(sek)+'сек'+#13+'Скорость:'+floattostrf(v,ffFixed,4,2)+'км/час';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   case key of
  '0'..'9':;
  ',','.':
  begin if key='.'then key :=',';
  if Pos(',',edit2.text)<>0 then key:=Chr(0);
  end;
  #8:;else key :=Chr(0);
end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
  '0'..'9':;
  #8:;
  #13:Edit2.setfocus;
  else key:=chr(0);
  end;
end;

end.
