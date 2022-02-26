FROM gitpod/workspace-full

RUN sudo apt update \
    && sudo apt upgrade -y \
    && sudo apt install docker.io \
    && sudo groupadd docker \
    && sudo usermod -aG docker gitpod \
    && newgrp docker \ 
    && docker images \
    && sudo reboot
