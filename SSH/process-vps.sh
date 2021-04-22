# Linux Process Monitoring
top

# VmStat – Virtual Memory Statistics
vmstat

# Netstat – Network Statistics
netstat -a | more

# Clean yum cache
yum clean packages
yum clean metadata
yum clean headers
yum clean all

# Clear buffer cache
/bin/sync && echo 3 > /proc/sys/vm/drop_caches

