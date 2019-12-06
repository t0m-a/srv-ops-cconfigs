# SQL Databases Backups Checking Environment
#
# Import SQL backup
mysql -u root -p newdb < /var/lib/mysql/dump-*.sql
# Enter Server and Use DB
mysql -u root -p newdb
> show databases;
> use $database_name;
> select * from wp1_posts
#
# Verify for data in tables
# Check the dump file 
head -n 5 dumpfile
tail -n 5 dumpfile

root:root
user:user
