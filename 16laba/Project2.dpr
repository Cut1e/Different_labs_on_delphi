program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const n=7;
  type matrixofadjacencies=array[1..n,1..n] of Integer;
  type arbool=array[1..n] of Boolean;
  type matrix=array[1..n] of Integer;
  var por:matrix;
  isvisited:arbool;
  const
  mym:matrixofadjacencies=(
  (0,0,0,1,1,0,0),
  (0,0,1,1,0,0,0),
  (0,1,0,1,0,0,0),
  (1,1,1,0,0,0,1),
  (1,0,0,0,0,1,0),
  (0,0,0,0,1,0,1),
  (0,0,0,1,0,1,0)
  );
  procedure work (k:Integer);
  var v,j,i:Integer;
  begin{work}
  v:=por[k-1];
  for j:=1 to n do if (mym[v,j]<>0) then
  if (k=n+1) and (j=1) then
  begin
    for i:=1 to N do write(por[i],',');
    Writeln;
    end
    else if not isvisited[j] then
    begin
      por[k]:=j;
      isvisited[j]:=True;
      work(k+1);
      isvisited[j]:=False;
      end;
      end;{work}
      procedure gamilton;
      begin{gamilton}
      por[1]:=1;isvisited[1]:=True;work(2);
      end;{gamilton}
begin
 Writeln('puti');
 gamilton;
 Readln;
end.
