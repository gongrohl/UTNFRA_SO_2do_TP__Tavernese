#!/bin/bash

cd UTN-FRA_SO_Examenes/202406/docker

cat <<EOF > Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EOF

sudo docker build -t gongrohl/web1-tavernese .
sudo docker login -u gongrohl
sudo docker push gongrohl/web1-tavernese

CAT <<EOF > run.sh
sudo docker run -d -p 8080:80 gongrohl/web1-tavernese
EOF
chmod +x run.sh
