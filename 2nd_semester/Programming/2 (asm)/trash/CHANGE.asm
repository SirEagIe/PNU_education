TITLE CHANGE
;�ணࠬ�� ������� ����� �㪢� �������묨 � ᨬ���쭮 ��ப�
;� �뢮��� �� ��࠭ �८�ࠧ������� ��ப� �� ��࠭
;�室�� ��ࠬ����:
;⥪�⮢�� ��६����� MYTEXT
.MODEL SMALL	;������ ����� �������� ⨯�
.DATA	;������ ᥣ���� ������
	MYTEXT DB 'Our Native Town', 13, 10, '$'	;��室��� ��ப�
.STACK 100h	;�⢥�� ��� �⥪ 256 ����
.Code	;������ ᥣ���� �����
;------------------��楤�� ���४樨 ���� ᨬ����------------------
Cor PROC NEAR	;����� ��楤��� � ������ Cor
	nop	;宫���� �������
	and AH, 0DFh	;�ந����� �����᪮� 㬭������ ���祭�� AH � 0DFh
	mov [BX], AH	;�������� ᨬ��� � ��ப�
	ret	;������ �� ��楤���
Cor ENDP	;�������� ��楤��� � ������ Cor
;-------------------------�᭮���� �ணࠬ��-------------------------
Start:
	mov AX, @DATA	;���樠���஢���
	mov DS, AX	;ᥣ����� ॣ���� DS
	xor AX, AX	;������ ॣ���� AX
	lea BX, MYTEXT	;����㧨�� � BX ��砫�� ���� ��ப� MYTEXT
	mov CX, 15	;����㧨�� ����稪 横���
;--------------------------��砫� ⥫� 横��-------------------------
MT1:
	mov AH, [BX]	;�������� � AH ��।��� ᨬ��� ��ப� MYTEXT
	cmp AH, 61h	;�ࠢ���� AH � 61h
	jb MT2	;�᫨ AH �����, ��३� � ��⪥ MT2
	cmp AH, 7Ah	;���� - �ࠢ���� AH � 7Ah
	ja MT2	;�᫨ AH �����, ��३� � ��⪥ MT2
	call COR	;���� - �맢��� ��楤��� COR
MT2:
	inc BX	;�������� ���祭�� BX �� �������
;--------------------------����� ⥫� 横��--------------------------
	loop MT1	;������� 横�, �᫨ (CX) != 0
	lea DX, MYTEXT	;�뢥�� ��६�����
	mov AH, 09h	;MYTEXT
	int 21h	;�� ��࠭
	nop	;宫���� �������
	mov AX, 4C00h	;��������
	int 21h	;�ணࠬ��
END Start	;����� ��室���� �����