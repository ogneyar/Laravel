@echo off

echo =========================================
echo Load dump database
echo =========================================

rem выгрузка данных из dump'а в prizmarket

mysqldump --host=us-cdbr-iron-east-04.cleardb.net --password=4357ceaa -u b8ab2094331a86 --default-character-set=latin1 heroku_499abe714787b13 < dump\dump_scheme.sql

mysqldump --host=us-cdbr-iron-east-04.cleardb.net --password=4357ceaa -u b8ab2094331a86 --default-character-set=latin1 heroku_499abe714787b13 < dump\dump_data.sql

echo =========================================
echo COMPLITE
echo =========================================

@pause