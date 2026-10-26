# kyurrhic/linux-chromeos
Two scripts to streamline using Chromium OS for Linux (aka linux-chromeos).
Documents by the Chromium Project at (url)

In a nutshell, this is a development tool made by the Chromium Project that takes Chromium for Linux and adds ChromiumOS specific features such as the desktop environment, login manager, etc. It is important for many workflows where ChromeOS virtual machines are blocked but you are required to run software that explicitly require you to run a ChromeOS system.

By default, this launches as an X11 based window in your current session, I have had success installing openbox and launching it in tty2, and making keyboard shortcuts start this up

<b>One liner installation:</b>
```bash
cd ~/Documents; git clone https://github.com/kyurrhic/linux-chromeos; chmod +x *.sh && ./install.sh && ./start.sh
```

<b>For subsequent runs:</b>
```bash
cd ~/Documents/linux-chromeos; ./start.sh
```

This requires you to be running an x86-64/amd64 Linux system with Chromium dependencies. The easiest way to install these dependencies is to install a Chromium-based browser (like Chromium, Ungoogled, Chrome, Brave, etc.), although in the future I'll add a list of dependencies