#OR operator
read -p "enter your age:" age
read -p "enter your country:" country
if [ $age -ge 18 ] || [ $country == "india" ]
then 
echo "you can vote"
else 
echo "tou cant vote"
fi