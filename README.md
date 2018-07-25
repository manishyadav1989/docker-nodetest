Docker with nodejs app

Nodejs app running inside docker container with volume attach. I am shring step that help to attach volume in docker.

Step 1:-
Build docker image 
docker build -t nodetest:1.0 . 

Step 2:-
Run docker image
docker run -p 8769:3300 -it --name nodeapp -v <source your machine dir path>:<destination docker machine path> nodetest:1.0
        
Step 3:-
Check your docker process 
docker ps -a 

It will on which location your application is running. Default it will run 0.0.0.0:8769 copy and paste in browser.

Step 4:-
Start docker process again
docker start nodeapp

step 5:-
Chage your files in your local machine it will reflated in docker image.
