program Project1;

uses
  Forms, Dialogs,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}
var pas:string;

begin
 If InputQuery('���� ����� ������','������� ������',pas)
  then if pas='123' then begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end else ShowMessage('������ �������');
end.
