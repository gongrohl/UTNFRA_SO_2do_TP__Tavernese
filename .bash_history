cd
pwd
ls -la
vim .bashrc 
"source $HOME/.bashrc"
source $HOME/.bashrc
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc && history -a
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
pwd
cat 
vagrant halt
exit
cd
ls
source ~/.bashrc
lsblk -f
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT
fdisk /dev/sdc
sudo fdisk /dev/sdc
su -
exit
su tavernese
exit
cd
ls
cd RTA_Examen_20260618/
ls
cat Punto_A.sh
nano Punto_A.sh
cat Punto_A.sh
nano Punto_A.sh
ls
cd ..
cd
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd bash_script/
ls
sudo nano /usr/local/bin/taverneseAltaUser-Groups.sh
sudo su
su -i
su -
sudo nano /usr/local/bin/taverneseAltaUser-Groups.sh
sudo -
su -
sudo nano /usr/local/bin/taverneseAltaUser-Groups.sh
exit
sudo nano /usr/local/bin/taverneseAltaUser-Groups.sh
ls
sudo ls
cd
pwd
ls
cd RTA_Examen_20260618/
ls
cd ..
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
sudo nano /usr/local/bin/taverneseAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/taverneseAltaUser-Groups.sh
/usr/local/bin/taverneseAltaUser-Groups.sh vagrant /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd bash_script/
ls
/usr/local/bin/taverneseAltaUser-Groups.sh vagrant /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
1234
ls
pwd
exit
cd
ls
cd RTA_Examen_20260618/
ls
cat Punto_B.sh
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cat bash_script
cd bash_script/
ls
cat Lista_Usuarios.txt 
sudo /usr/local/bin/tu-apellidoAltaUser-Groups.sh vagrant /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo /usr/local/bin/taverneseAltaUser-Groups.sh vagrant /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo /usr/local/bin/taverneseAltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /usr/local/bin/taverneseAltaUser-Groups.sh
cat /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
exit
cat /usr/local/bin/taverneseAltaUser-Groups.sh
sudo nano /usr/local/bin/taverneseAltaUser-Groups.sh
getent passwd | grep 2P_
getent group | grep 2P_
sudo /usr/local/bin/taverneseAltaUser-Groups.sh vagrant /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo /usr/local/bin/taverneseAltaUser-Groups.sh vagrant ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo nano /usr/local/bin/taverneseAltaUser-Groups.sh
cd
ls
cd RTA_Examen_20260618/
ls
sudo nano /usr/local/bin/taverneseAltaUser-Groups.sh
cp /usr/local/bin/taverneseAltaUser-Groups.sh ~/RTA_EXAMEN_20260618
ls
cp /usr/local/bin/taverneseAltaUser-Groups.sh .
ls
cd
ls
rm RTA_EXAMEN_20260618
ls
cd RTA_Examen_20260618
ls
sudo apt-get update
docker --version
# Add Docker's official GPG key:
sudo apt update
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg
docker --version
sudo apt install docker.io
docker --version
sudo apt-get install -y ca-certificates curl gnupg
cd
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker/
ls
cat index.html
nano index.html
cat <<EOF > Dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EOF

ls
rm nombre_del_archivo
rm Dockerfile 
ls
cat <<EOF > Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EOF

docker build -t gongrohl/web1-Tavernese
docker build -t gongrohl/web1-tavernese
docker build -t gongrohl/web1tavernese
docker build --help
docker build -t gongrohl/web1tavernese .
sudo docker build -t gongrohl/web1tavernese .
docker login -u gongrohl
docker push gongrohl/web1tavernese:latest
sudo docker push gongrohl/web1tavernese:latest
sudo docker login -u gongrohl
sudo docker tag gongrohl/web1tavernese gongrohl/web1-tavernese
sudo docker push gongrohl/web1-tavernese
cat <<EOF > run.sh
#!/bin/bash
sudo docker run -d -p 8080:80 gongrohl/web1-tavernese
EOF

chmod +x run.sh
cd
ls
cd RTA_Examen_20260618/
ls
cat Punto_C.sh 
cat Punto_A.sh 
nano Punto_C.sh 
ls
cat Punto_C.sh 
cd
cd UTN-FRA_SO_Examenes/202406/ansible/
ls
ansible --version
ls -l
cd roles/
ls -l
ls
cd 2do_parcial/
ls
cd tasks/
ls
cat main.yml 
nano main.yml 
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd ansible/
cd roles/
cd 2do_parcial/
cd tasks/
ls
mkdir -p templates
ls
cat <<EOF > templates/datos_alumno.j2
Nombre: Gonzalo Apellido: Tavernese
Division: 116
EOF

cat <<EOF > templates/datos_equipo.j2
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_distribution }}
Cantidad de Cores: {{ ansible_processor_vcpus }}
EOF

nano main.yml 
cat main.yml 
cd
ls
cd RTA_Examen_20260618/
ls
cat Punto_D.sh 
nano Punto_D.sh
nano Punto_A.sh
nano Punto_D.sh
nano Punto_B.sh
nano Punto_C.sh 
nano Punto_A.sh
nano Punto_B.sh
nano Punto_A.sh
nano Punto_C.sh 
nano Punto_D.sh
nano Punto_B.sh
nano Punto_A.sh
nano Punto_C.sh 
git config --global user.name "gongrohl"
git config --global user.email "tavernesegonzalo@gmail.com"
# Cambiar por tus datos reales (si usás GitHub):
ls
cd
cd ~
git clone https://github.com/gongrohl/UTNFRA_SO_2do_TP__Tavernese.git
cd UTNFRA_SO_2do_TP_Tavernese
ls
cd UTNFRA_SO_2do_TP__Tavernese
ls -la
mv ~/UTN-FRA_SO_Examenes/202406 
mv ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_TP__Tavernese
ls
mv ~/RTA_Examen_20260618/ ~/UTNFRA_SO_2do_TP__Tavernese
ls
history -a
$HOME/.bash_history
sudo $HOME/.bash_history
