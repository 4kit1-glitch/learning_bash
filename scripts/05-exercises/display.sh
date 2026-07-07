 #!/bin/bash

echo "Home Directory: $HOME"
echo "Terminal Type: $TERM"

echo -e "\nServices started at runlevel 3:"
#top          ## actively shows info on the current processes runninf in the system
#htop          # a better top but needs to be installed
ps aux