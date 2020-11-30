#! /bin/bash
# cars.sh
# Ethan Clunie
while true
do	
	echo "Please choose an option from those listed below:"
	echo " - type the number 1 to enter a new car"
	echo " - type the number 2 to display the list of cars"
	echo " - type the number 3 to quit and exit the program"
	read OPTION
	if [ "$OPTION" = 1 ]
	then
		echo "Please give the year of the new car"
		read YEAR
		echo "Please give the make of the new car"
		read MAKE
		echo "Please give the new car's model"
		read MODEL
		echo -e "$YEAR:$MAKE:$MODEL" >> My_old_cars
	elif [ "$OPTION" = 2 ]
	then
		sort -n My_old_cars
	elif [ "$OPTION" = 3 ]
	then
		echo "Goodbye"
		break
	else
		echo "That was not a valid option."
	fi
done
