uname -a > sg.uname.`uname -n`
cat /proc/cpuinfo > sg.cpuinfo.`uname -n`
cat /proc/meminfo > sg.meminfo.`uname -n`
sar -r -b -q -w -n DEV -S -u -s 00:00:00 > sg.sar.`uname -n`.`date +"%m-%d-%y"`.all
tar cvf output.`uname -n`.tar sg.*
rm -f sg.*
