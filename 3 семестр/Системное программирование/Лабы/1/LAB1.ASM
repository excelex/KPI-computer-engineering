data          SEGMENT  byte
 val1         db       3
 val2         db       2
 result       db       ?
data          ENDS

code          SEGMENT
              ASSUME   cs:code,ds:data
               ; assume ���ନ��� ��ᥬ���� � ����������
               ; ᥣ������ ॣ���஢
begin:
              mov      ax,data        ; ���� ᥣ���� ������
              mov      ds,ax          ; ���뫠���� � ॣ���� DS
     
              mov      al,val1        ; ����㧪� ॣ���� al ᮤ�ন��
                                      ; �祩�� ������ �� ����� val1

              add      al,val2        ; ᫮����� ᮤ�ন���� ॣ���� al
                                      ; c ᮤ�ন�� �祩�� ����� �� ������
                                      ; val2, १���� ���뫠���� � ॣ���� al
 
              mov      result,al      ; ����뫪� १���� �� ॣ���� al 
                                      ; � �祩�� ����� �� ����� result

              nop                     ; ������� "��� ����樨"
; ���� ��⠭��� ��� �⫠�稪�
              nop         
              nop
              mov      ax,4c00h       ; ��室 � MS-DOS
              int      21h

code          ENDS
              end      begin

