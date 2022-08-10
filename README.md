

This is a very small script written in bash to notice and log Public IP change on a UNIX Based Device.

The principal components used by the script is the ipify.org API which is a free open source service that returns public IP information to the sender.
Since, it is open source, with no log registration and have been around for a couple of years now, I think it is a great service we can rely on to retrieve Public IP info.

Getting Started.

1. Download the script on your computer
2. make it executable : example: chmod +x public_ip_logger.sh
3. Run the script while redirecting the output to the file : LOG-IP.txt
Example : ./public_ip_logger.sh >> LOG-IP.txt

If you want to change the file name you are outputting to, you will need to change the 'logfile' variable value in the script as well as in the run command.

4. To obtain a track record of the IP changes in a file, you will need to schedule a cron job to execute this script at the rate you want.

Here is an example of a cron job, to run the task every hour.

#To edit cron jobs
crontab -e   

#cronjob scheduled to run every hour at minute 0
0 * * * * ./public_ip_logger.sh >> LOG-IP.txt


5. That's it.
From now on, nothing else is to be done. Every hour the script will run and populate the LOG-IP.txt file, with the current Public IP.

(Area of improvements)
This is a basic script but feel free to modify it and adjust it to your needs.
Maybe you want to monitor the file or implement an SMS or Email notification system to send a notice whenever the public IP change.
Or maybe you want to re-use some part of the code or logic, to build your own program as a process rather.

Anyway I hope, it helps you and feel free to engage anytime!

