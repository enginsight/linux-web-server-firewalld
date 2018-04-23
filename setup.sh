    #
#   # #   Enginsight GmbH
# # # #   Geschäftsführer: Mario Jandeck, Eric Range
# #   #   Hans-Knöll-Straße 6, 07745 Jena
  #   

/usr/bin/apt-get install firewalld -y

/bin/systemctl enabled firewalld
/bin/systemctl start firewalld

/usr/bin/firewall-cmd --zone=public --add-service=ssh
/usr/bin/firewall-cmd --zone=public --permanent --add-service=ssh

/usr/bin/firewall-cmd --zone=public --add-service=http
/usr/bin/firewall-cmd --zone=public --permanent --add-service=http

/usr/bin/firewall-cmd --zone=public --add-service=https
/usr/bin/firewall-cmd --zone=public --permanent --add-service=https

/usr/bin/firewall-cmd --reload
