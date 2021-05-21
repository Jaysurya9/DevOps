# Docker-Project
To create a simple orchestration of lightweight web server applications with orchestration tools  of choice (Docker Compose, Ansible, Kubernetes, etc).

Play with Docker:
A simple, interactive and fun playground to learn Docker
link: https://labs.play-with-docker.com/

Basic Docker Steps before getting into the process:

Step 1 : Connect to Linux system 
         or use https://labs.play-with-docker.com/ (Free Alpine Linux Virtual Machine)

Step 2 : Install docker

      sudo yum -y update
      sudo yum install -y docker
          
Step 3 : Docker Verification

      docker
      or
      docker -v  
      or
      docker --version 

Step 4 - Start Docker

      sudo service docker start 
      sudo usermod -a -G docker "user"

      docker info 

      docker run <imahe-nmae> : to run hello-world image

      docker images : to get list of images present locally

      docker ps : to get list of running containers (Health Check)

      docker ps -a .  : to get list of all containers

Step 5 - Stop Docker

      sudo service docker stop

      #To Uninstall Docker
      uninstall docker

      #To Completely remove
      sudo yum remove docker 
          
         
 Getting Started with Docker-Compose:
 
 Docker Compose: 

    : tool for defining & running multi-container docker applications

    : use yaml files to configure application services (docker-compose.yml)

    : can start all services with a single command : docker compose up

    : can stop all services with a single command : docker compose down

    : can scale up selected services when required
    

    
Step 2 : Create docker compose file at any location on your system

   docker-compose.yml

Step 3 : Check the validity of file by command

    docker-compose config

Step 4 : Run docker-compose.yml file by command

   docker-compose up -d

Steps 5 : Bring down application by command

   docker-compose down
   
   
 To Scale up we can use the command:
    
   docker-compose up -d --scale <service-name>=<count>
  
   example: docker-compose up -d --scale database=5

