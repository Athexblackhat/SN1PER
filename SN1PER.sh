#!/bin/bash

# ============================================
# SN1PER - Advanced Hacking Tools Framework
# Enhanced with Modern UI & Animations
# Version: 3.0
# ============================================

# Clean terminal
clear

# Check for required commands
command -v bc >/dev/null 2>&1 || { echo -e "\033[38;2;255;0;0mError: bc is required but not installed. Install it with: sudo apt install bc\033[0m" >&2; exit 1; }
command -v figlet >/dev/null 2>&1 || { echo -e "\033[38;2;255;0;0mWarning: figlet not installed. Some features disabled.\033[0m" >&2; }
command -v lolcat >/dev/null 2>&1 || { echo -e "\033[38;2;255;0;0mWarning: lolcat not installed. Some features disabled.\033[0m" >&2; }

# ============================================
# ADVANCED COLOR SCHEME
# ============================================
reset='\033[0m'
bold='\033[1m'
dim='\033[2m'
italic='\033[3m'
underline='\033[4m'
blink='\033[5m'
reverse='\033[7m'

# Neon Colors
neon_green='\033[38;2;0;255;0m'
neon_red='\033[38;2;255;0;0m'
neon_blue='\033[38;2;0;255;255m'
neon_purple='\033[38;2;255;0;255m'
neon_yellow='\033[38;2;255;255;0m'
neon_orange='\033[38;2;255;128;0m'
neon_pink='\033[38;2;255;20;147m'
cyber_cyan='\033[38;2;0;255;255m'
matrix_green='\033[38;2;0;255;0m'

# Background effects
bg_red='\033[41m'
bg_black='\033[40m'
bg_cyan='\033[46m'

# Effects
glitch='\033[5m'
shadow='\033[2m'
highlight='\033[7m'

# ============================================
# ANIMATION FUNCTIONS
# ============================================

# Matrix rain effect
matrix_rain() {
    for i in {1..3}; do
        echo -ne "${matrix_green}"
        for j in {1..50}; do
            echo -ne "$((RANDOM % 2))"
            sleep 0.001 2>/dev/null || sleep 0.01
        done
        echo -ne "${reset}\r"
        sleep 0.05
    done
}

# Loading bar animation
loading_bar() {
    local duration=$1
    local message=$2
    echo -ne "${neon_blue}${bold}[${reset} "
    for ((i=0; i<=20; i++)); do
        echo -ne "${neon_green}█"
        sleep $(echo "scale=3; $duration/20" | bc)
    done
    echo -ne " ${neon_blue}]${reset} ${neon_yellow}${message}${reset}\n"
}

