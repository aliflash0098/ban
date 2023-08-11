
for lin in $(cat inp.txt);
do
    sudo iptables -I INPUT -s $lin -j DROP
    sudo iptables -I OUTPUT -d $lin -j DROP
done;
sudo iptables-save
