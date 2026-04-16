# 🎬 StreamVault

**Your private Netflix-style video streaming platform.**

StreamVault lets you stream videos from any folder on your computer through a beautiful, Netflix-inspired web interface. Log in with your admin-defined credentials and enjoy your private video library.

---

## ✨ Features

- **🔐 JWT Authentication** — Admin-defined usernames and passwords
- **📂 Recursive Folder Scanning** — Organizes subfolders as categories
- **🎥 Video Streaming** — HTTP Range support for MP4/WebM, FFmpeg transcoding for MKV/AVI/MOV
- **🖼️ Auto Thumbnails** — Generates thumbnails via FFmpeg if no image exists
- **📝 Subtitle Support** — SRT/VTT with auto SRT→VTT conversion
- **▶ Resume Playback** — Continue watching from where you left off
- **⚡ Keyboard Shortcuts** — Custom + standard shortcuts
- **🔍 Search & Sort** — Find videos instantly, sort by name/size/date
- **📱 Responsive** — Works on desktop, tablet, and mobile
- **🌙 Dark Theme** — Premium Netflix-style dark design

## ⌨️ Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl+Shift+P` | Play / Pause |
| `Ctrl+Shift+K` | Skip +10s |
| `Ctrl+Shift+J` | Rewind -10s |
| `Ctrl+Shift+L` | Cycle speed (1× → 1.25× → 1.5× → 1.75× → 2×) |
| `Space` | Play / Pause |
| `→` Arrow Right | Skip +5s |
| `←` Arrow Left | Rewind -5s |
| `F` | Toggle Fullscreen |
| `M` | Toggle Mute |
| `Esc` | Close player |

---

## 🚀 Quick Start

### 1. Configure

Edit `server/.env`:
```env
MEDIA_FOLDER=J:\Your\Video\Folder
USERS=[{"username":"yourname","password":"yourpass"}]
```

### 2. Install & Run Server

```bash
cd server
npm install
npm run dev
```

### 3. Install & Run Client

```bash
cd client
npm install
npm run dev
```

### 4. Open

Visit `http://localhost:1098` and log in!

---

## 📁 Media Folder Setup

- Place video files (`.mp4`, `.mkv`, `.webm`, `.avi`, `.mov`) in your media folder
- Organize into subfolders for categories (e.g., `Movies/`, `Tutorials/`)
- Add matching thumbnails: `video-name.jpg` next to `video-name.mp4`
- Add subtitles: `video-name.srt` or `video-name.vtt`
- If no thumbnail exists, one will be auto-generated (requires FFmpeg)

---

## 🔧 Requirements

- **Node.js** 18+
- **FFmpeg** (optional but recommended) — for MKV/AVI/MOV playback, auto-thumbnails, and duration info
  - Download from [ffmpeg.org](https://ffmpeg.org)
  - Add to your system PATH

---

## 🏗️ Tech Stack

- **Frontend:** React 18 + Vite + React Router
- **Backend:** Node.js + Express
- **Auth:** JWT (JSON Web Tokens)
- **Streaming:** HTTP Range + FFmpeg transcoding
