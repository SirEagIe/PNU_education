.MODEL SMALL						;������ ����� �������� ⨯�
.386
.CODE								;������ ᥣ���� �����
Start:
	mov AX, @DATA					;���樠����஢���
	mov DS, AX						;ᥣ����� ॣ���� DS
	mov EAX, M_1					;������� � ���७�� ॣ���� EAX ���祭�� ��६����� M_1
	mov M_2, EAX					;������� � ��६����� M_2 ���祭�� ���७���� ॣ���� EAX
	mov BP, SP						;������� � ॣ���� BP ���祭�� ॣ���� SP
	mov AX, Z1[2]					;������� � ॣ���� AX ��ன ������� ���ᨢ� Z1
	mov [BP], AX					;������� ᮤ�ন��� AX � �祩�� ����� �� �����, ��室�饬��� � BP (� �⥪)
	sub SP, 2						;�������� 㪠��⥫� �� ���設� �⥪� SP �� 2
	mov BP, SP						;������� � ॣ���� BP ���祭�� ॣ���� SP
	mov AX, Z1[6]					;������� � ॣ���� AX ������ ������� ���ᨢ� Z1
	mov [BP], AX					;������� ᮤ�ন��� AX � �祩�� ����� �� �����, ��室�饬��� � BP (� �⥪)
	mov AH, 4Ch						;�������� �ணࠬ��
	mov AL, 0						;� �������
	int 21h							;DOS
.DATA								;��砫� ᥣ���� ������
	var_1 DB 11000110b				;��।����� ��६����� var_1 ࠧ��஬ ���� � ��砫�� ���祭��� 11000110b
	var_2 DW 9FFEh					;��।����� ��६����� var_2 ࠧ��஬ ᫮�� � ��砫�� ���祭��� 9FFEh
	var_3 DB ?						;��।����� ��६����� var_3 ࠧ��஬ ���� �� ������� �� ��砫쭮�� ���祭��
	var_4 DW ?						;��।����� ��६����� var_4 ࠧ��஬ ᫮�� �� ������� �� ��砫쭮�� ���祭��
	M_1 DD 0FF00FFEEh				;��।����� ��६����� M_1 ࠧ��஬ ������� ᫮�� � ��砫�� ���祭��� 0FF00FFEEh
	M_2 DD ?						;��।����� ��६����� M_2 ࠧ��஬ ������� ᫮�� �� ������� �� ��砫쭮�� ���祭��
	String DB 'Assembler', '&'		;��।����� ��ப� ᨬ����� String, ����� ᨬ��� ���ன ����� ࠧ��� ����, � ��砫�� ���祭��� Assembler
	M1 DB 7,9,28,46,39,31,20,25		;��।����� ���ᨢ � ������ M1, ����騩 �� ���쬨 �᫮��� ������⮢ ࠧ��஢ ����
	M2 DB 12,15,7,25,31,38,20,63	;��।����� ���ᨢ � ������ M2, ����騩 �� ���쬨 �᫮��� ������⮢ ࠧ��஢ ����
	Z1 DW 48,256,300,511,31,512		;��।����� ���ᨢ � ������ Z1, ����騩 �� ��� �᫮��� ������⮢ ࠧ��஢ ᫮��
	Z2 DW 0EEh,99Fh,300h,51AAh		;��।����� ���ᨢ � ������ Z2, ����騩 �� ������ �᫮��� ������⮢ ࠧ��஢ ᫮��
	SIM DB 'QWERTYUIOP'				;������� ���ᨢ � ������ SIM
		DB '����������'				;�� ���� ��ப
		DB 'POIUYTREWQ'				;�� 10 ᨬ����� � ������
.STACK 100h							;��।����� �⥪ ࠧ��஬ 100h
END Start							;����� ��室���� �����


	mov AX, @DATA					;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������)
	mov DS, AX						;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������, ��ன ���࠭� - ��ﬠ� ॣ���஢�� ������)
	mov EAX, M_1					;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������, ��ன ���࠭� - ��ﬠ� ������ � �����)
	mov M_2, EAX					;(���� ���࠭� - ��ﬠ� ������ � �����, ��ன ���࠭� - ��ﬠ� ॣ���஢�� ������)
	mov BP, SP						;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������, ��ன ���࠭� - ��ﬠ� ॣ���஢�� ������)
	mov AX, Z1[2]					;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������, ��ன ���࠭� - ��ᢥ���� ॣ���஢�� ������ � ᬥ饭���)
	mov [BP], AX					;(���� ���࠭� - ��ᢥ���� ॣ���஢�� ������, ��ன ���࠭� - ��ﬠ� ॣ���஢�� ������)
	sub SP, 2						;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������, ��ன ���࠭� - �����।�⢥���� ������)
	mov BP, SP						;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������, ��ன ���࠭� - ��ﬠ� ॣ���஢�� ������)
	mov AX, Z1[6]					;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������, ��ன ���࠭� - ��ᢥ���� ॣ���஢�� ������ � ᬥ饭���)
	mov [BP], AX					;(���� ���࠭� - ��ᢥ���� ॣ���஢�� ������, ��ன ���࠭� - ��ﬠ� ॣ���஢�� ������)
	mov AH, 4Ch						;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������, ��ன ���࠭� - �����।�⢥���� ������)
	mov AL, 0						;(���� ���࠭� - ��ﬠ� ॣ���஢�� ������, ��ன ���࠭� - �����।�⢥���� ������)
	int 21h							;(�����।�⢥���� ������)
	
	