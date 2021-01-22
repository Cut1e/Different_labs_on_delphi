program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a:array[1..10] of Integer;
  k,n:Integer;
  procedure sosk(k,n:Integer);
  var i,p:Integer;
  begin
    for I:=1 to k do a[i]:=i;
    p:=k;
    while p>=1 do begin
      for I:=1 to k do write(a[i]:3);
      Writeln;
      if a[k]=n then Dec(p) else p:=k;
      if p>=1 then for i:=k downto p do a[i]:=a[p]+i-p+1;
      end;end;



begin
 Writeln('v-v kol-vo mnogestva');
 Readln(n);
 Writeln('v-v kol-vo podmnogestva');
 Readln(k);
 Writeln('mnogestvo vseh-', k,'-Elementi podmnogestva-',n);
 sosk(k,n);
 Readln;
end.
 