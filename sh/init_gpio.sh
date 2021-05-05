PINS="19 0 1 107"

for x in $PINS
do
    echo -n $x > /sys/class/gpio/export
    echo -n out > /sys/class/gpio/gpio$x/direction
done

for x in $PINS
    do
	echo -n 0 > /sys/class/gpio/gpio$x/value
	echo "$v > $x"
	sleep 1
    done

echo -n 1 > /sys/class/gpio/gpio0/value
