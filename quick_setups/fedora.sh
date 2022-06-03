## Essential user setup

### VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install code


### Brave Browser 
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser


### Touchegg
sudo dnf copr enable jose_exposito/touchegg
sudo dnf install touchegg

PACKAGES = """
fd-find lutris steam steam-devices onedrive python3-pip python3-setuptools python3-wheel ncdu rkhunter 
net-tools dnsutils dnsenum traceroute hping3 iftop htop virt-top 
smbios-utils vdpauinfo libva-vdpau-driver libva-utils keepassxc kleopatra yubikey-manager 
golang nmap restic geary libguestfs-tools p7zip setroubleshoot podman podman-compose
"""

sudo dnf install $PACKAGES