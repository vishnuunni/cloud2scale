#!/bin/bash
useradd vishnu
mkdir -p /home/vishnu/.ssh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC65ZbK071HS3yTfbPAicPR3vbtHkp0geDZhk8pBUIUDOZA5spPN+B/+lWnqGiyorzi0rb8EN+FhFYRf11i9Ur925YcyE+vb/JVB1dH4N+fPyDcGvMmoITAXq3TwN8Mggk/T/7abcovTVfRU21OcGHVv9YNflgqlTyQXx507/mGwwKQduDfrS4/Nf1VL3YVHXqECx3ZNz9cAQkoDl++DJBdtC/lAeYvkgmvaThE8aHp8/QX9EaUE5GwULcQWxwjpS2U5L4Hn3diD8iCoIHzonWQdfFBj8bmyGmv1PBwX5rFW492dnkUQdc6H4sVZx9AmmR4DxhtKBZvLcOFiyX8+Hzn vishnu.u@cloud2scale.com" >> /home/vishnu/.ssh/authorized_keys

chown -R vishnu:vishnu /home/vishnu/
chmod -R 700 /home/vishnu/.ssh
echo "vishnu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vishnu_sudo
chmod 440 /etc/sudoers.d/vishnu_sudo
