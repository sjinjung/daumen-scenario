@echo off
chcp 65001 >nul

start "" /d "Baseline" cmd /k sumo -c daumen.sumocfg
start "" /d "B26" cmd /k sumo -c daumen_B26.sumocfg
start "" /d "B42" cmd /k sumo -c daumen_B42.sumocfg
start "" /d "A672" cmd /k sumo -c daumen_A672.sumocfg

echo 실행 명령이 모두 내려졌습니다.
pause