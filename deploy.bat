@echo off

REM �ӷҧ��ѧ��������ਤ Laravel �ͧ�س
cd C:\inetpub\wwwroot\bbs

REM �֧�������¹�ŧ����ش�ҡ�ҧ����� Git
git pull origin main

REM �Դ��駤�����鹷���ͧ��èҡ Composer
composer install --no-dev --optimize-autoloader

REM �ӡ�����¡���������êѹ�ҹ������ (�ҡ����)
php artisan migrate

REM ��ҧᤪ
php artisan cache:clear
php artisan config:clear
php artisan route:clear

REM ��ʵ��������������� (�� Apache ���� Nginx)
REM �س�Ҩ�е�ͧ��Ѻ����觹������õԴ������������ͧ�س
NET STOP w3svc
NET START w3svc

echo ��õԴ�����������ó�
