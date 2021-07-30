#!/bin/bash

# Example of CASE Statements



case "$1" in 
	start) 
		echo "Starting sleep walking server"
		/tmp/sleep-walking-server & 
		;;
	stop)
		echo "Stopping sleep walking server"
		kill $(cat /tmp/sleep-walking-server.pid)
		;;
	*)
		echo "Usage $0 start|stop"; exit 1 
esac

