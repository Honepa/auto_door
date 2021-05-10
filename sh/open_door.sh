
seq 5 | while read x
do
    echo -n 1 > /sys/class/gpio/gpio1/value
    echo -n 0 > /sys/class/gpio/gpio107/value
    sleep 0.02
    echo -n 0 > /sys/class/gpio/gpio1/value
    echo -n 0 > /sys/class/gpio/gpio107/value
    sleep 0.2
done
