# kyurrhic/linux-chromeos
Two scripts to streamline using Chromium OS for Linux (aka linux-chromeos).
Documents by the Chromium Project at (url)

In a nutshell, this is a development tool made by the Chromium Project that takes Chromium for Linux and adds ChromiumOS specific features such as the desktop environment, login manager, etc. It is important for many workflows where ChromeOS virtual machines are blocked but you are required to run software that explicitly require you to run a ChromeOS system.

By default, this launches as an X11 based window in your current session, I have had success installing openbox and launching it in tty2, and making keyboard shortcuts start this up

Please note that you may have to install dependencies first!
<b>One liner installation:</b>
```bash
cd ~/Documents; git clone https://github.com/kyurrhic/linux-chromeos && cd linux-chromeos; chmod +x *.sh && ./install.sh && ./start.sh
```

<b>For subsequent runs:</b>
```bash
cd ~/Documents/linux-chromeos; ./start.sh
```

This requires you to be running an x86-64/amd64 Linux system with Chromium dependencies. The easiest way to install these dependencies is to install a Chromium-based browser (like Chromium, Ungoogled, Chrome, Brave, etc.), although below I have worked on manual dependency installation.

## Dependencies
You may have to adapt the command depending on your system setup. I've only tested on a Debian 13 system.

<b>Ubuntu 24.04+ / Debian 13+</b>
```bash
sudo apt update && sudo apt install -y git curl unzip ca-certificates fonts-freefont-ttf fonts-ipafont-gothic fonts-liberation fonts-noto-color-emoji fonts-wqy-zenhei libasound2t64 libatk-bridge2.0-0t64 libatk1.0-0t64 libatspi2.0-0t64 libc6 libcairo2 libcups2t64 libdav1d7 libdbus-1-3 libdouble-conversion3 libdrm2 libexpat1 libflac14 libfontconfig1 libfreetype6 libgbm1 libgcc-s1 libglib2.0-0t64 libgtk-3-0t64 libharfbuzz-subset0 libharfbuzz0b libjpeg62-turbo liblcms2-2 libminizip1t64 libnspr4 libnss3 libopenh264-8 libopenjp2-7 libopus0 libpango-1.0-0 libpangocairo-1.0-0 libpulse0 libudev1 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxkbcommon0 libxnvctrl0 libxrandr2 libxrender1 libxshmfence1 libxss1 libxtst6 libzstd1 xdg-desktop-portal-gtk xdg-utils zlib1g
```
Future dependency installers for Debian 12 and Ubuntu 22.04, alongside Fedora and Arch is planned 
<!-- b>Ubuntu 22.04 / Debian 12-</b> (untested)
```bash
sudo apt-get update && sudo apt-get install -y git curl unzip ca-certificates fonts-freefont-ttf fonts-ipafont-gothic fonts-liberation fonts-noto-color-emoji fonts-wqy-zenhei libasound2 libatk-bridge2.0-0 libatk1.0-0 libcairo2 libcups2 libdbus-1-3 libdrm2 libexpat1 libfontconfig1 libgbm1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxkbcommon0 libxrandr2 libxrender1 libxshmfence1 libxss1 libxtst6 xdg-utils
``` -->
