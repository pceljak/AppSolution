@ECHO OFF 

SET current_dir=%~dp0

SET script_name=TaskSchedulerJobScript.sql 

SET sqlscript_path=%current_dir%%script_name%

echo %sqlscript_path%

SET server_name=CEKI\SQLEXPRESS

SET db_name=LoggingDB 

SET username=sys_admin

SET pwd=1234

SQLCMD -U %username% -S %server_name% -d %db_name% -P %pwd% -i %sqlscript_path% 

PAUSE 

CLS 

EXIT