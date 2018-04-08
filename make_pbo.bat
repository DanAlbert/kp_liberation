set MISSION_SUFFIX=_ww2
set MAP=Altis
set FRAMEWORK_DST=Missionbasefiles\kp_liberation%MISSION_SUFFIX%.%MAP%\
git clean -df %FRAMEWORK_DST%
call update_framework.bat
cpbo.exe -y -p %FRAMEWORK_DST% IronFrontLiberation.Altis.pbo
