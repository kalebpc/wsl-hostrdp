# WSL-Remote-Desktop

# Using Remote Desktop Connection for Windows 10 to have GUI for wsl Ubuntu

# More in depth info

https://github.com/davidbombal/wsl2/blob/main/ubuntu_gui_youtube

https://www.youtube.com/watch?v=IL7Jd9rjgrM

# Here are the Install Steps

1. Open Ubuntu from start menu in Windows.

~$ sudo apt-get install git

~$ git clone https://github.com/kalebpc/WSL-Remote-Desktop.git

~$ cp WSL-Remote-Desktop/install.sh install-wsl-remote-desktop.sh

~$ sudo sh install-wsl-remote-desktop.sh

~$ sudo ./startxrdp.sh

4. Back in Windows >
- Open Remote Destop Connection
- Computer > localhost:3390
- Login credentials are your Ubuntu credentials
