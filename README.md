# Nginx-Log-Analyser
Script made for the Roadmap.sh Ngninx log parser project => [here](https://roadmap.sh/projects/nginx-log-analyser]).

## Description

The script will display the top 5 for 4 different scenarios:
* Top 5 IP addresses with the most requests
* Top 5 most requested paths
* Top 5 response status codes
* Top 5 user agents

## Requirements
You must have a bash terminal. The script will work on OS X and Linux.

## Usage
1. Start by cloning the repo to your local machine. This will download the script and the log file.
```
git clone git@github.com:tremblay717/Nginx-Log-Analyser.git
```

2. (Optionnal) Make the script executable
```
chmod +x ./log_analyser.sh
```
3. Launch the script in bash terminal

```
# If executable (performed at step 2)
./log_analyser.sh

# If not
sh ./log_analyser.sh
```

The output should look like this : 
```
Top 5 IP addresses with the most requests:
178.128.94.113 - 1087 requests
142.93.136.176 - 1087 requests
138.68.248.85 - 1087 requests
159.89.185.30 - 1086 requests
86.134.118.70 - 277 requests

Top 5 most requested paths:
/v1-health - 4560 requests
/ - 270 requests
/v1-me - 232 requests
/v1-list-workspaces - 127 requests
/v1-list-timezone-teams - 75 requests
```




