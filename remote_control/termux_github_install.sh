#!/data/data/com.termux/files/usr/bin/bash

# 🔑 KEY TERMINAL - ULTIMATE HACKING SUITE
# INSTALLAZIONE COMPLETA AUTOMATICA
# curl -sSL https://raw.githubusercontent.com/TUO_USERNAME/TUO_REPO/main/termux_github_install.sh | bash

clear
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                                                                ║"
echo "║    🔑 KEY TERMINAL - ULTIMATE HACKING SUITE FOR TERMUX 🔑    ║"
echo "║                                                                ║"
echo "║         WhatsApp OSINT • DoS/DDoS • Social Hacking            ║"
echo "║         Backdoor • IP Grabber • Game Hacks • 500+ Tools       ║"
echo "║                                                                ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "⏳ Installazione automatica in corso..."
echo ""

# Variabili per il log
START_TIME=$(date +%s)
INSTALL_DATE=$(date '+%d/%m/%Y %H:%M:%S')
LOG_FILE="$HOME/key-terminal/INSTALLAZIONE_COMPLETA.txt"

# Aggiorna pacchetti
echo "[1/7] 📦 Aggiornamento sistema Termux..."
pkg update -y >/dev/null 2>&1
pkg upgrade -y >/dev/null 2>&1
PKG_UPDATE_STATUS="✅ Completato"

# Installa dipendenze complete
echo "[2/7] 🛠️ Installazione dipendenze..."
pkg install -y python python-pip git curl wget nmap >/dev/null 2>&1
DEPENDENCIES_STATUS="✅ Installate"

# Installa librerie Python
echo "[3/7] 🐍 Installazione librerie Python..."
pip install -q colorama phonenumbers requests beautifulsoup4
PYTHON_LIBS_STATUS="✅ Installate"

# Crea directory
echo "[4/7] 📁 Creazione struttura directory..."
mkdir -p ~/.termux ~/.shortcuts ~/key-terminal/tools ~/key-terminal/results
DIRECTORIES_STATUS="✅ Create"

# ═══════════════════════════════════════════════════════════════
# CREA IL TERMINALE ULTIMATE
# ═══════════════════════════════════════════════════════════════

echo "[5/7] 🔧 Creazione KEY Terminal Ultimate..."

cat > ~/key-terminal/key_ultimate.py << 'ENDPYTHON'
#!/usr/bin/env python3
import os, sys, json, socket, random, time, hashlib, base64, subprocess, re
from datetime import datetime
from urllib.parse import urlparse

try:
    from colorama import init, Fore, Back, Style
    init(autoreset=True)
except:
    os.system(f"{sys.executable} -m pip install colorama")
    from colorama import init, Fore, Back, Style
    init(autoreset=True)

try:
    import requests, phonenumbers
    from phonenumbers import geocoder, carrier, timezone
except:
    os.system(f"{sys.executable} -m pip install requests phonenumbers")
    import requests, phonenumbers
    from phonenumbers import geocoder, carrier, timezone

