 program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type gg=^stek;
  stek=record
  data:string;
  next:gg;
  end;
  var rtz:gg;
  i:string;
  procedure vvod( var nwa:gg);
  var x:gg;
  begin
    Readln(i);
     nwa:=nil;
     while i<>' '  do
     begin
       New(x);
       x^.data:=i;
       x^.next:=nwa;
       nwa:=x;
       Readln(i);
     end;
  end;
  procedure obr(nwa:gg);
  var x:gg;
  begin
    writeln('Chto ubrat*');
    Readln(i);
    while nwa<>nil do
    begin

     if i = nwa^.data then begin
       x^.next:=nwa^.next;
       Dispose(nwa);
       nwa:=x^.next;

     end
     else begin x:=nwa;
     nwa:=nwa^.next;
     end;
    end;
  end;
  procedure vivod(nwa:gg);
  begin
   while nwa<>nil do
   begin
     Writeln(nwa^.data);
     nwa:=nwa^.next;
   end;
  end;

begin
  vvod(rtz);
  obr(rtz);
  vivod(rtz);
  Readln(i);
end.

