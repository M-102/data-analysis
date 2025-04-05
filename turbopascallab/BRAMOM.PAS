{$N+} program Gazovayz_ataka;
uses crt, graph;
const N=250; M=60; dt=0.01; h=1; D=0.9;
var DV,MV,i,j,t: integer; q,v: single;
C: array[0..N+1,0..M+1] of single;
Procedure Raschet;
begin
If (i>10)and(i<20)and(j>50)and(t<5000)
 then q:=5 else q:=0;
C[i,j]:=C[i,j]+D*(C[i+1,j]-2*C[i,j]+C[i-1,j]+C[i,j+1]-
2*C[i,j]+C[i,j-1])*dt/h/h+q+v*(C[i,j]-C[i+1,j])/h*dt;
end;
BEGIN v:=0.5; DV:=Detect; InitGraph(DV,MV,'c:\bp\bgi');
Repeat t:=t+1;
 For i:=1 to N do For j:=1 to M do Raschet;
 For j:=M downto 1 do For i:=N downto 1 do Raschet;
 For j:=1 to M do C[N+1,j]:=C[N,j];
 For i:=1 to N do C[1,j]:=C[0,j]; {delay(10);}
 If t mod 100=0 then begin {cleardevice;}
 For i:=1 to N do For j:=1 to M do begin
 setcolor(round(C[i,j]/400)+8);circle(3*i,50+3*j,2); end;
 circle(round(t/40),450-round(2*C[50,23]),2);
 circle(round(t/40),450-round(2*C[90,23]),2);
 circle(round(t/40),450-round(2*C[130,23]),2);
 circle(round(t/40),450-round(2*C[170,23]),2);
 circle(round(t/40),450-round(2*C[210,23]),2);
 circle(round(t/40),450-round(2*C[250,23]),2); end;
until KeyPressed; CloseGraph;
END.