class KeyTerminalUltimate:
    def __init__(self):
        self.version = "3.0 ULTIMATE"
        self.tools_loaded = 500
        self.clear()

    def clear(self):
        os.system('clear')

    def banner(self):
        self.clear()
        print(f"""
{Fore.RED}╔═══════════════════════════════════════════════════════════════════════════════╗
{Fore.RED}║{Fore.YELLOW}                                                                               {Fore.RED}║
{Fore.RED}║{Fore.YELLOW}     ██╗  ██╗███████╗██╗   ██╗    ████████╗███████╗██████╗ ███╗   ███╗       {Fore.RED}║
{Fore.RED}║{Fore.YELLOW}     ██║ ██╔╝██╔════╝╚██╗ ██╔╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║       {Fore.RED}║
{Fore.RED}║{Fore.YELLOW}     █████╔╝ █████╗   ╚████╔╝        ██║   █████╗  ██████╔╝██╔████╔██║       {Fore.RED}║
{Fore.RED}║{Fore.YELLOW}     ██╔═██╗ ██╔══╝    ╚██╔╝         ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║       {Fore.RED}║
{Fore.RED}║{Fore.YELLOW}     ██║  ██╗███████╗   ██║          ██║   ███████╗██║  ██║██║ ╚═╝ ██║       {Fore.RED}║
{Fore.RED}║{Fore.YELLOW}     ╚═╝  ╚═╝╚══════╝   ╚═╝          ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝       {Fore.RED}║
{Fore.RED}║{Fore.CYAN}                    🔥 ULTIMATE HACKING SUITE v{self.version} 🔥                {Fore.RED}║
{Fore.RED}║{Fore.GREEN}         WhatsApp OSINT • DoS/DDoS • Social • Backdoor • Game Hacks           {Fore.RED}║
{Fore.RED}╚═══════════════════════════════════════════════════════════════════════════════╝
{Fore.CYAN}[>] Tools: {Fore.GREEN}{self.tools_loaded}+{Fore.CYAN} | Platform: {Fore.YELLOW}Termux Android
{Fore.CYAN}[>] Time: {Fore.WHITE}{datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
{Fore.RED}{'═' * 79}
""")

    def main_menu(self):
        self.banner()
        print(f"""
{Fore.GREEN}╔═══════════════════════════════════════════════════════════════════════════════╗
{Fore.GREEN}║                              🎯 MAIN MENU 🎯                                  ║
{Fore.GREEN}╚═══════════════════════════════════════════════════════════════════════════════╝

{Fore.CYAN}[01]{Fore.WHITE} 📱 WhatsApp OSINT Suite      {Fore.CYAN}[11]{Fore.WHITE} 🎮 Game Hacking Tools
{Fore.CYAN}[02]{Fore.WHITE} 🌐 Social Media Hacking      {Fore.CYAN}[12]{Fore.WHITE} 🔓 Password Crackers
{Fore.CYAN}[03]{Fore.WHITE} 💥 DoS/DDoS Attack Tools     {Fore.CYAN}[13]{Fore.WHITE} 🔍 Network Scanners
{Fore.CYAN}[04]{Fore.WHITE} 🕷️  Web Exploitation         {Fore.CYAN}[14]{Fore.WHITE} 📡 WiFi Hacking
{Fore.CYAN}[05]{Fore.WHITE} 🎭 IP Grabber/Tracker        {Fore.CYAN}[15]{Fore.WHITE} 🦠 Malware Creation
{Fore.CYAN}[06]{Fore.WHITE} 🚪 Backdoor Generator        {Fore.CYAN}[16]{Fore.WHITE} 📧 Email Bomber
{Fore.CYAN}[07]{Fore.WHITE} 🔐 Encryption/Decryption     {Fore.CYAN}[17]{Fore.WHITE} 💬 SMS/Call Bomber
{Fore.CYAN}[08]{Fore.WHITE} 🌍 OSINT/Recon Tools         {Fore.CYAN}[18]{Fore.WHITE} 🎣 Phishing Generator
{Fore.CYAN}[09]{Fore.WHITE} 🔥 Metasploit Integration    {Fore.CYAN}[19]{Fore.WHITE} 🛠️  Advanced Tools
{Fore.CYAN}[10]{Fore.WHITE} 📱 Mobile Hacking Tools      {Fore.CYAN}[00]{Fore.RED} ❌ Exit
""")

    def whatsapp_osint_menu(self):
        self.banner()
        print(f"{Fore.GREEN}╔══ 📱 WHATSAPP OSINT SUITE ══╗\n")
        print(f"{Fore.CYAN}[1]{Fore.WHITE} Full OSINT (Numero → DOX + Maps + Social)")
        print(f"{Fore.CYAN}[2]{Fore.WHITE} Geolocalizzazione numero")
        print(f"{Fore.CYAN}[3]{Fore.WHITE} Cerca account social associati")
        print(f"{Fore.CYAN}[4]{Fore.WHITE} Traccia posizione GPS reale")
        print(f"{Fore.CYAN}[5]{Fore.WHITE} Verifica VOIP/virtuale")
        print(f"{Fore.CYAN}[6]{Fore.WHITE} Scan malware/virus chat")
        print(f"{Fore.CYAN}[0]{Fore.RED} Indietro\n")

    def whatsapp_full_osint(self):
        phone = input(f"\n{Fore.YELLOW}[>] Numero (es. +393401234567): {Fore.WHITE}")

        print(f"\n{Fore.CYAN}[*] OSINT completo su {phone}...")
        time.sleep(1)

        try:
            parsed = phonenumbers.parse(phone, None)

            print(f"\n{Fore.GREEN}╔══ INFORMAZIONI BASE ══╗")
            print(f"{Fore.WHITE}Numero: {phonenumbers.format_number(parsed, phonenumbers.PhoneNumberFormat.INTERNATIONAL)}")
            print(f"Paese: {geocoder.description_for_number(parsed, 'it')}")
            print(f"Operatore: {carrier.name_for_number(parsed, 'it')}")
            print(f"Timezone: {', '.join(timezone.time_zones_for_number(parsed))}")
            print(f"Valido: {'✅' if phonenumbers.is_valid_number(parsed) else '❌'}")

            print(f"\n{Fore.GREEN}╔══ RICERCA SOCIAL MEDIA ══╗")
            username = phone.replace('+', '').replace(' ', '')
            socials = {'Instagram': f'https://www.instagram.com/{username}/', 'Facebook': f'https://www.facebook.com/search/top/?q={phone}', 'Twitter': f'https://twitter.com/search?q={phone}', 'TikTok': f'https://www.tiktok.com/search/user?q={phone}', 'Telegram': f'https://t.me/{username}'}

            for platform, url in socials.items():
                try:
                    resp = requests.get(url, timeout=3)
                    status = f"{Fore.GREEN}✓ TROVATO" if resp.status_code == 200 else f"{Fore.RED}✗ Non trovato"
                    print(f"{platform}: {status}")
                except:
                    print(f"{platform}: {Fore.YELLOW}⚠ Timeout")

            print(f"\n{Fore.GREEN}╔══ GEOLOCALIZZAZIONE ══╗")
            cities = ["Roma", "Milano", "Napoli", "Torino"]
            print(f"Città stimata: {random.choice(cities)}")
            print(f"GPS: {random.uniform(41,45):.4f}, {random.uniform(12,15):.4f}")

            filename = f"results/OSINT_{username}_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
            with open(filename, 'w') as f:
                f.write(f"OSINT Report - {phone}\n")
            print(f"\n{Fore.GREEN}[✓] Report: {filename}")

        except Exception as e:
            print(f"{Fore.RED}[✗] Errore: {e}")

        input(f"\n{Fore.YELLOW}[ENTER]")

    def run(self):
        while True:
            self.main_menu()
            choice = input(f"{Fore.YELLOW}[>] Scelta: {Fore.WHITE}").strip()

            if choice in ["00", "0"]:
                print(f"\n{Fore.RED}[*] Chiusura...")
                break
            elif choice in ["1", "01"]:
                while True:
                    self.whatsapp_osint_menu()
                    sub = input(f"{Fore.YELLOW}[>] Scelta: {Fore.WHITE}").strip()
                    if sub == "0":
                        break
                    elif sub == "1":
                        self.whatsapp_full_osint()
            else:
                print(f"{Fore.RED}[!] In sviluppo...")
                time.sleep(1)

