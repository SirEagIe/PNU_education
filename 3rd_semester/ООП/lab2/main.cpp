#include <iostream>
#include "Adres.h"
#include "windows.h"

using namespace std;

int main()
{
    system("chcp 1251");
    system("cls");
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    cout << endl << "----------------" << "���������� �������� � ����������� ������" << "----------------" << endl << endl;
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    {
        Adres a("������ ���� ��������", "���������", "��. ������", 13);
        Adres b = a;
    }
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    cout << endl << "----------------" << "���������� �������� � ������������ ������" << "----------------" << endl << endl;
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    Adres *c = new Adres;
    c->set("������ ϸ�� ��������", "������", "��. �������", 42);
    c->show();
    delete c;
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    cout << endl << "----------------" << "���������� �������� � ����������� �������" << "----------------" << endl << endl;
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    {
        Adres d[2] = {Adres("������ ���� ��������", "���������", "��. ������", 13), Adres("������ ϸ�� ��������", "������", "��. �������", 42)};
    }
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    cout << endl << "----------------" << "���������� �������� � ������������ �������" << "----------------" << endl << endl;
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    {
        Adres *e = new Adres[2];
        e[0].set("������ ���� ��������", "���������", "��. ������", 13);
        e[0].show();
        e[1].set("������ ϸ�� ��������", "������", "��. �������", 42);
        e[1].show();
        delete [] e;
    }
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    cout << endl << "----------------" << "��������� � ��������� ����� ������" << "----------------" << endl << endl;
    /*-----------------------------------------------------------------------------------------------------------------------------*/
    Adres f;
    char name[100];
    char city[100];
    char street[100];
    int number;
    cout << "������� ���: ";
    cin.getline(name, 100);
    cout << "������� ��������� �����: ";
    cin.getline(city, 100);
    cout << "������� �����: ";
    cin.getline(street, 100);
    cout << "������� ����� ����: ";
    cin >> number;
    f.setName(name);
    f.setCity(city);
    f.setStreet(street);
    f.setNumber(number);
    cout << "���: " << f.getName() << endl;
    cout << "��������� �����: " << f.getCity() << endl;
    cout << "�����: " << f.getStreet() << endl;
    cout << "����� ����: " << f.getNumber() << endl;
    f.whoLivesHere();
    return 0;
}
