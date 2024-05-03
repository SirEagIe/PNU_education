start:
	LDI R16, LOW(RAMEND)	;инициализация стека
	OUT SPL, R16
	LDI R16, HIGH(RAMEND)
	OUT SPH, R16
	LDI R16, 255	;Настройка порта А
	OUT DDRA, R16	;на выход
	LDI R16, 0		;Погашение всех
	OUT PORTA, R16	;лампочек
	
	LDI R16, 0	;Загрузка в R16 числа 0 (регистр, который будет выводится)
	LDI R17, 32	;Загрузка в R17 числа 32 (регистр, который будет менять состояние R16)
	
metka1:	
	LDI R18, 3	;Загрузка в R28 числа 3
metka0:
	CPI R18, 3	;Если R18 равно 3
	BREQ metka2	;Перейти на метку metka2
	CPI R18, 2	;Если R18 равно 2
	BREQ metka3	;Перейти на метку metka3
	CPI R18, 1	;Если R18 равно 1
	BREQ metka2	;Перейти на метку metka2
	RJMP metka1	;Иначе перейти на метку metka1
metka2:
	LDI R30, 1	;Загрузить в R30 число 1 (время задержки для точки)
	RJMP metka4	;Перейти на метку metka4
metka3:
	LDI R30, 5	;Загрузить в R30 число 5 (время задержки для тире)
	RJMP metka4	;Перейти на метку metka4
metka4:
	SUBI R18, 1	;Уменьшить R18 на 1
	LDI R26, 6	;Загрузить в R26 чило 6 (количество миганий)
metka5:
	CALL DELAY	;Вызов подпрограммы задержки
	EOR R16, R17	;Инвертировать состояние пятого бита регистра R16
	OUT PORTA, R16	;Вывести R16 на порт A
	SUBI R26, 1	;Уменьшить R26 на 1
	BRNE metka5	;Если R26 не равен 0, перейти на метку metka5
	RJMP metka0	;Иначе перейти на метку metka1



delay:	;начало подпрограммы задержки (R30*255*255*1 = R30*65025 тактов)
	PUSH R16	;положить R16 в стек
	PUSH R17	;положить R17 в стек
	PUSH R18	;положить R18 в стек
	PUSH R19	;положить R19 в стек
	LDI R19, 1	;загрузить в R19 число 1
	MOV R16, R30	;загрузить в R16 состояние регистра R30
m1:
	CLR R17	;сбросить R17
	CLR R18	;сбросить R18
m2:
	NOP
	ADD R17, R19	;увеличить R17 на 1
	BRCC m2	;если R17 не переполнен, перейти к m2
	ADD R18, R19	;увеличить R18 на 1
	BRCC m2	;если R18 не переполнен, перейти к m2
	SUB R16, R19	;уменьшить R16 на 1
	BRNE m1	;если R16 не равен 0, перейти к m1
	POP R19	;достать R19 из стека
	POP R18	;достать R18 из стека
	POP R17	;достать R17 из стека
	POP R16	;достать R16 из стека
	RET