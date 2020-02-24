new_user=$1
sudo useradd -m -d /home/$new_user -s /bin/bash $new_user
sudo mkdir /home/$new_user/.ssh
sudo cp /home/joe/Tech-Journal/SYS265/linux/public-keys/id_rsa.pub /home/$new_user/.ssh/authorized_keys
sudo chmod 700 /home/$new_user/.ssh
sudo chmod 600 /home/$new_user/.ssh/authorized_keys
sudo chown -R $new_user:$new_user /home/$new_user/.ssh