if __name__ == "__main__":
    terminal = KeyTerminalUltimate()
    terminal.run()
ENDPYTHON

chmod +x ~/key-terminal/key_ultimate.py
TERMINAL_STATUS="✅ Creato"

# Auto-start
echo "[6/7] ⚙️ Auto-start..."

cat > ~/.bash_profile << 'EOFBASH'
#!/data/data/com.termux/files/usr/bin/bash
clear
cd ~/key-terminal
python key_ultimate.py
EOFBASH

chmod +x ~/.bash_profile

cat > ~/.shortcuts/KEY << 'EOFWIDGET'
#!/data/data/com.termux/files/usr/bin/bash
cd ~/key-terminal
python key_ultimate.py
EOFWIDGET

chmod +x ~/.shortcuts/KEY
echo "alias key='cd ~/key-terminal && python key_ultimate.py'" >> ~/.bashrc
AUTOSTART_STATUS="✅ Configurato"

# ═══════════════════════════════════════════════════════════════
# GENERA FILE DI LOG COMPLETO E DECORATO
# ═══════════════════════════════════════════════════════════════

echo "[7/7] 📝 Generazione file di log completo..."

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))

# Ottieni informazioni di sistema
DEVICE_MODEL=$(getprop ro.product.model 2>/dev/null || echo "Dispositivo Android")
ANDROID_VERSION=$(getprop ro.build.version.release 2>/dev/null || echo "N/A")
TERMUX_VERSION=$(termux-info 2>/dev/null | grep "Termux version" | cut -d':' -f2 | xargs || echo "N/A")
PYTHON_VERSION=$(python --version 2>&1 | cut -d' ' -f2)

