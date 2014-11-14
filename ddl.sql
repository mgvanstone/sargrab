drop table cpu_stats;
create table cpu_stats (
capture_time datetime not null,
server_name varchar(255) not null,
cpu varchar(255) not null,
puser float,
psystem float,
piowait float,
pnice float,
psteal float,
pideal float,
CONSTRAINT uc_stats UNIQUE (server_name, capture_time, cpu));

drop table servers;
create table servers (
server_name varchar(255),
os_type varchar(255),
os_version varchar(255),
CONSTRAINT uc_name UNIQUE (server_name));


drop table io_stats;
create table io_stats (
capture_time datetime,
server_name varchar(255),
tps float,
rtps float,
wtps float,
breadps float,
bwrtnps float,
CONSTRAINT uc_time UNIQUE (capture_time,server_name));


drop table memory_stats;
create table memory_stats (
capture_time datetime,
server_name varchar(255),
kbmemfree float,
kbmemused float,  
p_memused float, 
kbbuffers float,  
kbcached float,  
kbcommit float,   
p_commit float,
CONSTRAINT uc_time UNIQUE (capture_time,server_name));


drop table iface_stats;
create table iface_stats (
capture_time datetime,
server_name varchar(255),
iface varchar(255),
rxpckps float,
txpckps float,    
rxkBps float,    
txkBps float,   
rxcmpps float,   
txcmpps float,  
rxmcstps float,
CONSTRAINT uc_time UNIQUE (capture_time,server_name, iface));