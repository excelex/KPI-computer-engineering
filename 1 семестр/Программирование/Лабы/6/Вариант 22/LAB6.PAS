Program Lab6;
Const valid_chars=['A'..'Z','a'..'z'];
      valid_nums=['0'..'9'];
Var S:string;
    k:byte;
Function first_letters_ending_char(str:string):char;
var i:byte;
    ch:char;
begin
    if (Length(str)=1) and (str[1] in valid_chars) then ch:=str[1]
    else
        for i:=1 to Length(str)-1 do
            if (str[i] in valid_chars) and not(str[i+1] in valid_chars) then
              begin
                ch:=str[i];
                break;
              end
            else if (str[i+1] in valid_chars) and (i=Length(str)-1) then
              begin
                ch:=str[i];
                break;
              end;
    first_letters_ending_char:=ch;
end;
Function ending_amount(str:string;ch:char):byte;
var i,k:byte;
begin
    if (Length(str)=1) and (str[1]=ch) then k:=1
    else
        for i:=1 to Length(str)-1 do
          if (str[i]=ch) and not(str[i+1] in valid_chars) then inc(k)
          else if (str[i+1]=ch) and (i=Length(str)-1) then inc(k);
    ending_amount:=k;
end;
Procedure nums_beginning_amount(str:string;ch:char);
var i,k,n:byte;
begin
    write('����� ����, �� ����������� ������ "',ch,'", ');
    if str[1]=ch then
      begin
        inc(k);
        inc(n);
        write('��������. �� ������: 1 ')
      end;
    for i:=2 to Length(str) do
        if (str[i] in valid_nums) and not(str[i-1] in valid_nums) then
          begin
            inc(k);
            if str[i]=ch then
              begin
                inc(n);
                if n=1 then write('��������. �� ������: ');
                write(k,' ')
              end;
          end;
    if n=0 then write('�� ��������.');
end;
Begin
    write('������� �����:');
    readln(S);
    k:=ending_amount(S,first_letters_ending_char(S));
    if k<>0 then
      begin
        if k=1 then
          writeln('� ����� ���� ����� ����� ����, ��� � ������������ �� � ������, �� � ����� ����� ����.')
        else
          writeln('ʳ������ ���� ����, �� ����������� �� � ������, �� � ����� ����� ����: ',k-1);
      end
    else writeln('� ����� ���� ����� ����� ����.');

    nums_beginning_amount(S,'5');
End.