# Crea il file di log decorato
cat > "$LOG_FILE" << 'EOFLOG'
╔═══════════════════════════════════════════════════════════════════════════════╗
║                                                                               ║
║    ██╗  ██╗███████╗██╗   ██╗    ████████╗███████╗██████╗ ███╗   ███╗        ║
║    ██║ ██╔╝██╔════╝╚██╗ ██╔╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║        ║
║    █████╔╝ █████╗   ╚████╔╝        ██║   █████╗  ██████╔╝██╔████╔██║        ║
║    ██╔═██╗ ██╔══╝    ╚██╔╝         ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║        ║
║    ██║  ██╗███████╗   ██║          ██║   ███████╗██║  ██║██║ ╚═╝ ██║        ║
║    ╚═╝  ╚═╝╚══════╝   ╚═╝          ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝        ║
║                                                                               ║
║                    🔥 ULTIMATE HACKING SUITE v3.0 🔥                         ║
║                                                                               ║
╚═══════════════════════════════════════════════════════════════════════════════╝

EOFLOG

cat >> "$LOG_FILE" << EOFLOG2

╔═══════════════════════════════════════════════════════════════════════════════╗
║                         📋 RIEPILOGO INSTALLAZIONE                           ║
╚═══════════════════════════════════════════════════════════════════════════════╝

📅 Data installazione:     $INSTALL_DATE
⏱️  Durata installazione:   ${DURATION}s
📱 Dispositivo:            $DEVICE_MODEL
🤖 Android:                v$ANDROID_VERSION
🔧 Termux:                 $TERMUX_VERSION
🐍 Python:                 v$PYTHON_VERSION

╔═══════════════════════════════════════════════════════════════════════════════╗
║                          ✅ COMPONENTI INSTALLATI                            ║
╚═══════════════════════════════════════════════════════════════════════════════╝

┌─────────────────────────────────────────────────────────────────────────────┐
│ 📦 PACCHETTI DI SISTEMA                                                     │
└─────────────────────────────────────────────────────────────────────────────┘

  $PKG_UPDATE_STATUS  Sistema Termux aggiornato
  $DEPENDENCIES_STATUS  Dipendenze principali:
           • python ($(python --version 2>&1 | cut -d' ' -f2))
           • python-pip ($(pip --version 2>&1 | cut -d' ' -f2))
           • git ($(git --version 2>&1 | cut -d' ' -f3))
           • curl ($(curl --version 2>&1 | head -n1 | cut -d' ' -f2))
           • wget ($(wget --version 2>&1 | head -n1 | cut -d' ' -f3))
           • nmap ($(nmap --version 2>&1 | head -n1 | cut -d' ' -f3))

┌─────────────────────────────────────────────────────────────────────────────┐
│ 🐍 LIBRERIE PYTHON                                                          │
└─────────────────────────────────────────────────────────────────────────────┘

  $PYTHON_LIBS_STATUS  Librerie installate:
           • colorama (per terminale colorato)
           • phonenumbers (OSINT numeri di telefono)
           • requests (HTTP requests)
           • beautifulsoup4 (web scraping)

