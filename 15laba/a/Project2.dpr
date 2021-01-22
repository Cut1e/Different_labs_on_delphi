program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var p:array[1..100] of Integer;
  i,n:Integer;
procedure perms;
var c:array[1..100] of Integer;
pr:array[1..100]of Boolean;
i,j,t,k,x:Integer;
begin
for I:=1 to n do
begin
  p[i]:=i;
  c[i]:=i;
  pr[i]:=True;

end;
c[n]:=0;
for j:=1 to n do
write(p[j]:4);
Writeln;
i:=1;
while i<n do
begin
  i:=1;x:=0;
  while
  c[i]=n-1+1 do
  begin
    pr[i]:=not pr[i];
    c[i]:=1;
    if pr[i] then x:=x+1;
    i:=i+1;
  end;
  if i<n then
  begin
    if pr[i] then k:=c[i]+x else k:=n-i+1-c[i]+x;
    t:=p[k];
    p[k]:=p[k+1];
    p[k+1]:=t;
    for j:=1 to n do
    write(p[j]:4);
    Writeln;
    c[i]:=c[i]+1;  end;
end;
end;
begin
  write('Vvedite kol-vo 4isel ');
  Readln(n);
  for i:=1 to n do
  p[i]:=i;
  perms;
  Readln;
end.

