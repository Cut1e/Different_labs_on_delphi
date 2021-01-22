unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, ExtCtrls, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N6: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.N6Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Statusbar1.Panels[1].Text:=DateToStr(DAte);
timer1.Enabled:=True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Statusbar1.Panels[2].Text:=timeToStr(time);
end;

procedure TForm1.N11Click(Sender: TObject);
var A:array[1..4,1..4] of Integer;
i,j:Integer;
begin

  label1.Caption:=' ';
for I := 1 to 4 do
  begin

 for J := 1 to 4 do
  begin

  A[i,j]:=Random(10)-4;
  if i<=j then a[i,j]:=0;

 label1.Caption:=Label1.Caption + IntToStr(A[i,j])+#9;end;
 label1.caption:=label1.Caption+#10#13;



end;
end;

procedure TForm1.N21Click(Sender: TObject);
var A:array[1..4,1..4] of Integer;
i,j:Integer;
begin

  label1.Caption:=' ';
for I := 1 to 4 do
  begin

 for J := 1 to 4 do
  begin

  A[i,j]:=Strtoint(StringGrid1.cells[i,j]);
  if i>=j then a[i,j]:=0;

   StringGrid2.cells[i,j]:=Inttostr(a[i,j])

end;
end;

end;
end.
