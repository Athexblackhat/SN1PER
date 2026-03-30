# SN1PER - Penetration Testing Framework

> **⚠️ Legal Notice:** This toolkit is intended strictly for **authorized penetration testing and security research** on systems you own or have explicit written permission to test. Unauthorized use against systems is illegal and unethical. The author bears no responsibility for misuse.

---

## Overview

SN1PER is a penetration testing framework providing a centralized menu-driven interface for 35+ security tools. It targets security professionals, ethical hackers, and students learning about cybersecurity in controlled, authorized environments.

**Supported Platforms:** Kali Linux · Ubuntu · Termux (Android)  
**Language:** Python 3.8+ / Bash  
**License:** MIT

---

## Features

- Menu-driven interface for 35+ security tools
- One-click tool installation
- Centralized tool storage under `/SN1PER`
- Animated terminal UI (matrix effect, loading bars)
- Real-time progress indicators

---

## Tool Categories

| Category | Tools |
|---|---|
| Network Scanning | Nmap, IP-Tracer |
| Vulnerability Assessment | SQLMap, WPScan, Joomscan, XSStrike |
| Information Gathering | RED_HAWK, Sherlock, PhoneInfoga, Geo-Recon |
| Web Security | XSS-Loader, BlackWidow, Universal-Bypass |
| Password Auditing | THC-Hydra |
| Exploitation Frameworks | Metasploit (msfconsole), PHPSploit |
| OSINT | Dorks Eye, DorkScanner |

> Tools should only be used against systems in authorized test environments (e.g., HackTheBox, TryHackMe, your own lab).

---

## Requirements

- Python 3.8+
- Git
- Internet connection
- Linux / Termux / Kali Linux

---

## Installation

### Kali Linux / Ubuntu

```bash
sudo apt update && sudo apt upgrade
sudo apt install git python3 python3-pip figlet lolcat bc
git clone https://github.com/Athexhacker/SN1PER.git
cd SN1PER
sudo bash sn1per.sh
```

### Termux (Android)

```bash
pkg update && pkg upgrade
pkg install git python python-pip figlet lolcat bc
git clone https://github.com/Athexblackhat/SN1PER.git
cd SN1PER
bash sn1per.sh
```

---

## Usage

On launch, you'll see a numbered menu. Type a number to select a tool, `01` to install all tools, or `00` to exit.

### Example: Nmap

```bash
# Basic port scan
nmap target.local

# Aggressive scan (use only on authorized targets)
nmap -A target.local
```

### Example: SQLMap

```bash
# Test for SQL injection (authorized targets only)
sqlmap -u "http://testsite.local/page.php?id=1"
```

### Example: Metasploit

```bash
msfconsole
search <module_name>
use exploit/...
```

---

## Keyboard Shortcuts

| Key | Action |
|---|---|
| `00` | Exit program |
| `01` | Install all tools |
| `Ctrl+C` | Safe exit |

---

## Changelog

**v3.0** — Complete UI overhaul, new animations, 5 new tools added  
**v2.0** — 15 new tools, improved error handling, better install scripts  
**v1.0** — Initial release with 20 tools

---

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/my-feature`
3. Commit changes: `git commit -m 'Add my feature'`
4. Push: `git push origin feature/my-feature`
5. Open a Pull Request

---

## Contact

- **Whatsapp:** +92 3490916663
- **GitHub:** [@Athexhacker](https://github.com/Athexblackhat)

---

## License

MIT License — Copyright (c) 2025 ATHEX BLACK HAT. See `LICENSE` for details.

---

**Remember:** Always obtain written authorization before testing any system. Unauthorized access is a criminal offense in most jurisdictions.
