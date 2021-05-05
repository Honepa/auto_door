PINS="19 0 1 107"

for x in $PINS
do
    echo -n $x > /sys/class/gpio/export
    echo -n out > /sys/class/gpio/gpio$x/direction
done

v=1

for n in 0 1 2 3 4 5 6
do
    for x in $PINS
    do
	echo -n $v > /sys/class/gpio/gpio$x/value
	echo "$v > $x"
	sleep 1
    done
    [ $v -eq 1 ] && v=0 || v=1
    sleep 1
done

for x in $PINS
do
    echo -n $x > /sys/class/gpio/unexport
done


#  19 - IN1
#   0 - IN2
#   1 - IN3
# 107 - IN4
