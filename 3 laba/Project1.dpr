program Project1;

uses
  Forms,
  Dialogs,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}
var pas:string;

begin
 repeat
  If InputQuery('���� ����� ������','������� ������',pas)
  then if pas='322' then begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end else ShowMessage('������ �������');
until pas='322';
end.
