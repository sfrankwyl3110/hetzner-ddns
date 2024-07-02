# hetzner-ddns - docker-compose
Dockerized Dynamic DNS with Hetzner DNS API
&nbsp;  
&nbsp;  

### \# Installation

 - Clone the repository  
```git clone https://github.com/sfrankwyl3110/hetzner-ddns```
```cd hetzner-ddns```
&nbsp;  
&nbsp;  

 - Edit the hetzner_ddns.conf  
```
# Seconds between updates / TTL value
interval='60'

# Hetzner DNS API key
key=''

# Top level domain name
domain='example.com'

# Space separated host subdomains (@ for domain itself)
records='localweb testweb wordpress'
```
&nbsp;  

 - Run Docker-Compose  
```docker compose up --build -d```
&nbsp;  
&nbsp;  

 - Check Healthy Status & Logs in log dir  
```docker ps | grep hetzner-ddns```
&nbsp;  
&nbsp;  
&nbsp;  

Modified by: Sascha Frank ©2024  
&nbsp;  
&nbsp;  
inspired and original source-code by [https://github.com/filiparag/hetzner_ddns](https://github.com/filiparag/hetzner_ddns)

&nbsp;  
&nbsp;  
  
TODO:
 - create a python3 version
