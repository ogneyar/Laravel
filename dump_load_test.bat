@echo off

echo =========================================
echo Load dump database
echo =========================================

rem выгрузка данных из dump'а в localhost

mysqldump -uroot -h127.0.0.1 -p test < dump\test_dump.sql --default-character-set=latin1

rem mysqldump --host=127.0.0.1 --password= -u root --default-character-set=latin1 test dump\naheroku_dump_data.sql

echo =========================================
echo COMPLITE
echo =========================================

@pause