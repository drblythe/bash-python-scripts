#!/bin/bash

printf "Voltage? "
read volts

printf "Amps? "
read amps

printf "Hours used per day? "
read hours_per_day

#printf "kWh rate? "
#read kwh_rate
kwh_rate="10.98" # Houston

wattage=$(echo "scale=4;$volts*$amps" | bc)

yearly_cost=$(echo "scale=4;$wattage*$kwh_rate/1000*365" | bc)
printf "Yearly cost: \$$yearly_cost\n"
