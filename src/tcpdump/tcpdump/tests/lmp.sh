#!/bin/sh

echo -n test lmp ...
#
# Apple: was ../tcpdump
#
tcpdump -t -n -v -v -v -r lmp.pcap >lmp.new
if diff lmp.new lmp.out
then
	echo passed.
else
	echo failed.
fi
	

