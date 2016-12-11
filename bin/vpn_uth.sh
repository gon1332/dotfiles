#!/bin/bash
# A script to automatize the connection
# to one of the UTH vpn connections.
# Ioannis Konstadelias 17/2/2015

cd $HOME/bin/vpn

if [ $# -eq 0 ]
then
    echo "######################################"
    echo "Default option chosen: UTH Network VPN"
    echo "######################################"
    sudo openvpn --config UTH\ Network.ovpn
    exit
elif [ $# -eq 1 ]
then
    if [ $1 = net ] || [ $1 = n ]
    then
        echo "##############################"
        echo "Option chosen: UTH Network VPN"
        echo "##############################"
        sudo openvpn --config UTH\ Network.ovpn
        exit
    elif [ $1 = lib ] || [ $1 = l ]
    then
        echo "##############################"
        echo "Option chosen: UTH Library VPN"
        echo "##############################"
        sudo openvpn --config UTH\ Library.ovpn
        exit
    fi
fi

# If the above failed
echo "#########################################"
echo " Usage: vpn_uth [OPTION]..."
echo
echo " If no option is given, the default is n."
echo
echo "     l, lib    Connect to UTH Library VPN"
echo "     n, net    Connect to UTH Network VPN"
echo "#########################################"
exit
