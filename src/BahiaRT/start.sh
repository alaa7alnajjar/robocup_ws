#!/bin/bash 
# BahiaRT 2020 binary

host="localhost"
port=3100
trainingMode="none"

WAITTIME=0.0

# verifica o numero total de argumentos passados é maior que 0 ou 1.
# $# = numero de argumentos
# -gt = is greater than
if [ $# -gt 0 ]; then
	host="${1}"  
fi
if [ $# -gt 1 ]; then
	port="${2}"  
fi
if [ $# -gt 2 ]; then
	trainingMode="${3}"  
fi
if [ $# -gt 3 ]; then
	echo "Default Parameters Usage: $0"	
	echo "Custom Parameters Usage: $0 <Server IP> <Server Port> <Training Mode>"
	exit 1
fi

echo "Launch 1"
./bahiart -robot naotoe.xml -u 1 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 2"
./bahiart -robot naotoe.xml -u 2 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 3"
./bahiart -u 3 -h $1>/dev/null 2>&1 &
./bahiart -robot naotoe.xml -u 3 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 4"
./bahiart -robot nao2.xml -u 4 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 5"
./bahiart -robot nao2.xml -u 5 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 6"
./bahiart -robot naotoe.xml -u 6 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 7"
./bahiart -robot naotoe.xml -u 7 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 8"
./bahiart -robot naotoe.xml -u 8 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 9"
./bahiart -u 9 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 10"
./bahiart -robot naotoe.xml -u 10 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
sleep ${WAITTIME}
echo "Launch 11"
./bahiart -u 11 -h ${host} -p ${port} -training ${trainingMode}>/dev/null 2>&1 &
