#!/bin/bash
echo "The items on your shopping list is as follows:"
awk 'BEGIN {
	FS=",";currency="$"
    print "Item         | Quantity | Price   "
    print "_____________|__________|_________"
}
{
	printf "%-13s| %-09s| %c%02.2f\n", $1, $2, currency, $3
}' shopping.csv
