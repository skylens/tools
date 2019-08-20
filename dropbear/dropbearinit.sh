#!/bin/bash
set -e

_help(){
    echo "Usage: ./dropbearinit.sh {start|remove}"
    exit 0
}

_killprocess(){
    programname=dropbear
    pid=`ps -ef|grep ${programname}|grep -v "grep"|head -n1|awk '{print $2}'`
    kill -9 ${pid}
}

_genkey(){
    if [ ! -d /etc/dropbear ] ; then
        mkdir -v /etc/dropbear
    fi
    if [ ! -e /etc/dropbear/dropbear_rsa_host_key ] ; then
        ${PWD}/bin/dropbearkey -t rsa -s 2048 -f /etc/dropbear/dropbear_rsa_host_key
    fi
}

_start(){
    port=1213
    _genkey
    ${PWD}/sbin/dropbear -p ${port}
    exit 0
}

_remove(){
    _killprocess
    rm -rf ${PWD} ; echo "+ rm -rf ${PWD}"
    rm -rf /etc/dropbear ; echo "+ rm -rf /etc/dropbear"
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
