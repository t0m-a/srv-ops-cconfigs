docker run --name sqlsrv -v /root/datadb:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=newdb -e MYSQL_USER=user \
-e MYSQL_PASSWORD=user -d sqlbackupcheckenv
