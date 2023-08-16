@echo off

REM นำทางไปยังโฟลเดอร์โปรเจค Laravel ของคุณ
cd C:\inetpub\wwwroot\bbs

REM ดึงการเปลี่ยนแปลงล่าสุดจากทางรีโมท Git
git pull origin main

REM ติดตั้งความขึ้นที่ต้องการจาก Composer
composer install --no-dev --optimize-autoloader

REM ทำการเรียกใช้การเมียเกรชันฐานข้อมูล (หากจำเป็น)
php artisan migrate

REM ล้างแคช
php artisan cache:clear
php artisan config:clear
php artisan route:clear

REM รีสตาร์ทเว็บเซิร์ฟเวอร์ (เช่น Apache หรือ Nginx)
REM คุณอาจจะต้องปรับคำสั่งนี้ตามการติดตั้งเซิร์ฟเวอร์ของคุณ
NET STOP w3svc
NET START w3svc

echo การติดตั้งเสร็จสมบูรณ์
