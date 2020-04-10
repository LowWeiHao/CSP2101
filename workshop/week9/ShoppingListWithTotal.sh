#!/bin/bash
echo "The items on your shopping list is as follows:"
awk 'BEGIN {
	FS=",";currency="$"
    print "Item         | Quantity | Price   | Total  "
    print "_____________|__________|_________|________"
    total_qty = 0
    total_price = 0
    grand_total = 0
}
{   total = $2 * $3
    total_qty += $2
    total_price += $3
    grand_total += total
    printf "%-13s| %-09s| %c%-07s| %c%.2f\n", $1, $2, currency, $3, currency, total   }
END{
    printf "%-13s| %-09s| %c%-07s| %c%.2f\n", "TOTAL: " , total_qty, currency, total_price, crrency, grand_total
}' shopping.csv
