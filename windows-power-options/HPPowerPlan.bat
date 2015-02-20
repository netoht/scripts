@echo off

for /f "tokens=2 delims=:( skip=2" %%G in ('powercfg -list') do (
	powercfg -setactive %%G
	goto :continue
)

:continue

set MYGUID=A6319DFD-EEF4-4644-9D74-9724744F1971
powercfg -delete %MYGUID%
powercfg -import C:\HPPowerPlan.pow %MYGUID%
powercfg -setactive %MYGUID%
powercfg /changename %MYGUID% "WRS - High performance"

powercfg /hibernate off
powercfg -change -monitor-timeout-ac 20
powercfg -change -monitor-timeout-dc 20
powercfg -change -disk-timeout-ac 0
powercfg -change -disk-timeout-dc 0
powercfg -change -standby-timeout-ac 0
powercfg -change -standby-timeout-dc 0
powercfg -change -hibernate-timeout-ac 0
powercfg -change -hibernate-timeout-dc 0