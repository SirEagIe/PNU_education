TITLE CONV
;Программа преобразования двочнокодированного
;десятичного числа в символьный вид
;Входные параметры:
;исходное число Number
;Выходные параметры:
;преобразованное в символьный вид число Y_ASCII
.MODEL SMALL	;Модель памяти ближнего типа
.DATA	;Открыть сегмент данных
	Y_ASCII DB 7 DUP(?)	;Переменная для хранения символов ASCII
	Sign DB (?)	;Переменная для хранения знака числа
	Number DW -20488	;Переменная для хранения исходного числа
.STACK 100h	;Отвести под стек 256 байт
.CODE	;Открыть сегмент кодов
Preobr PROC	;Начать процедуру с именем Preobr
	mov AX, Number	;Переместить в AX исходное число
	mov Sign, ' '	;Поместить в переменную знака символ пробела (знак +)
	cmp AX, 0	;Сравнить число с нулём
	jns M_1	;Если больше или равно 0, перейти на метку M_1
	mov Sign, '-'	;иначе поместить в переменную знака символ минус (знак -)
	neg AX	;Преобразовать в прямой код
M_1:
	xor CX, CX	;Очистить CX
	mov BX, 10	;Поместить в BX делитель равный 10
M_2:
	xor DX, DX	;Очистить DX
	div BX	;Разделить число на 10
	push DX	;Сохранить остаток в стеке
	inc CX	;Увеличить значение CX на единицу
	cmp AX, 0	;Сравнить число с нулём
	jne M_2	;Если больше или равно 0, повторить деление
	xor SI, SI	;Очистить SI
	mov AL, Sign	;Загрузить в AL знак числа
	mov Y_ASCII[SI], AL	;Переслать знак в Y_ASCII
	inc SI	;Увеличить SI на единицу
M_3:
	pop AX	;Извлечь содержимое стека в AX
	add AL, 30h	;Вычислить ASCII код для цифры
	mov Y_ASCII[SI], AL	;Переслеать ASCII код в Y_ASCII
	inc SI	;Увеличить SI на единицу
	loop M_3	;Если содержимое CX не 0, повторить цикл
	mov Y_ASCII[SI], '$'	;Поместить символ конца строки в Y_ASCII
	ret	;Возврат из процедуры
Preobr ENDP	;Закончить процедуру с именем Preobr

Main:	;Основная программа
	mov AX, @DATA	;Инициалищировать
	mov DS, AX	;сегментный регистр DS
	call Preobr	;Вызов процедуры преобразования
	mov AX, 4C00h	;Завершить программу
	int 21h	;с помощью DOS
END Main	;Конец исходного модуля