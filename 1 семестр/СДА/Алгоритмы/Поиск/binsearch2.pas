Program binsearch2; // ������� ������� ����� �������
 const 
  n=10;
 var
  a:array[1..n] of integer;
  l,r,i,x:integer;
begin
  for i:=1 to n do
   begin
    write('a[',i,']= '); readln(a[i]);
   end;
   write('������ �: ');
  for i:=1 to n do
   write(a[i],' ');
 writeln; write('������� ������� �������: '); readln(x);
 
 
  L:=1; R:=n;
   while L<R do
     begin
     
       i:=(L+R) div 2;
       
      if a[i]>=x then R:=i
       else L:=i+1;
       
     end;
     
   if a[R]=x then write('������� ',x,' �� ������� ',R)
    else write('������� �� ������');
       
  readln;
end.