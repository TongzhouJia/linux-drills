rpm -q flatpak || dnf install -y flatpak
flatpak --version
ping -c2 flathub.org    
flatpak remote-add --if-not-exists --system flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remotes
flatpak remotes --show-details
flatpak search gimp
flatpak install -y --system flathub org.gimp.GIMP
flatpak list
flatpak uninstall --unused -y
flatpak list --runtime
