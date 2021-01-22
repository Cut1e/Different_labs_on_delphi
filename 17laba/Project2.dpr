program Project2;
type win=object
x1,y1,x2,y2,cf:Byte;
procedure init(xn1,yn1,xn2,yn2,cfn:Byte);
procedure Makewin;
function getsizeX:Byte;
function fetsizeY:Byte;
end;
symb=object(win)
cs,
col,line:Byte;
sym:Char;
procedure init(xn1,yn1,xn2,yn2,cfn,csn,cl,ln:Byte;sm:Char);
procedure print;
end;
procedure win.init;
begin
x1:=xn1;
y1:=yn1;
x2:=xn2;
yn2:=yn2;
cf:=cfn;
end;
procedure WIn.Makewin;
begin
window(x1,y1,x2,y2);textbackground(cf);
end;
function win.getsizeX;
begin
getsizeX:=x2-x1+1;
end;
function win.getsizey;
begin
getsizey:=y2-y1+1;
end;
procedure symb.init;
begin
win.init(xn1,yn1,xn2,yn2,cfn);
cs:=csn;Col:=cl;Line:=ln;Sym:=sm;
end;
procedure symb.print;
begin
textcolor(cs);
gotoxy(col,line);
Write(sym)
end;
var symbvar: symb;
begin
  with symbvar do begin init(1,7,80,20,7,1,40,12,'a');
  Makewin;
  print;
end;
Readln;
end;
end.
 