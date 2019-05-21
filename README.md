# Building Multi-container for Monitoring Dell System Hardware

This docker-compose file builds up multi-container architecture which monitors the Dell hardware system.

Usage:

```
./launch.sh 
```

The above script will create two containers - Nagios with check_openmanage plugin AND OMSA with SNMP enabled.
Once this script is run, the two containers gets bind to host and hence Nagios UI shows up Physical Health status of Dell System.
