#!/bin/bash
cat ip_data.csv | awk 'NR!=1 {print}' | while IFS=',' read id first_name last_name email gender ip_address
do 
echo "id of employee is $id"
echo "first name of emp is $first_name"
echo "last name of emp is $last_name"
echo "gender of emp $gender"
echo "email of emp $email"
echo "ip of emp is $ip_address"
done

