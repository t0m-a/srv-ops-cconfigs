service:default/folder/
cloud:/path/to/folder/
mysqldump --defaults-extra-file=/root/.my.cnf --all-databases > dump-$( date -I).sql
tar -zcvf $( date -I)-dump.tar.gz dump-$( date -I).sql
