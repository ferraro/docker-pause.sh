# docker-pause.sh
Docker pause script in bash.
Use this script if your docker container runs in the Dockerfile at the end a CMD command with a bash shell script which waits at the end infinitely long.
Simply append the code of this script to your bash shell script that the "docker stop" command exits immediately after the sleep of one second. Otherwise your script will end after
a timeout of 10 seconds of the "docker stop" command.
