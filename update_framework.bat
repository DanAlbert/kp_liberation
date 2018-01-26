set MISSION_SUFFIX=_ww2
set MAP=Altis
set FRAMEWORK_SRC=Missionframework
set FRAMEWORK_DST=Missionbasefiles\kp_liberation%MISSION_SUFFIX%.%MAP%\
robocopy /s %FRAMEWORK_SRC% %FRAMEWORK_DST%
