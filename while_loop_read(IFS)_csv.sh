#!/bin/bash
while IFS="," read id first_name last_name email gender ip_address
do 
echo "id is $id"
echo "initial name is $first_name"
echo "last name is $last_name"
echo "email is $email"
echo "gender is $gender"
echo "ip of the mail $ip_address"
done < ip_data.csv