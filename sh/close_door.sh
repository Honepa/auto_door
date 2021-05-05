
for i in 1, 2
do
for i in 1, 2, 3, 4, 5, 6
do
echo -n 0 > /sys/class/gpio/gpio1/value
echo -n 1 > /sys/class/gpio/gpio107/value
sleep 0.00001
echo -n 0 > /sys/class/gpio/gpio1/value
echo -n 0 > /sys/class/gpio/gpio107/value
done

done
