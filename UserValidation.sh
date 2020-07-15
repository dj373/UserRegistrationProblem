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

read -p "Enter first name (John) " fname
checkName $fname
