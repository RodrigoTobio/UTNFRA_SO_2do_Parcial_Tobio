clear
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
clear
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo wipefs -a /dev/sdc1
sudo wipefs -a /dev/sdd1
sudo pvcreate /dev/sdc1 /dev/sdd1
sudo pvs
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo pvs
sudo mkdir -p /var/lib/docker
sudo ls -l /var/lib/
sudo mkdir -p /work
sudo ls -l /
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo lsblk -f
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
df -h
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
free -h
echo '/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/mapper/vg_datos-lv_workareas /work ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/mapper/vg_temp-lv_swap none swap sw 0 0' | sudo tee -a /etc/fstab
sudo systemctl restart docker
clear
sudo touch /usr/local/bin/tobioAltaUser-Groups.sh
sudo vim /usr/local/bin/tobioAltaUser-Groups.sh
sudo chmod 755 /usr/local/bin/tobioAltaUser-Groups.sh
sudo /usr/local/bin/tobioAltaUser-Groups.sh rodrigo /home/rodrigo/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /etc/passwd
clear
sudo apt update
sudo apt install net-tools
sudo netstat -putona | grep ":80"
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
clear
sudo usermod -a -G docker $(whoami)
grep docker /etc/group
ls -l
cd /UTN-FRA_SO_Examenes/202406/docker
cd UTN-FRA_SO_Examenes/202406/docker
ls
vim index.html
sudo systemctl status docker
sudo docker ps
docker login -u rodrigotobio
touch Dockerfile
vim Dockerfile
sudo docker build -t web1-tobio .
df -h
sudo systemctl stop docker
sudo mkdir -p /mnt/temp_docker_storage
sudo chmod 755 /mnt/temp_docker_storage
sudo vim /etc/docker/daemon.json
sudo systemctl start docker
docker info | grep "Docker Root Dir"
sudo docker info | grep "Docker Root Dir"
docker build -t web1-tobio .
sudo docker build -t web1-tobio .
sudo docker tag web1-tobio rodrigotobio/web1-tobio
sudo docker images
sudo docker push rodrigotobio/web1-tobio
docker build -t rodrigotobio/web1:latest .
sudo docker build -t rodrigotobio/web1:latest .
sudo docker image list
sudo docker push rodrigotobio/web1-tobio 
sudo docker push rodrigotobio/web1 
ls -l /mnt/temp_docker_storage/
sudo ls -l /mnt/temp_docker_storage/
sudo ls -l /mnt
sudo chmod 755 /mnt/
sudo ls -l /mnt
sudo ls -l /mnt/temp_docker_storage/
sudo ls -l /mnt
sudo chmod -R 755 /mnt/temp_docker_storage
sudo ls -l /mnt
sudo docker images
sudo docker push rodrigotobio/web1-tobio
cd UTN-FRA_SO_Examenes/202406/docker/
ls
docker login -u rodrigotobio
clear
sudo docker images
sudo docker push rodrigotobio/web1-tobio
docker login -u rodrigotobio
sudo docker images
sudo docker push rodrigotobio/web1-tobio
sudo docker info | grep Username
docker login -u rodrigotobio
sudo docker info | grep Username
sudo docker login -u rodrigotobio
sudo docker info | grep Username
clear
sudo docker images
sudo docker push rodrigotobio/web1-tobio
touch run.sh
vim run.sh
sudo chmod 755 run.sh
./run.sh
clear
cd ..
ls
cd ansible/
ls -la
cd roles
ls
cd 2do_parcial/
ls
cd ..
sudo mkdir templates
sudo touch templates/datos_alumno.txt.j2
sudo touch templates/datos_equipo.txt.j2
vim roles/2do_parcial/vars/main.yml
cat roles/2do_parcial/vars/main.yml
sudo vim templates/datos_alumno.txt.j2
sudo cat templates/datos_alumno.txt.j2
sudo vim templates/datos_equipo.txt.j2
sudo cat templates/datos_equipo.txt.j2
sudo mv templates/ roles/2do_parcial/
sudo docker login
cd roles/2do_parcial/
ls
sudo vim tasks/main.yml
cd ..
ls
sudo vim playbook.yml
sudo cat playbook.yml
ansible-playbook -i inventory playbook.yml
sudo apt install ansible
ansible-playbook -i inventory playbook.yml
ls -l /tmp/2do_parcial/alumno
cat /tmp/2do_parcial/alumno/datos_alumno.txt
ls -l /tmp/2do_parcial/equipo
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo grep "^%2PSupervisores" /etc/sudoers
clear
cd ..
cd..
cd ..
clear
ls -l /home/rodrigo/UTN-FRA_SO_Examenes/202406/
cp -r /home/rodrigo/UTN-FRA_SO_Examenes/202406/ ./202406
ls
rm -rf 202406
ls
git clone git@github.com:RodrigoTobio/UTNFRA_SO_2do_Parcial_Tobio.git
sudo git clone git@github.com:RodrigoTobio/UTNFRA_SO_2do_Parcial_Tobio.git
clear
ssh-keygen -t ed25519
cat $HOME/.ssh/*.pub
git clone git@github.com:RodrigoTobio/UTNFRA_SO_2do_Parcial_Tobio.git
clear
ls
cd UTNFRA_SO_2do_Parcial_Tobio/
ls
cp -r /home/rodrigo/UTN-FRA_SO_Examenes/202406/ ./202406
ls
tree -a
sudo apt install tree
clear
tree -a
clear
ls -l /home/rodrigo
cp -r /home/rodrigo/RTA_Examen_20241117/ ./RTA_Examen_20241117
tree
clear
ll
history -a
