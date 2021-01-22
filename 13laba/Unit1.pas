unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type b=array [0..5,0..5] of Integer;

var
  Form1: TForm1;
  var i,j,s,a:Integer;
  p:^b;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  label1.caption:=' ';
Randomize;
s:=0;
New(p);
for i:=0 to 5 do
for J:=0 to 5 do begin
p^[i,j]:=Random(3);
StringGrid1.Cells[j,i]:=IntToStr(p^[i,j]);
if p^[i,j]>0 then s:=s+p^[i,j] ;end;
label1.caption:=IntToStr(s);
  Dispose (p);

end;
procedure TForm1.Button2Click(Sender: TObject);
begin
label2.caption:=' ';
Randomize;
a:=1;
New(p);
for i:=0 to 5 do
for J:=0 to 5 do begin
p^[i,j]:=1+Random(2 );
StringGrid1.Cells[j,i]:=IntToStr(p^[i,j]);
if p^[i,j]>0 then a:=a*(p^[i,j]) ;end;
label2.caption:=IntToStr(a);
  Dispose (p);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

Randomize;
New(p);
for i:=0 to 5 do
for J:=0 to 5 do begin
p^[i,j]:=1+Random(3);
StringGrid1.Cells[j,i]:=IntToStr(p^[i,j]);
if i<=j then p^[i,j]:=0;
StringGrid2.Cells[j,i]:=IntToStr(p^[i,j]);
end;

end;
end.
