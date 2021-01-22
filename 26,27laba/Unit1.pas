unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    od1: TOpenDialog;
    sd1: TSaveDialog;
    Edit1: TEdit;
    N12: TMenuItem;
    N13: TMenuItem;
    N21: TMenuItem;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
     procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N21Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type sam=record
  model:string[20];
  gruz:string[20];
  avia:string[20];
  god:string[20];
  end;


var
  Form1: TForm1;
  f1:file of sam;
  st:sam;
  i,j:Integer;
  n:LongInt;
  d:Boolean;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);// Работа с формой
begin
StatusBar1.Panels[1].Text:=DateToStr(date);
Timer1.Enabled:=True;
stringgrid1.cells[0,0]:='Модель самолета';
stringgrid1.cells[1,0]:='Грузоподъемность';
stringgrid1.cells[2,0]:='Авиокомпания';
stringgrid1.cells[3,0]:='Год выпуска';
stringgrid2.cells[0,0]:='Модель самолета';
stringgrid2.cells[1,0]:='Грузоподъемность';
stringgrid2.cells[2,0]:='Авиокомпания';
stringgrid2.cells[3,0]:='Год выпуска';
edit1.Text:=' ';
edit2.Text:=' ';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[2].Text:=timeToStr(time);
end;

procedure TForm1.N10Click(Sender: TObject);
begin
close;
end;

procedure TForm1.N11Click(Sender: TObject);// Добавление строки
begin
StringGrid1.RowCount:=StringGrid1.RowCount+1;
StringGrid2.RowCount:=StringGrid2.RowCount+1;
end;

procedure TForm1.N3Click(Sender: TObject);// Открыть файл
begin
od1.Execute;
AssignFile(f1,od1.FileName);
Reset(f1);
I:=1;
stringgrid2.RowCount:=2;
while not (Eof(f1)) do begin
  read(f1,st);
  StringGrid2.Cells[0,i]:=st.model;
  StringGrid2.Cells[1,i]:=st.gruz;
  StringGrid2.Cells[2,i]:=st.avia;
  StringGrid2.Cells[3,i]:=st.god;
  Inc(i);
  StringGrid2.RowCount:=StringGrid2.RowCount+1;
end;
CloseFile(f1);
end;

procedure TForm1.N2Click(Sender: TObject);// Сохранить файл
begin
sd1.Execute;
Assignfile(f1,sd1.filename);
Rewrite(f1);
for I:=1 to StringGrid1.RowCount do begin
  st.model:=StringGrid1.Cells[0,i];
  st.gruz:=StringGrid1.Cells[1,i];
  st.avia:=StringGrid1.Cells[2,i];
  st.god:=StringGrid1.Cells[3,i];
  write(f1,st);
  end;
  CloseFile(f1);
end;

procedure TForm1.N7Click(Sender: TObject);// Дописать файл
begin
  od1.Execute;
AssignFile(f1,od1.FileName);
Reset(f1);
n:=filesize(f1);
Edit1.Text:=IntToStr(n);
Seek(f1,n);
st.model:=StringGrid1.Cells[0,1];
st.gruz:=StringGrid1.Cells[1,1];
st.avia:=StringGrid1.Cells[2,1];
st.god:=StringGrid1.Cells[3,1];
write(f1,st);
CloseFile(f1);
end;

procedure TForm1.N12Click(Sender: TObject);// Копировать базу
begin
for i:=1 to StringGrid1.RowCount-1 do  begin
  StringGrid2.Cells[0,i]:=StringGrid1.Cells[0,i];
  StringGrid2.Cells[1,i]:=StringGrid1.Cells[1,i];
  StringGrid2.Cells[2,i]:=StringGrid1.Cells[2,i];
  StringGrid2.Cells[3,i]:=StringGrid1.Cells[3,i];
end;
end;
procedure TForm1.N8Click(Sender: TObject);// Переименовать файл
begin
od1.Execute;
AssignFile(f1,od1.FileName);
rename(f1,Edit1.Text);
end;

procedure TForm1.N9Click(Sender: TObject); // Удаление файла
begin
  od1.execute;
 AssignFile(f1,od1.FileName);
 erase(f1);
end;

procedure TForm1.N6Click(Sender: TObject);// Сортировка
begin
if Edit1.Text=' ' then begin ShowMessage('Введите номер строки');Exit;end;
for j:=1 to 2 do
for i:=1 to 2 do
if StringGrid2.Cells[StrToInt(Edit1.Text),i]>StringGrid2.Cells[StrToInt(Edit1.Text),i+1] then begin
  st.model:=StringGrid2.Cells[0,i];
  st.gruz:=StringGrid2.Cells[1,i];
  st.avia:=StringGrid2.Cells[2,i];
  st.god:=StringGrid2.Cells[3,i];
  StringGrid2.Cells[0,i]:=StringGrid2.Cells[0,i+1];
  StringGrid2.Cells[1,i]:=StringGrid2.Cells[1,i+1];
  StringGrid2.Cells[2,i]:=StringGrid2.Cells[2,i+1];
  StringGrid2.Cells[3,i]:=StringGrid2.Cells[3,i+1];
  StringGrid2.Cells[0,i+1]:=st.model;
  StringGrid2.Cells[1,i+1]:=st.gruz;
  StringGrid2.Cells[2,i+1]:=st.avia;
  StringGrid2.Cells[3,i+1]:=st.god;
