#!/bin/sh
/home/wls/base_domain/startWebLogic.sh &
export CLASSPATH=/home/wls/wlserver/server/lib/weblogic.jar
status="0"
ServerState="NOT_RUNNING"
while [ $status -lt 1 ]
do
ServerState=$(java weblogic.Admin -url 127.0.0.1:7001 -username wls -password weblogic@2016 GET -pretty -type ServerRuntime -property State |grep -i State |awk '{print $2}')
if [ "$ServerState" == "RUNNING" ] ; then
status=1
sed -i 's/\r//' ./home/DSEnv.sh
bash ./DSEnv.sh
java weblogic.Deployer -adminurl t3://127.0.0.1:7001 -username wls -password weblogic@2016 -deploy -name InstallationComponent -source /home/InstallationComponent.ear
fi
done