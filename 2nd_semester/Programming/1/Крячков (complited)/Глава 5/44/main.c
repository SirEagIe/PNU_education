#include <stdio.h>
#include <string.h>
#include <locale.h>

int main()
{
    setlocale(LC_CTYPE, "rus");
    char text[100] = {0};
    printf("������� �����: ");
    gets(text);
    int result = 1;
    for(int i = 0; i < strlen(text); i++)
    {
        if(text[i] == '0' || text[i] == '1' || text[i] == '2' || text[i] == '3' || text[i] == '4' || text[i] == '5' || text[i] == '6' || text[i] == '7' || text[i] == '8' || text[i] == '9')
            result = 1;
        else
        {
            result = 0;
            break;
        }
    }
    if(result == 1)
        printf("�������� �������� �������� ����� ���������� ������ ��� �����\n");
    if(result == 0)
        printf("�������� �������� �� ����� ���������� ����� ��� �����\n");
    return 0;
}
