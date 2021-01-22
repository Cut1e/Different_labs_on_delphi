unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type tinfo=record
marka:string[20];
ozu:string[20];
pzu:string[20];
cena:string[40];
end;

var
  Form1: TForm1;
 f:file of tinfo;
rec: tinfo;
i:Integer;


implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='Ã‡Í‡';
StringGrid1.cells[1,0]:='Œ«”';
StringGrid1.cells[2,0]:='œ«”';
StringGrid1.cells[3,0]:='÷ÂÌ‡';
StringGrid2.Cells[0,0]:='Ã‡Í‡';
StringGrid2.cells[1,0]:='Œ«”';
StringGrid2.cells[2,0]:='œ«”';
StringGrid2.cells[3,0]:='÷ÂÌ‡';
end;

procedure TForm1.Button1Click(Sender: TObject);

begin
if not SaveDialog1.Execute then Exit;
AssignFile(f,SaveDialog1.FileName);
Rewrite(f);
for i:=1 to stringgrid1.rowcount-1 do
begin
  rec.marka:=stringgrid1.cells[0,i];
  rec.ozu:=StringGrid1.Cells[1,i];
  rec.pzu:=StringGrid1.Cells[2,i];
  rec.cena:=StringGrid1.Cells[3,i];
  write(f,rec);
  end;
CloseFile(f);
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
StringGrid1.RowCount:=StringGrid1.RowCount+1;
StringGrid2.RowCount:=StringGrid2.RowCount+1;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if not OpenDialog1.Execute then Exit;
AssignFile(f,OpenDialog1.FileName);
reset(f);
I:=1;
stringgrid2.rowcount:=2;
while not eof(f) do begin
  read(f,rec);
  stringgrid2.rowcount:=stringgrid2.rowcount+1;
 stringgrid2.cells[0,i]:=rec.marka;
 StringGrid2.Cells[1,i]:=rec.ozu;
 StringGrid2.Cells[2,i]:=rec.pzu;
 StringGrid2.Cells[3,i]:=rec.cena;
 inc(i);
end;
  stringgrid2.rowcount:=stringgrid2.rowcount-1;
CloseFile(f);

end;
end.