# Glitch text effect
glitch_text() {
    local text="$1"
    echo -ne "${neon_red}${glitch}"
    for ((i=0; i<${#text}; i++)); do
        echo -ne "${text:$i:1}"
        sleep 0.02
    done
    echo -e "${reset}"
}

# Pulse animation
pulse_text() {
    local text="$1"
    for i in {1..3}; do
        echo -ne "${neon_purple}${bold}${text}${reset}\r"
        sleep 0.1
        echo -ne "${neon_blue}${bold}${text}${reset}\r"
        sleep 0.1
    done
    echo -e "${neon_green}${bold}${text}${reset}"
}

# Typewriter effect
typewriter() {
    local text="$1"
    local delay=${2:-0.03}
    for ((i=0; i<${#text}; i++)); do
        echo -ne "${text:$i:1}"
        sleep $delay
    done
    echo
}

# Border animation
animated_border() {
    local chars=("═" "║" "╔" "╗" "╚" "╝")
    echo -ne "${neon_cyan}"
    for i in {1..60}; do
        echo -ne "${chars[0]}"
        sleep 0.005
    done
    echo -e "${reset}"
}

# ============================================
# HEADER WITH ANIMATION
# ============================================
clear

# Matrix intro
matrix_rain
sleep 0.5

# Animated ASCII Art
echo -e "${neon_red}${bold}"
cat << "EOF"
███████╗███╗   ██╗ ██╗██████╗ ███████╗██████╗ 
██╔════╝████╗  ██║███║██╔══██╗██╔════╝██╔══██╗
███████╗██╔██╗ ██║╚██║██████╔╝█████╗  ██████╔╝
╚════██║██║╚██╗██║ ██║██╔═══╝ ██╔══╝  ██╔══██╗
███████║██║ ╚████║ ██║██║     ███████╗██║  ██║
╚══════╝╚═╝  ╚═══╝ ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝
                                              
                                               
                                               
EOF
echo -e "${reset}"

sleep 0.5

# Animated info panel
echo -e "\n${neon_purple}${bold}${reset}"
echo -e "${neon_cyan}${bold}${reset}  ${neon_green}➤${reset} ${bold}AUTHOR${reset}     : ${neon_yellow}ATHEX HACKER${reset}                    ${neon_cyan}${bold}${reset}"
echo -e "${neon_cyan}${bold}${reset}  ${neon_green}➤${reset} ${bold}WHATSAPP${reset}   : ${neon_yellow}+92 3490916663${reset}                   ${neon_cyan}${bold}${reset}"
echo -e "${neon_cyan}${bold}${reset}  ${neon_green}➤${reset} ${bold}STATUS${reset}     : ${neon_red}${blink}● ACTIVE${reset}                         ${neon_cyan}${bold}${reset}"
echo -e "${neon_cyan}${bold}${reset}  ${neon_green}➤${reset} ${bold}VERSION${reset}    : ${neon_purple}3.0 (CYBER EDITION)${reset}              ${neon_cyan}${bold}${reset}"
echo -e "${neon_cyan}${bold}${reset}  ${neon_green}➤${reset} ${bold}TOOLS PATH${reset} : ${neon_blue}/SN1PER${reset}                            ${neon_cyan}${bold}${reset}"
echo -e "${neon_cyan}${bold}${reset}  ${neon_green}➤${reset} ${bold}GITHUB${reset}    : ${neon_blue}https://github.com/Athexblackhat${reset} ${neon_cyan}${bold}${reset}"
echo -e "${neon_cyan}${bold}${reset}  ${neon_green}➤${reset} ${bold}INSTAGRAM${reset} : ${neon_pink}@itx_athex86${reset}                       ${neon_cyan}${bold}${reset}"
echo -e "${neon_purple}${bold}${reset}"

sleep 1

# Animated separator
echo
animated_border
echo

# ============================================
# CTRL + C HANDLER WITH ANIMATION
# ============================================
ctrl_c() {
    clear
    echo -e "\n${neon_red}${bold}${blink}⚠ SYSTEM BREACH DETECTED ⚠${reset}\n"
    sleep 0.5
    echo -e "${neon_yellow}${bold}[#]> 🕷️ I'M IN YOUR SYSTEM${reset}"
    sleep 0.5
    echo -e "${neon_blue}[#]> 📁 Tools installed at: /SN1PER${reset}"
    sleep 0.5
    echo -e "${neon_purple}"
    if command -v figlet >/dev/null 2>&1 && command -v lolcat >/dev/null 2>&1; then
        figlet "GOODBYE" | lolcat
    else
        echo -e "GOODBYE"
    fi
    echo -e "${reset}"
    sleep 1
    exit 0
}

trap ctrl_c INT

# ============================================
# MAIN MENU LOOP
# ============================================
while true; do
    echo ""
    echo ""

    # Animated menu header
    echo -e "${neon_cyan}${bold}${reset}"
    echo -e "${neon_cyan}${bold}${reset}    ${neon_purple}${blink}🔮 SN1PER TOOL ARSENAL 🔮${reset}      ${neon_cyan}${bold}${reset}"
    echo -e "${neon_cyan}${bold}${reset}"
    echo ""

    # Loading animation
    loading_bar 0.8 "Initializing weapon systems..."

    echo ""
    
    # Tools menu with animated entries
    tools=(
        "1|NMAP|Network Mapper & Port Scanner|🌐"
        "2|RED_HAWK|All-in-one Info Gathering & Vuln Scanner|🦅"
        "3|SQLMap|Automated SQL Injection Tool|💉"
        "4|Sniper|Attack Surface Management Platform|🎯"
        "5|Sherlock|Social Media Username Hunter|🔍"
        "6|MSFConsole|Metasploit Framework|⚡"
        "7|Hackertarget|Network Intelligence Tools|🎲"
        "8|Geo-Recon|IP Geolocation & OSINT Tool|📍"
        "9|Darkai|300+ Hacking Tools Collection|🌑"
        "10|Anonsec|DDoS Attack Tool|💣"
        "11|AnonSecIta-DDoS|L7/L4 DDoS Tool|🔥"
        "12|DDoS-Rip|Powerful DDoS Tool|💀"
        "13|THC-Hydra|Password Brute-Force Tool|🔐"
        "14|KARMA-DDoS|Advanced DDoS Tool|🌀"
        "15|MHDDoS|56 Methods DDoS Tool|🌪️"
        "16|White Deface|Website Defacement Tool|⚪"
        "17|Mass Deface|Mass Website Defacement|📝"
        "18|PHPSploit|PHP C2 Framework|🐘"
        "19|WPScan|WordPress Security Scanner|🔧"
        "20|MySql|Database Management System|🗄️"
        "21|Blindy|Blind SQL Injection Tool|🎭"
        "22|Universal-Bypass|403/401 Bypass Tool|🚪"
        "23|Joomscan|Joomla Vulnerability Scanner|📊"
        "24|Dark Dump|Dark Web Search Tool|🌌"
        "25|Dark Scrape|Dark Web OSINT Tool|🕸️"
        "26|Dorks Eye|Google Dork Scanner|👁️"
        "27|FSociety|Mr.Robot Tool Collection|🤖"
        "28|XSS-Loader|XSS Payload Generator|💢"
        "29|XSStrike|Advanced XSS Detection|⚔️"
        "30|XSScrapy|XSS/SQLi Spider|🕷️"
        "31|IP-Tracer|IP Address Tracker|📍"
        "32|Ufonet|DoS/DDoS Attack Tool|👽"
        "33|DorkScanner|Vulnerable URL Scanner|🔎"
        "34|BlackWidow|Web Application Spider|🕷️"
        "35|PhoneInfoga|Phone Number OSINT|📱"
    )

    # Display tools with animation
    for tool_entry in "${tools[@]}"; do
        IFS='|' read -r num name desc icon <<< "$tool_entry"
        
        if [ $((num % 2)) -eq 0 ]; then
            echo -e "${neon_green}${bold} ┌─[${icon}] ${name}${reset}"
        else
            echo -e "${neon_blue}${bold} ┌─[${icon}] ${name}${reset}"
        fi
        echo -e "${dim} │  ${desc}${reset}"
        echo -e "${neon_cyan} ${reset}"
    done

    # Special menu items
    echo -e "${neon_red}${bold} ┌─[❌] 00 - EXIT${reset}"
    echo -e "${neon_yellow}${bold} ┌─[💣] 99 - INSTALL ALL TOOLS${reset}"
    echo -e "${neon_blue}${bold} └─[📁] Installed Path: /SN1PER${reset}"
    echo -e "${neon_purple}${bold}════════════════════════════════════════════════════════════${reset}"
    
    # Animated prompt
    echo -e "\n${neon_green}${bold}╭─[SELECT WEAPON]${reset}"
    read -p "$(echo -e ${neon_red}${bold}╰→${reset} ${neon_yellow}athexhacker@SN1PER:${reset} ")" pil

    # Execute based on selection
    case $pil in
        1) 
            echo -e "${neon_green}${bold}[+] Installing Nmap...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/nmap/nmap.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            echo -e "${neon_blue}[i] Usage: cd nmap && ./configure && make && make install${reset}"
            echo -e "${neon_yellow}[Example] nmap target.com${reset}"
            ;;
        2) 
            echo -e "${neon_green}[+] Installing RED_HAWK...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/Tuhinshubhra/RED_HAWK.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            echo -e "${neon_blue}[i] Usage: cd RED_HAWK && php rhawk.php${reset}"
            ;;
        3) 
            echo -e "${neon_green}[+] Installing SQLMap...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/sqlmapproject/sqlmap.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            echo -e "${neon_blue}[i] Usage: cd sqlmap && python3 sqlmap.py -u target.com?id=1${reset}"
            ;;
        4) 
            echo -e "${neon_green}[+] Installing Sniper...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/1N3/Sn1per.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            echo -e "${neon_blue}[i] Usage: cd Sn1per && bash install.sh${reset}"
            ;;
        5) 
            echo -e "${neon_green}[+] Installing Sherlock...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/sherlock-project/sherlock.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            echo -e "${neon_blue}[i] Usage: cd sherlock && python3 sherlock username${reset}"
            ;;
        6) 
            echo -e "${neon_green}[+] Installing Metasploit Framework...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/rapid7/metasploit-framework.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            echo -e "${neon_blue}[i] Run: msfconsole${reset}"
            ;;
        7) 
            echo -e "${neon_green}[+] Installing Hackertarget...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/pyhackertarget/hackertarget.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        8) 
            echo -e "${neon_green}[+] Installing Geo-Recon...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/radioactivetobi/geo-recon.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        9) 
            echo -e "${neon_green}[+] Installing Darkai...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/anovni/darkai.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        10) 
            echo -e "${neon_green}[+] Installing Anonsec...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/anovni/anonsec.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        11) 
            echo -e "${neon_green}[+] Installing AnonSecIta-DDoS...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/xPloits3c/AnonSecIta-DDoS.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        12) 
            echo -e "${neon_green}[+] Installing DDoS-Ripper...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/palahsu/DDoS-Ripper.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        13) 
            echo -e "${neon_green}[+] Installing THC-Hydra...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/vanhauser-thc/thc-hydra.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        14) 
            echo -e "${neon_green}[+] Installing KARMA-DDoS...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/HyukIsBack/KARMA-DDoS.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        15) 
            echo -e "${neon_green}[+] Installing MHDDoS...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/MatrixTM/MHDDoS.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        16) 
            echo -e "${neon_green}[+] Installing White-Deface...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/WH1T3-E4GL3/white-deface.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        17) 
            echo -e "${neon_green}[+] Installing Mass-Deface...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/00ms/Mass-deface.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        18) 
            echo -e "${neon_green}[+] Installing PHPSploit...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/nil0x42/phpsploit.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        19) 
            echo -e "${neon_green}[+] Installing WPScan...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/wpscanteam/wpscan.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        20) 
            echo -e "${neon_green}[+] Installing MySQL...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/mysqljs/mysql.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        21) 
            echo -e "${neon_green}[+] Installing Blindy...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/agienka/blindy.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        22) 
            echo -e "${neon_green}[+] Installing Universal-Bypass...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/0xAgun/universal-bypass.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        23) 
            echo -e "${neon_green}[+] Installing Joomscan...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/OWASP/joomscan.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        24) 
            echo -e "${neon_green}[+] Installing Dark Dump...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/josh0xA/darkdump.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        25) 
            echo -e "${neon_green}[+] Installing Dark Scrape...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/itsmehacker/DarkScrape.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        26) 
            echo -e "${neon_green}[+] Installing Dorks Eye...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/BullsEye0/dorks-eye.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        27) 
            echo -e "${neon_green}[+] Installing FSociety...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/Manisso/fsociety.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        28) 
            echo -e "${neon_green}[+] Installing XSS-Loader...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/capture0x/XSS-LOADER.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        29) 
            echo -e "${neon_green}[+] Installing XSStrike...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/s0md3v/XSStrike.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        30) 
            echo -e "${neon_green}[+] Installing XSScrapy...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/DanMcInerney/xsscrapy.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        31) 
            echo -e "${neon_green}[+] Installing IP-Tracer...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/rajkumardusad/IP-Tracer.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        32) 
            echo -e "${neon_green}[+] Installing Ufonet...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/epsylon/ufonet.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        33) 
            echo -e "${neon_green}[+] Installing DorkScanner...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/madhavmehndiratta/dorkScanner.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        34) 
            echo -e "${neon_green}[+] Installing BlackWidow...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/1N3/BlackWidow.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        35) 
            echo -e "${neon_green}[+] Installing PhoneInfoga...${reset}"
            loading_bar 1 "Installing..."
            git clone https://github.com/sundowndev/phoneinfoga.git 2>/dev/null || echo -e "${neon_red}Failed to clone repository${reset}"
            ;;
        99)
            echo -e "${neon_yellow}[!] Installing all tools... This may take a while${reset}"
            for i in {1..35}; do
                echo -e "${neon_green}[+] Installing tool $i${reset}"
                # Add installation commands for each tool here
            done
            ;;
        00) 
            glitch_text "TERMINATING SN1PER..."
            sleep 0.5
            echo -e "${neon_red}[#]> 🔴 SN1PER SHUTDOWN${reset}"
            echo -e "${neon_yellow}[#]> 🕷️ SYSTEM BREACHED${reset}"
            echo -e "${neon_blue}[#]> 📁 Tools located at: /SN1PER${reset}"
            echo -e "${neon_purple}"
            if command -v figlet >/dev/null 2>&1 && command -v lolcat >/dev/null 2>&1; then
                figlet "HACK THE PLANET" | lolcat
            else
                echo -e "HACK THE PLANET"
            fi
            echo -e "${reset}"
            exit 0
            ;;
        *) 
            echo -e "${neon_red}${blink}[!] ERROR: Invalid Selection!${reset}"
            sleep 1
            ;;
    esac
    
    echo -e "\n${neon_green}${bold}[+] Operation Complete!${reset}"
    sleep 1
done
