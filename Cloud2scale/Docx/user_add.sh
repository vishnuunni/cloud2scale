#!/bin/bash
useradd c2s
mkdir -p /home/c2s/.ssh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAuS+vA4VWzwZsIAjwZhUIXrVRAL9M+Scl/5oDvO3OIvEL0eeto4vBhhnQq4pq1xdXIa6u/2hwXgnqQebaZ7Y41HEi+uiKsl9KPU1twaOgRQMC6CjV22+4mnTKK6Jr6VV/iFyMGOsMAg0WEbNXeDwJUcQl55y6Uh/14qHyGV8R5Dn8CgD6Kq03suyRLbmHUdkrtrdSpHUCaW345sXD40meHAn4YQWccV9rS3PirbIF5FLa/dse1VvfC2aHyAoth5XY8T8Mmm+xpTZjGo+Afq6f8ZBZ/q7bRZ4Ab/o1rZXee6edCpzHYIkejnhwpW1TRm3Bckmts6+xfui4JxSahHjH2w== root@ip-10-138-47-80 " >> /home/c2s/.ssh/authorized_keys

chown -R c2s:c2s /home/c2s/
chmod -R 700 /home/c2s/.ssh
echo "c2s ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/c2s_sudo
chmod 440 /etc/sudoers.d/c2s_sudo

