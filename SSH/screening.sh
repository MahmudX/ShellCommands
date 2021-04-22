yum install screen
screen -h

# Create screen
screen -S $screenName

# Attach to the screen
screen -r $screenName

# Run commands on this screen
# Press CTRL + A > D to exit without closing the session

exit # close the session

screen --list
