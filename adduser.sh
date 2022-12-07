#!/bin/bash

echo "Do you want to add a new user? "

read -n1 -p "[y,n]" doit 
case $doit in  
  y|Y) add_user ;; 
  n|N) echo no ;; 
  *) echo dont know ;; 
esac

add_user()
{

    user=$1
    password=$2
    shift; shift;
    comments=$@
    echo "Adding the user $user.."
    echo useradd -c "$comments" $user
    echo passwd --stdin $user $password
    echo "Added user $user with password $password"
    
}

echo "script started"
add_user






