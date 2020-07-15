#! /bin/bash
export LC_COLLATE=C
function checkName() {
	nameCheck="^[A-Z][a-zA-Z]{2,}$"
	if [[ $1 =~ $nameCheck ]]
	then
		echo "Valid Name!"
	else
		echo "Invalid format! Name should be atleast 3 letters long and start with Capital letter."
	fi
}
function checkEmail() {
	emailCheck="^[0-9a-zA-Z]+([.+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
	if [[ $1 =~ $emailCheck ]]
	then
		echo "Valid email!"
	else
		echo "Invalid format!"
	fi
}
read -p "Enter first name (John) " fname
checkName $fname
read -p "Enter last name (Doe) " lname
checkName $lname
read -p "Enter email address (johndoe@jd.com) " email
checkEmail $email
