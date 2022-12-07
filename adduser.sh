#!/bin/bash

echo "Welcome"
echo "Do you want to add a new user? "

read -n1 -p "[y,n]" doit 
case $doit in  
  y|Y) add_user ;; 
  n|N) exit ;; 
  *) exit echo "Invalid input";; 
esac

add_user()
{
    echo "Please enter a user name: "
    read username

    echo "Please enter a password: "
    read password
    
    echo "Adding the user $user.."
    echo useradd -c $username
    echo passwd --stdin $user $password
    echo "Added user $user with password $password"
    
}






