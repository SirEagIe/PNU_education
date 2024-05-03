MODEL SMALL	;Модель памяти ближнего типа
.STACK 256	;Отвести под стек 256 байт
.486	;Используем расширенную систему команд
.DATA	;Открыть сегмент данных
	Mas_A DW -3, 9, 5, 1, 2	;Коэффициенты полинома
	N DW 4	;Порядок полинома равен 4
	X DD -10.0	;Начальное значение аргумента X
	M DW 180	;Масштабный коэффициент
	Step DD 0.1	;Шаг изменения аргумента X
	Number DW 0	;Номер отсчёта для значений X
	Y DD (?)	;Результат вычисления полинома
.CODE	;Открыть сегмент кодов
;=================Инициализация графического режима==================
InitGraph PROC	;Начать процедуру с именем InitGraph
	pusha	;Поместить в стек значения всех 16-битных регистров общего назначения
	mov AH, 0	;Установить режим экрана
	mov AL, 13h	;320x200x256
	int 10h	;средствами BIOS
	popa	;Извлечь из стека значения всех 16-битных регистров общего назначения
	ret	;Возврат из процедуры
InitGraph ENDP	;Закончить процедуру с именем InitGraph
;====================Закрытие графического режима====================
CloseGraph PROC	;Начать процедуру с именем CloseGraph
	mov AX, 3	;Установить текстовый
	int 10h	;режим 25x80 средствами BIOS
	ret	;Возврат из процедуры
CloseGraph ENDP	;Закончить процедуру с именем CloseGraph
;===========================Очистка экрана===========================
Clear PROC	;Начать процедуру с именем Clear
	pusha	;Поместить в стек значения всех 16-битных регистров общего назначения
	mov CX, 64000	;Число пикселов экрана
	mov AX, 0A000h	;Адрес графической видеопамяти
	mov ES, AX	;в ES
	mov AL, 00010100b
	xor DI, DI	;Очистить регистр DI
	cld	;Сброс флага направления
	rep stosb
	popa	;Извлечь из стека значения всех 16-битных регистров общего назначения
	ret	;Возврат из процедуры
Clear ENDP	;Закончить процедуру с именем Clear
;======================Ожидание нажатия клавиш=======================
WaitKey PROC	;Начать процедуру с именем
	pusha	;Поместить в стек значения всех 16-битных регистров общего назначения
	mov AH, 01h	;пауза да
	int 21h	;нажатия клавиши
	popa	;Извлечь из стека значения всех 16-битных регистров общего назначения
	ret	;Возврат из процедуры
WaitKey ENDP	;Закончить процедуру с именем
;===========================Рисование осей===========================
Osi PROC	;Начать процедуру с именем PROC
	pusha	;Поместить в стек значения всех 16-битных регистров общего назначения
	mov CX, 10	;Начало горизонтальной
	mov DX, 5	;оси
	mov AL, 00000110b	;Цвет оси желтый
o1:
	mov AH, 12	;Вывод точки
	int 10h	;Вызов BIOS
	inc CX	;Построить
	cmp CX, 300	;300
	jne o1	;точек
;--------------------------------------------------------------------
	mov CX, 160	;Начало вертикальной
	mov DX, 0	;оси
	mov AL, 00000110b	;Цвет оси желтый
o2:
	mov AH, 12	;Вывод точки
	int 10h	;Вызов BIOS
	inc DX	;Перейти к следующей строке
	cmp DX, 200	;Сравнить DX с 200
	jne o2	;Если меньше или равно, перейти к метке
	popa	;Извлечь из стека значения всех 16-битных регистров общего назначения
	ret	;Возврат из процедуры
Osi ENDP	;Закончить процедуру с именем PROC
;========================Вывод точки на экран =======================
PutPixel PROC	;Начать процедуру с именем PutPixel
	;ecx, edx – координаты точки
	pusha	;Поместить в стек значения всех 16-битных регистров общего назначения
	mov AL,0000010b	;Цвет пиксела - зелёный
	mov EDX, 5	;Номер строки
	sub EDX, Y	;вывода
	nop	;холостая команда
	mov CX, 60	;Номер столбца
	add CX, Number	;вывода
	nop	;холостая команда
	mov AH,12	;Вывести пиксел
	int 10h	;на экран
	nop	;холостая команда
	popa	;Извлечь из стека значения всех 16-битных регистров общего назначения
	ret	;Возврат из процедуры
PutPixel ENDP	;Закончить процедуру с именем PutPixel
;-------------------------------------------------------------
Start:
	mov AX, @Data	;Инициализировать
	mov DS, AX	;сегментный регистр DS
	call Clear	;Очиститть экран
	call InitGraph	;Инициализация графического режима
	call Osi	;Вывести оси
	call WaitKey	;Пауза
@2:
	mov CX, N	;Загрузить счетчик циклов
	xor SI,SI	;Очистить регистр SI
	finit	;Инициализировать сопроцессор
	fild Mas_A[SI]	;Загрузка целое a1 в st(0)
	fld X	;Загрузить X в st(1)
@1:
	fmul	;Перемножть st(0):=(st(0))*(st(1))
	inc SI	;Перейти к следующему
	inc SI	;ai
	fiadd Mas_A[SI]	;Добавить очередное ai к произведению
	fld X	;Загрузить X в st(1)
	loop @1	;Перейти на метку, если CX не 0
	fxch st(1)	;Обменять st(0) и st(1)
	fidiv M	;Разделить на масштабный коэффициент
	frndint	;Округлить до целого
	fistp Y	;Переслать (st(0)) в Y
	call PutPixel	;Вывести полученное значение на график
	fadd Step	;Увеличить на шаг st(0):=(st(0))+0.1
	fstp X	;Сохранить st(0)+0.1 в память X
	inc Number	;Перейти к следующему отсчету по X
	cmp Number,199	;Повторить еще 199 раз
	jnz @2	;Повторить цикл, если ZF != 0
	call WaitKey	;Ожидание нажатия клавиши
	call CloseGraph	;Закрыть графический режим
	mov AX, 4C00h	;и выйти
	int 21h	;в DOS
END Start	;Конец исходного модуля