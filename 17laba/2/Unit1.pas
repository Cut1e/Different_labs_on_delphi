unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    sg1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type inf=record
  fio:string[10];
  pn:string[2];
  vt:string[2];
  sr:string[2];
  cet:string[2];
  pt:string[2];
  end;
var
  Form1: TForm1;
  f1:file of inf;
  st:inf;
  i:Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
sg1.Cells[1,0]:='fio';
sg1.Cells[2,0]:='ponedelnik';
sg1.Cells[3,0]:='vtornik';
sg1.Cells[4,0]:='sreda';
sg1.Cells[5,0]:='4etverg';
sg1.Cells[6,0]:='p9tnica';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
AssignFile(f1,'d:\labs\t4.dat');
Rewrite(f1);
for i:=1 to sg1.RowCount-1 do begin
  st.fio:=sg1.Cells[1,i];
  st.pn:=sg1.Cells[2,i];
  st.vt:=sg1.Cells[3,i];
  st.sr:=sg1.Cells[4,i];
  st.cet:=sg1.Cells[5,i];
  st.pt:=sg1.Cells[6,i];
  write(f1,st);

end;
CloseFile(f1);

end;
end.
