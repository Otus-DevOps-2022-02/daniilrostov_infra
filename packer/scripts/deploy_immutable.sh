#!/bin/bash
sudo apt -y install git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

echo -e "[Unit] \n
Description=Puma service \n
After=network.target \n
\n
[Service] \n
ExecStart=/usr/local/bin/puma -d \n
ExecReload=/bin/kill -HUP $MAINPID \n
KillMode=process \n
Restart=on-failure \n
RestartPreventExitStatus=255 \n
Type=notify \n
\n
[Install] \n
WantedBy=multi-user.target \n
" > /etc/systemd/system/puma.service

systemctl enable puma.service
