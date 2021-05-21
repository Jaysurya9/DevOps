# Python-with-Docker-Container
To create a Docker Container and configure it to run a "main.py” Python script.


Step 1: Creating the Python Script

Create a simple Python Script with called main.py inside a directory (say python-with-docker). 

Copy the below statement inside the Python script and save it inside the directory.
  
  print("This a Python Script running on Docker Container")
  
Step 2: Creating the Dockerfile

Inside the same directory, create another file called Docker file. In this file, we will define the sequence of steps needed to create the Docker Image. Take a look at the below Dockerfile template.

    FROM python:3
    WORKDIR /usr/src/app
    COPY . .
    CMD ["main.py"]
    ENTRYPOINT ["python3"]

In the above Dockerfile, I have pulled the Python 3 Base Image from the Docker Repository. I have set the working directory to /usr/src/app. After that, I have copied all the files to the working directory. Using CMD and ENTRYPOINT instructions, I have instructed the Container to run the main.py Python script when the container is started.

Step 3: Building the Docker Container

After creating both the Python script and the Dockerfile, now use the Docker build command to build your Docker Image.

    sudo docker build -t python-with-docker .
    
    (or)
    
    docker build -t python-with-docker .
  
Step 4: Verify the Image Build

check whether Docker Image has been successfully built or not.

    sudo docker images
    
    (or)
    
    docker images
    
Step 5: Running the Docker Container

Now, use the Docker run command to run your Docker Container.

    sudo docker run -it docker-with-python main.py
    
    (or)
    
    docker run -it docker-with-python main.py
    
After running the Docker Container, see the output printed inside the bash.


**THE END**

    