end;
end;
procedure TForm1.N5Click(Sender: TObject);// Поиск
begin
d:=False;
od1.Execute;
AssignFile(f1,od1.FileName);
Reset(f1);
i:=1;StringGrid2.RowCount:=2;
while not (Eof(f1)) do begin
  read(f1,st);
  if st.god =edit1.text then begin
    StringGrid2.Cells[0,i]:=st.model;
    StringGrid2.Cells[1,i]:=st.gruz;
    StringGrid2.Cells[2,i]:=st.avia;
    StringGrid2.Cells[3,i]:=st.god;
    Inc(i);
    StringGrid2.RowCount:=StringGrid2.rowcount+1;
    d:=True;
  end;
  if st.model=edit1.text then begin
    StringGrid2.Cells[0,i]:=st.model;
    StringGrid2.Cells[1,i]:=st.gruz;
    StringGrid2.Cells[2,i]:=st.avia;
    StringGrid2.Cells[3,i]:=st.god;
    Inc(i);
    StringGrid2.RowCount:=StringGrid2.rowcount+1;
    d:=True;
  end;
  if st.avia=edit1.text then begin
    StringGrid2.Cells[0,i]:=st.model;
    StringGrid2.Cells[1,i]:=st.gruz;
    StringGrid2.Cells[2,i]:=st.avia;
    StringGrid2.Cells[3,i]:=st.god;
    Inc(i);
    StringGrid2.RowCount:=StringGrid2.rowcount+1;
    d:=True;
  end;
  if st.gruz=edit1.text then begin
    StringGrid2.Cells[0,i]:=st.model;
    StringGrid2.Cells[1,i]:=st.gruz;
    StringGrid2.Cells[2,i]:=st.avia;
    StringGrid2.Cells[3,i]:=st.god;
    Inc(i);
    StringGrid2.RowCount:=StringGrid2.rowcount+1;
    d:=True;
  end;
end;
closefile(f1);
if d=False then ShowMessage('Запись не найдена');
end;
procedure TForm1.N13Click(Sender: TObject);
begin
d:=False;
od1.Execute;
AssignFile(f1,od1.FileName);
Reset(f1);
i:=1;StringGrid2.RowCount:=2;
while not (Eof(f1)) do begin
  read(f1,st);
  if st.god =edit1.text then begin
    StringGrid2.Cells[0,i]:=st.model;
    StringGrid2.Cells[1,i]:=st.gruz;
    StringGrid2.Cells[2,i]:=st.avia;
    StringGrid2.Cells[3,i]:=st.god;
    Inc(i);
    StringGrid2.RowCount:=StringGrid2.rowcount+1;
    d:=True;
  end;
  if st.model=edit1.text then begin
    StringGrid2.Cells[0,i]:=st.model;
    StringGrid2.Cells[1,i]:=st.gruz;
    StringGrid2.Cells[2,i]:=st.avia;
    StringGrid2.Cells[3,i]:=st.god;
    Inc(i);
    StringGrid2.RowCount:=StringGrid2.rowcount+1;
    d:=True;
  end;
  if st.avia=edit1.text then begin
    StringGrid2.Cells[0,i]:=st.model;
    StringGrid2.Cells[1,i]:=st.gruz;
    StringGrid2.Cells[2,i]:=st.avia;
    StringGrid2.Cells[3,i]:=st.god;
    Inc(i);
    StringGrid2.RowCount:=StringGrid2.rowcount+1;
    d:=True;
  end;
  if st.gruz=edit1.text then begin
    StringGrid2.Cells[0,i]:=st.model;
    StringGrid2.Cells[1,i]:=st.gruz;
    StringGrid2.Cells[2,i]:=st.avia;
    StringGrid2.Cells[3,i]:=st.god;
    Inc(i);
    StringGrid2.RowCount:=StringGrid2.rowcount+1;
    d:=True;
  end;end;
Edit2.Text:=IntToStr(i+1);
closefile(f1);
if d=False then ShowMessage('Запись не найдена');
end;

procedure TForm1.N21Click(Sender: TObject);
begin
sd1.Execute;
AssignFile(f1,sd1.FileName);
Rewrite(f1); begin
st.model:=StringGrid2.Cells[0,strtoint(Edit2.Text)];
st.gruz:=StringGrid2.Cells[1,strtoint(Edit2.Text)];
st.avia:=StringGrid2.Cells[2,strtoint(Edit2.Text)];
st.god:=StringGrid2.Cells[3,strtoint(Edit2.Text)];
write(f1,st);
end;
CloseFile(f1);

end;

end.
