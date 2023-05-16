#!/bin/bash 
# BahiaRT 2021 start individual agent

host="localhost"
port=3100
agent=1
trainingMode="none"
log1="/dev/null"
log2="${log1}"

WAITTIME=1.0

# verifica o numero total de argumentos passados é maior que 0 ou 1.
# $# = numero de argumentos
# -gt = is greater than
if [ $# -gt 0 ]; then
	agent="${1}"  
fi
if [ $# -gt 1 ]; then
	host="${2}"  
fi
if [ $# -gt 2 ]; then
	port="${3}"  
fi
if [ $# -gt 3 ]; then
	trainingMode="${4}"  
fi
if [ $# -gt 4 ]; then
	log1="${5}/log${1}"
	log2="${5}/log${1}-err"  
fi
if [ $# -gt 5 ]; then
	echo "Default Parameters Usage: $0 <Agent Number>"	
	echo "Custom Parameters Usage: $0 <Agent Number> <Server IP> <Server Port> <Training Mode> <logFile>"
	echo "Training modes : kick, decisionKick, decisionActive"
	exit 1
fi

echo ${log}
echo "Launching " ${agent}
case $agent in
	1|2|3|6|7|8|10)
		./bahiart -robot naotoe.xml -u ${agent} -h ${host} -p ${port} -training ${trainingMode}>"${log1}" 2>"${log2}" &	
	;;
	4|5)
		./bahiart -robot nao2.xml -u ${agent} -h ${host} -p ${port} -training ${trainingMode}>"${log1}" 2>"${log2}" &
	;;
	9|11)
		./bahiart -u ${agent} -h ${host} -p ${port} -training ${trainingMode}>"${log1}" 2>"${log2}" &
esac

