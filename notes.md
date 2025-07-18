# Telegraf notes

Documentation: https://docs.influxdata.com/telegraf/v1/install/#create-a-configuration-file-with-default-input-and-output-plugins

* Influxdb is the backend for telegraf


## Installation for Ubuntu
1. Update and upgrade (necessary)
```
sudo apt update && sudo apt upgrade
```
2. Run the following to install telegraf
```
curl --silent --location -O \
https://repos.influxdata.com/influxdata-archive.key \
&& echo "943666881a1b8d9b849b74caebf02d3465d6beb716510d86a39f6c8e8dac7515  influxdata-archive.key" \
| sha256sum -c - && cat influxdata-archive.key \
| gpg --dearmor \
| sudo tee /etc/apt/trusted.gpg.d/influxdata-archive.gpg > /dev/null \
&& echo 'deb [signed-by=/etc/apt/trusted.gpg.d/influxdata-archive.gpg] https://repos.influxdata.com/debian stable main' \
| sudo tee /etc/apt/sources.list.d/influxdata.list

sudo apt-get update && sudo apt-get install telegraf
```
3. Edit the configuration file
```
vim /etc/telegraf/telegraf.conf
```
4. Change any settings/add plugins
```
default interval is 10s
add outputs.cloudwatch_logs (output logs to cloudwatch instance)
add inputs.tail (ingest log file data)
```
5. Make a telegraf user and add to adm group (not sure what cases this is necessary)
```
useradd telegraf -g adm
```
6. Start the telegraf service
```
systemctl start telegraf
systemctl status telegraf
```

## Demo
1. Setting up logs to be streamed from Ubuntu 20.04 VM to MacOs
	- installed telegraf on vm
	- added ["inputs.tail"]
		- what files to ingest (everything in /var/log)
		- data_format = influx
		- where to start in the log file (start_from_end)
	- added ["outputs.socket_writer"]
		- address = "tcp://<your-mac-host-IP>:8094"
		- data_format = influx
	- restart the service
		- systemctl restart telegraf
		- systemctl status telegraf
2. Install telegraf on mac and setup config file
	- brew install telegraf
	- set up config file in working directory (telegraf_tcp_listener.conf)
	- in conf file, add the following
	```sh
	[[inputs.socket_listener]]
		service_address = "tcp://:8094"
		data_format = "influx"

	[[outputs.file]]
		files = ["stdout"]
		data_format = "influx"
	```
	- Run telegraf on mac to start listening for logs
		- telegraf --config telegraph_tcp_listener.conf
3. WARNING
	- you may need a 'telegraf' user with elevated privs

