    #
#   # #   Enginsight GmbH
# # # #   Geschäftsführer: Mario Jandeck, Eric Range
# #   #   Hans-Knöll-Straße 6, 07745 Jena
  #   

apt-get install firewalld -y

systemctl enabled firewalld
systemctl start firewalld

firewall-cmd --zone=public --add-service=ssh
firewall-cmd --zone=public --permanent --add-service=ssh

firewall-cmd --zone=public --add-service=http
firewall-cmd --zone=public --permanent --add-service=http

firewall-cmd --zone=public --add-service=https
firewall-cmd --zone=public --permanent --add-service=https

firewall-cmd --reload
