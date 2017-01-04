yum update -y
#add yum repositories
yum install -y https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-3.noarch.rpm
yum install -y postgresql95-server postgresql95-contrib
#initiate database
/usr/pgsql-9.5/bin/postgresql95-setup initdb
#enable service postgresql
systemctl enable postgresql-9.5.service
systemctl start postgresql-9.5.service
systemctl status postgresql-9.5.service
#install repo dan pglogical
yum install -y http://packages.2ndquadrant.com/pglogical/yum-repo-rpms/pglogical-rhel-1.0-2.noarch.rpm
yum install -y postgresql95-pglogical
