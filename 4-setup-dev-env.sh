echo -ne "
                Configuring dev environment
"
yay -S install wget
mkdir -p /home/$USERNAME/Applications
cd /home/$USERNAME/Applications/ && wget https://github.com/suciptoid/postman-appimage/releases/download/continous/Postman-8.11.1-x86_64.AppImage
cd /home/$USERNAME/Applications/ && mv Postman-8.11.1-x86_64.AppImage Postman && chmod +x Postman  
yay -S --noconfirm --needed docker
sudo usermod -aG docker $USER
newgrp docker

yay -S visual-studio-code-bin

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash