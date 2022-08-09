# Production
# ipScan

# The problem:
- Finding the right IP address and converting it for certain nmap scans can be tedius

# What you need:
- root access
- A machine that can run bash scripts
- nmap

# How to use it:
1. Type 'bash filepath/ipScan.sh' into the console
2. Chose the desired interface
3. Enter the subnet mask e.g. 24
4. Enter the password for the root user if prompted


# How it works:
- The interfaces are shown via the ifconfig command
- The IP address is then saved to a variable and converted for the scan
- A simple nmap scan is then performed
