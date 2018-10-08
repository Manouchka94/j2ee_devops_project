# Install Postgresql 9.3 on CentOS 7 
# Source : https://www.postgresql.org/download/linux/redhat/

yum install https://download.postgresql.org/pub/repos/yum/9.3/redhat/rhel-7-x86_64/pgdg-centos93-9.3-3.noarch.rpm
yum install -y postgresql93
yum install -y postgresql93-server
/usr/pgsql-9.3/bin/postgresql93-setup initdb
systemctl enable postgresql-9.3
systemctl start postgresql-9.3

# Service alternative to restart postgresql-9.3 server
service postgresql-9.3 restart

# Configure remote access to postgresql

# Edit file 
sudo vi /var/lib/pgsql/9.3/data/postgresql.conf

# Replace listen_addresses with
listen_addresses = '*'

# Edit file
sudo vi /var/lib/pgsql/9.3/data/pg_hba.conf

# Add this line
host all all all md5

# Restart Postgresql
sudo service postgresql-9.3 restart

# Configure firewall
sudo firewall-cmd --get-active-zones
sudo firewall-cmd --zone=public --add-port=5432/tcp --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --permanent --zone=public --list-all