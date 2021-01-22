unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Memo2: TMemo;
    ListBox2: TListBox;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
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
begin
  SaveDialog1.Execute;
memo1.Lines.SaveToFile(SaveDialog1.filename);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo2.Lines.clear;
Memo1.Lines.clear;
Edit1.Text:=' ';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

ListBox1.Items.SaveToFile('d:\labs\22laba\t2.txt');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Memo1.Lines.LoadFromFile('D:\labs\22laba\t1.txt');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
ListBox1.Items.LoadFromFile('D:\labs\22laba\t2.txt');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Memo1.Lines.Clear;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
ListBox1.Clear;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
ListBox1.Items.Add(Edit1.Text);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Memo1.Lines.Add('1');
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
ListBox1.Items.add('1');
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
Memo2.Lines.Assign(Memo1.Lines);
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
ListBox2.Items.Assign(ListBox1.Items);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
Memo1.Lines.Insert(0,Edit1.Text);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
ListBox1.Items.Insert(0,Edit1.Text);
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
Memo1.Lines.Delete(StrToInt(Edit1.Text));
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
ListBox1.Items.Delete(StrToInt(edit1.Text));
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  Memo1.SetFocus;
Memo1.SelStart:=0;
Memo1.SelLength:=3;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Edit1.Text:=Memo1.Lines[Memo1.Lines.IndexOf ('1')];
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
ListBox2.Sorted:=True;
end;

end.
