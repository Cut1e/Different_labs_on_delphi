program Project2;

uses
  Forms,
  Dialogs,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}
var pas:string;

begin
 repeat
  If InputQuery('Окно ввода пароля','Введите пароль',pas)
  then if pas='322' then begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end else ShowMessage('Пароль неверен');
until pas='322';
end.
