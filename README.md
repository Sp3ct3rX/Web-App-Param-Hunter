<h1 align="center">
  🕵️‍♂️ Param Hunter
</h1>

<p align="center">
  ابزار شناسایی پارامترهای URL برای جمع‌آوری داده‌ها، تست امنیت و اجرای حملات XSS/SSRF/LFI و سایر آسیب‌پذیری‌ها.  
</p>

<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&duration=3000&pause=1000&center=true&vCenter=true&width=435&lines=Recon+Tool+for+Bug+Bounty+Hunters;Find+Hidden+Parameters+Like+a+Pro!;Bash+Powered+CLI+Tool+%F0%9F%90%9B" alt="Typing SVG" />
</p>

---

## ⚙️ ویژگی‌ها

- 🎯 جستجوی سریع پارامترها از دامنه یا لیست URL
- 🧠 استفاده از wordlist داخلی یا دلخواه شما
- 🔍 پشتیبانی از HTTP/HTTPS و wildcard domains
- 📤 ذخیره خروجی در فایل
- 🛡️ مناسب برای تست آسیب‌پذیری‌های:
  - XSS  
  - SSRF  
  - LFI  
  - Open Redirect  
  - … و سایر حملات مبتنی بر URL parameters



🚀 استفاده

./param-hunter.sh -u https://target.com -w wordlist.txt -o results.txt

پارامترها:
گزینه	توضیح
-u	آدرس دامنه هدف
-w	فایل wordlist پارامترها
-o	مسیر ذخیره‌سازی خروجی
--help	نمایش راهنمای کامل


📌 وابستگی‌ها

    curl

    grep

    sed

    awk

📁 اگر نیاز دارید با یک دستور همه وابستگی‌ها نصب شوند:

sudo apt install curl grep sed awk

📷 اسکرین‌شات
<p align="center"> <img src="https://github.com/YourUser/param-hunter/assets/demo.png" width="700"/> </p>
📚 آموزش فارسی

برای آموزش فارسی این ابزار و نمونه‌های کاربردی آن در تست نفوذ:
👉 کانال تلگرام من
🧑‍💻 توسعه‌دهنده

Made with ❤️ by @Milad
<p align="center"> <a href="https://github.com/Sp3ct3rX"><img src="https://img.shields.io/badge/GitHub-%2312100E.svg?&style=for-the-badge&logo=github&logoColor=white"/></a> <a href="https://t.me/Sp3ct3r_Xx"><img src="https://img.shields.io/badge/Telegram-%230077B5.svg?&style=for-the-badge&logo=telegram&logoColor=white"/></a> <a href="https://instagram.com/sp3ct3rx"><img src="https://img.shields.io/badge/Instagram-%23E4405F.svg?&style=for-the-badge&logo=instagram&logoColor=white"/></a> </p>
🛠️ لایسنس

MIT License

 Bash Dependencies

This script uses the following common UNIX utilities:

    curl – For sending HTTP requests

    grep – For filtering lines

    awk – For pattern scanning

    sed – For string manipulation

    jq – For parsing JSON (optional, but recommended)

✅ Make sure these tools are installed before running the script.

Install example (on Debian/Ubuntu):

sudo apt update && sudo apt install curl grep awk sed jq -y

---

## 📦 نصب

```bash
git clone https://github.com/YourUser/param-hunter.git
cd param-hunter
chmod +x param-hunter.sh
