#find all up hosts with ssh port (22) open, then log in with public key and print hostname
nmap -oG - -sT -T4 -p22 192.168.0.* | grep open.*ssh > /tmp/nmap
cut -d' ' -f2 /tmp/nmap > /tmp/ips
cat /tmp/ips | while read host ; do
    echo $host
    #need the redirection to stop ssh 'eating' my ips
    ssh -2 -o 'PreferredAuthentications=publickey' pi@$host hostname < /dev/null
done
