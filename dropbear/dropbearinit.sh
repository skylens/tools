#!/bin/bash
set -e

_checkrunning(){
    PID=`ps -ef | grep -v grep | grep -i "dropbeard" | awk '{print $2}'`
    if [ ! -z ${PTD} ]; then
	    STAT=0
    else
	    STAT=1
    fi
}

_help(){
    echo "Usage: ${0} {start|remove}"
    if [ $STAT = 0 ]; then 
        echo "Dropbear SSH was running!!!" 
    fi 
    exit 0
}

_killprocess(){
    _checkrunning
    if [ $STAT = 0 ]; then
        kill -9 ${PID}
        echo "+ kill ${PROGRAM}"
    fi
}

_genkey(){
    if [ ! -d /etc/dropbear ] ; then
        mkdir -v /etc/dropbear
        echo "+ mkdir -v /etc/dropbear"
    fi
    if [ ! -e /etc/dropbear/dropbear_rsa_host_key ] ; then
        ${PWD}/bin/dropbearkey -t rsa -s 2048 -f /etc/dropbear/dropbear_rsa_host_key > /dev/null
        echo "+ RSA Key Generated!"
    fi
}

_start(){
    port=1213
    _genkey
    ${PWD}/sbin/dropbeard -p ${port}
    echo "+ Dropbear SSH running!!!"
    exit 0
}

_remove(){
    _killprocess
    rm -rf ${PWD} ; echo "+ rm -rf ${PWD}"
    rm -rf /etc/dropbear ; echo "+ rm -rf /etc/dropbear"
    echo "Removed!!!"
    exit 0
}

case "$1" in
    start)
        _start
        ;;
    remove)
        _remove
        ;;
    *)
        _help
        ;;
esac
exit 0
