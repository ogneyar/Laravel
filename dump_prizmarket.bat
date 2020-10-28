@echo off

echo =========================================
echo SQL generator
echo Output files :
echo pzm_dump_scheme.sql - Scheme of database
echo pzm_dump_data.sql - Data for database
echo =========================================

rem latin1 нормально передаёт латиницу
rem set ENCODING=utf8
rem set ENCODING=cp1251
set ENCODING=latin1

mkdir dump

rem это dump базы prizmarket

echo Generating scheme for DB: heroku_2c1ffd3166781bf
mysqldump --host=us-cdbr-iron-east-04.cleardb.net --password=4357ceaa -u b8ab2094331a86 --disable-keys --add-drop-table --default-character-set=%ENCODING% --no-data --result-file=dump\prizmarket_dump_scheme.sql heroku_499abe714787b13

echo Generating data for DB: heroku_2c1ffd3166781bf
mysqldump --host=us-cdbr-iron-east-04.cleardb.net --password=4357ceaa -u b8ab2094331a86 --disable-keys --default-character-set=%ENCODING% --no-create-info --extended-insert=false --result-file=dump\prizmarket_dump_data.sql heroku_499abe714787b13
goto END

echo =================================================
echo ======этопростотексткоторыйневыводится===========
echo =================================================

:END
echo =========================================

@pause