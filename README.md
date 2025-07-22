<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&pause=1000&center=true&width=435&lines=🔎+param-hunter+CLI+Tool;for+URL+Parameter+Discovery+and+Fuzzing" alt="Typing SVG" />
</p>

<h1 align="center">param-hunter 🔍</h1>

<p align="center">
  A lightweight, fast, and smart CLI tool to discover and analyze parameters from URLs.  
  <br>
  <strong>Written in Bash — Minimal, Powerful, Hacker-Friendly.</strong>
</p>

<p align="center">
  <img src="https://github.com/yourusername/param-hunter/assets/demo.gif" width="600"/>
</p>

---

## ⚡ Features

- 🔍 Extract parameters from URLs
- 🧪 Detect potential fuzzable inputs
- 🌐 Support for crawling list of URLs from tools like `waybackurls`, `gau`, etc.
- ⚙️ Filter parameters by keyword or pattern
- 💡 Export results to file
- 🧼 Clean output for piping into other tools

---

## 🧰 Requirements

> Works natively on most UNIX-based systems (Linux/macOS).  
No dependencies required if `bash`, `grep`, `awk`, `curl`, and `sed` are installed (which are by default).

---

## 🚀 Installation

```bash
git clone https://github.com/yourusername/param-hunter.git
cd param-hunter
chmod +x param-hunter.sh
./param-hunter.sh -h
```
🧪 Usage

./param-hunter.sh -l urls.txt -o output.txt

📘 Options:
Flag	Description
-u	Single URL to analyze
-l	File containing list of URLs
-k	Keyword filter (e.g., id, token)
-o	Output results to file
-h	Show help message
🔍 Example

echo "https://target.com/page.php?id=123&token=abc" > test.txt
./param-hunter.sh -l test.txt -k "id"

⏳ TODO

Basic CLI version

Keyword filtering

Integration with common recon tools

Bash-to-Python optional version

Add colored output

Add auto-fuzzing feature

    Add JSON output format

🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
📄 License

This project is licensed under the MIT License.

📌 param-hunter | شکارچی پارامتر

🔍 ابزاری سبک و سریع برای شکار پارامترهای پنهان در URLها و صفحات وب – مناسب برای تست نفوذ و Bug Bounty.
🚀 امکانات (Features)

✅ استخراج پارامترهای GET و POST از صفحات HTML
✅ پشتیبانی از ورودی لیست URL یا دامین
✅ ذخیره‌سازی خروجی به‌صورت فایل
✅ حذف موارد تکراری و مرتب‌سازی نتایج
✅ حالت CLI با ظاهر مرتب و سریع

🧪 روش استفاده (Usage)

$ bash param-hunter.sh -u https://example.com
$ bash param-hunter.sh -l urls.txt -o output.txt

آرگومان	توضیح
-u	بررسی یک URL
-l	بررسی لیست URLها
-o	ذخیره نتایج در فایل خروجی
-h	نمایش راهنمای ابزار
📂 ساختار پروژه (Project Structure)

param-hunter/
│
├── param-hunter.sh        → اسکریپت اصلی
├── README.md              → مستندات دو زبانه
├── examples/              → نمونه URL برای تست
├── output/                → ذخیره خروجی‌ها
└── utils/                 → ابزارهای کمکی (در آینده)

⚠️ پیش‌نیازها (Requirements)

bash >= 4.x
curl
grep
sed
awk

🧠 هدف (Purpose)

ابزار param-hunter برای هکرهای قانون‌مدار و فعالین Bug Bounty ساخته شده تا در زمان کوتاهی پارامترهای مشکوک یا پنهان را شکار کنند و مرحله شناسایی (Recon) را با دقت و سرعت بالاتری انجام دهند.
