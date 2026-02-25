# YouTube Terminal Downloader

A clean, interactive shell script that lets you download YouTube videos directly from the Linux terminal using **yt-dlp**.
No browser clutter. No ads. Just pure terminal power.

---

## ✨ Features

* Paste a YouTube link and fetch all available formats
* View every quality YouTube provides for that video
* Choose the exact format you want
* Supports video, audio-only, and merged formats
* Lightweight Bash script
* Works perfectly on Linux Mint and Ubuntu

---

## 📦 Requirements

Make sure you have:

* Linux (tested on Linux Mint)
* `yt-dlp` (latest version recommended)
* Bash shell

Install yt-dlp:

```
sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
sudo chmod +x /usr/local/bin/yt-dlp
```

Verify installation:

```
yt-dlp --version
```

---

## 🚀 Usage

Clone the repository:

```
git clone https://github.com/yourusername/youtube-terminal-downloader.git
cd youtube-terminal-downloader
```

Make the script executable:

```
chmod +x run.sh
```

Run it:

```
./run.sh
```

---

## 🖥 How It Works

1. The script asks for a YouTube link
2. It fetches all available formats for that video
3. A full format list is displayed
4. You choose the format code (example: `18`, `136+140`, `251`)
5. The download starts instantly

---

## 📘 Format Selection Guide

### Video + Audio (Single File)

* `18` → 360p MP4 (easy and compatible)

### High Quality Video (Needs Merge)

* `136+140` → 720p video + audio
* `134+140` → 360p video + audio

### Audio Only

* `251` → Best audio (Opus)
* `140` → M4A audio

Use `+` to merge video and audio streams.

---

## 🧠 Why This Script

* No guessing resolutions
* You only download what actually exists
* Uses yt-dlp directly, no wrappers
* Ideal for power users and minimal setups

---

## ⚠ Disclaimer

This project is for **educational and personal use only**.
Downloading copyrighted content without permission may violate YouTube’s Terms of Service.

---

## 🤝 Contributing

Pull requests are welcome.
Feel free to improve the UI, add smart quality selection, or extend functionality.

---

## ⭐ Star the Repo

If this helped you, consider giving the project a star on GitHub.
It helps others discover it too.

---

Made with Bash, Linux, and terminal love ❤️