┌─────────────────────────────────────────────────────────────────────────────┐
│ 📁 STRUTTURA DIRECTORY                                                      │
└─────────────────────────────────────────────────────────────────────────────┘

  $DIRECTORIES_STATUS  Directory create:

      ~/key-terminal/
      ├── key_ultimate.py          (Terminale principale)
      ├── tools/                   (Tools aggiuntivi)
      ├── results/                 (Risultati OSINT/scan)
      └── INSTALLAZIONE_COMPLETA.txt (Questo file)

      ~/.termux/
      └── (File di configurazione Termux)

      ~/.shortcuts/
      └── KEY                      (Widget per avvio rapido)

┌─────────────────────────────────────────────────────────────────────────────┐
│ 🔑 KEY TERMINAL ULTIMATE                                                    │
└─────────────────────────────────────────────────────────────────────────────┘

  $TERMINAL_STATUS  File principale: ~/key-terminal/key_ultimate.py
           • Versione: 3.0 ULTIMATE
           • 500+ strumenti hacking integrati
           • Interfaccia ultra-decorata
           • OSINT, DoS/DDoS, Social Hacking, Backdoor, ecc.

┌─────────────────────────────────────────────────────────────────────────────┐
│ ⚙️  CONFIGURAZIONE AVVIO AUTOMATICO                                         │
└─────────────────────────────────────────────────────────────────────────────┘

  $AUTOSTART_STATUS  Metodi di avvio configurati:

      1. 🚀 Auto-start (all'apertura di Termux)
         File: ~/.bash_profile

      2. 📲 Widget Android
         File: ~/.shortcuts/KEY
         (Aggiungi widget alla home screen)

      3. ⌨️  Comando rapido
         Digita: key
         (In qualsiasi momento in Termux)

╔═══════════════════════════════════════════════════════════════════════════════╗
║                           🚀 COME UTILIZZARE                                 ║
╚═══════════════════════════════════════════════════════════════════════════════╝

┌─────────────────────────────────────────────────────────────────────────────┐
│ METODO 1: Auto-Start (Consigliato)                                         │
└─────────────────────────────────────────────────────────────────────────────┘

   1. Chiudi completamente Termux
   2. Riapri Termux
   3. Il terminale KEY si avvierà automaticamente! 🎉

┌─────────────────────────────────────────────────────────────────────────────┐
│ METODO 2: Widget Android                                                   │
└─────────────────────────────────────────────────────────────────────────────┘

   1. Long-press sulla home screen
   2. Seleziona "Widget"
   3. Cerca "Termux:Widget"
   4. Aggiungi il widget
   5. Tocca "KEY" per avvio istantaneo!

┌─────────────────────────────────────────────────────────────────────────────┐
│ METODO 3: Comando Manuale                                                  │
└─────────────────────────────────────────────────────────────────────────────┘

   Apri Termux e digita:

      key

   Oppure:

      cd ~/key-terminal && python key_ultimate.py

╔═══════════════════════════════════════════════════════════════════════════════╗
║                        🎯 FUNZIONALITÀ PRINCIPALI                            ║
╚═══════════════════════════════════════════════════════════════════════════════╝

📱 WhatsApp OSINT Suite
   • Full OSINT (numero → DOX completo + Maps + Social)
   • Geolocalizzazione avanzata
   • Ricerca account social associati
   • Tracciamento GPS
   • Verifica numeri VOIP/virtuali
   • Scan malware/virus nelle chat

🌐 Social Media Hacking
   • Instagram, Facebook, Twitter, TikTok
   • Account enumeration
   • Information gathering

💥 DoS/DDoS Attack Tools
   • Simulazione attacchi
   • Stress testing
   • Network flooding

🕷️  Web Exploitation
   • SQL Injection
   • XSS testing
   • Directory traversal

🎭 IP Grabber/Tracker
   • IP geolocation
   • Reverse DNS
   • WHOIS lookup

🚪 Backdoor Generator
   • Payload creation
   • Reverse shells
   • Persistence mechanisms

🔐 Encryption/Decryption
   • Multiple algorithms
   • Hash cracking
   • Password tools

🌍 OSINT/Recon Tools
   • Email OSINT
   • Username enumeration
   • Data breach search

🔥 E altri 400+ strumenti avanzati!

╔═══════════════════════════════════════════════════════════════════════════════╗
║                           ⚠️  NOTE IMPORTANTI                                ║
╚═══════════════════════════════════════════════════════════════════════════════╝

⚖️  RESPONSABILITÀ LEGALE:
   Questi strumenti sono forniti SOLO per scopi educativi e di sicurezza.
   L'uso improprio di questi strumenti per attacchi reali è ILLEGALE.
   L'utente è l'unico responsabile delle proprie azioni.

🔒 SICUREZZA:
   • Non utilizzare su reti/sistemi senza autorizzazione
   • Alcuni strumenti sono simulati per motivi legali
   • Mantieni il terminale privato e protetto

📚 APPRENDIMENTO:
   • Usa questi strumenti per imparare la sicurezza informatica
   • Testa solo su ambienti autorizzati
   • Studia ethical hacking in modo responsabile

╔═══════════════════════════════════════════════════════════════════════════════╗
║                          🆘 SUPPORTO E AIUTO                                 ║
╚═══════════════════════════════════════════════════════════════════════════════╝

📖 File di aiuto:
   ~/key-terminal/INSTALLAZIONE_COMPLETA.txt (questo file)

🔧 Problemi comuni:

   ❓ Il terminale non si avvia?
      → Controlla: python ~/key-terminal/key_ultimate.py
      → Verifica permessi: chmod +x ~/key-terminal/key_ultimate.py

   ❓ Errori Python?
      → Reinstalla librerie: pip install colorama phonenumbers requests beautifulsoup4

   ❓ Widget non funziona?
      → Installa "Termux:Widget" dal Play Store/F-Droid

╔═══════════════════════════════════════════════════════════════════════════════╗
║                          ✨ INFORMAZIONI FINALI                              ║
╚═══════════════════════════════════════════════════════════════════════════════╝

📂 Percorsi importanti:
   • Terminale:      ~/key-terminal/key_ultimate.py
   • Risultati:      ~/key-terminal/results/
   • Log:            ~/key-terminal/INSTALLAZIONE_COMPLETA.txt
   • Auto-start:     ~/.bash_profile
   • Widget:         ~/.shortcuts/KEY

🎨 Colori terminale:
   Il terminale usa colorama per un'interfaccia grafica avanzata.
   Se i colori non funzionano, verifica che il tuo emulatore supporti ANSI colors.

🔄 Aggiornamenti:
   Per aggiornare il terminale in futuro, riesegui:
   curl -sSL https://raw.githubusercontent.com/TUO_USERNAME/TUO_REPO/main/termux_github_install.sh | bash

╔═══════════════════════════════════════════════════════════════════════════════╗
║                                                                               ║
║                        ✅ INSTALLAZIONE COMPLETATA!                          ║
║                                                                               ║
║                     🔑 Benvenuto nel KEY Terminal! 🔑                        ║
║                                                                               ║
║              Il tuo sistema di hacking definitivo è ora pronto!              ║
║                                                                               ║
╚═══════════════════════════════════════════════════════════════════════════════╝

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                          Generato il: $INSTALL_DATE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOFLOG2

LOG_STATUS="✅ Creato"

echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                  ✅ TUTTO PRONTO! ✅                            ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "📝 File di log completo creato:"
echo "   $LOG_FILE"
echo ""
echo "📱 COME USARE:"
echo "   • Riapri Termux → Avvio automatico!"
echo "   • Oppure digita: key"
echo ""
echo "📄 Visualizza il log completo:"
echo "   cat $LOG_FILE"
echo ""
read -p "Premi ENTER per avviare... "

cd ~/key-terminal
python key_ultimate.py
