init:	;������������� �����
	LDI R16, LOW(RAMEND)
	OUT SPL, R16
	LDI R16, HIGH(RAMEND)
	OUT SPH, R16
start:	;������ ���������
	PUSH R16	;�������� R16 � ����
	PUSH R17	;�������� R17 � ����
	PUSH R18	;�������� R18 � ����
	PUSH R19	;�������� R19 � ����
	LDS R16, $0060	;��������� � R16 ��������� �������� $0060
	LDI R19, 1	;��������� � R19 1
m1:
	CLR R17	;�������� R17
	CLR R18	;�������� R18
m2:
	NOP
	NOP
	NOP
	INC R17	;��������� R17 �� 1
	BRNE m2	;���� R17 �� ����������, ������� � m2
	INC R18	;��������� R18 �� 1
	BRNE m2	;���� R18 �� ����������, ������� � m2
	DEC R16	;��������� R16 �� 1
	BRNE m1	;���� R16 �� ����� 0, ������� � m1
	POP R19	;������� R19 �� �����
	POP R18	;������� R18 �� �����
	POP R17	;������� R17 �� �����
	POP R16	;������� R16 �� �����
	JMP start