## What I Did – Step-by-Step Summary

1. Created a simple node.js file with home url.
2. Wrote a Docker file which is a step-by-step recipe that tells Docker how to build a container image for our app.
   - Used node base image
   - Set the working dir to /app
   - Copied the files into the image
   - Ran npm instal to install dependencies
   - Exposed the port 3000
   - Used CMD to start the app
3. Build the Docker image.
   - docker build -t   docker-name .
   - . is used to specify to use the docker file in the current directory
4. We tested the image by running.
   - docker run -p 3000:3000 docker-node-app
   - Our machines port 30000 : 3000 docker-name
5. Created an AWS EC2 instance.
   - Selected Ubuntu as OS
   - Chose t2.micr(free tier)
   - Configured a security group to allow access to the port 22(SSH) and 3000(our app)
   - Generated a .pem key pair to securely SSH into the instance
6. Opened EC2 in terminal.
   - ssh -i pem_file ubuntu@public-ip
   - -i specifies the identity of the file
   - ubuntu is default user
   - <public-ip> is the IP address of EC2 instance
7. Installed Docker in EC2.
   - sudo apt update
   - sudo apt install docker.io
   - sudo systemctl start docker
8. Cloned the repo.
   - git clone git_url
   - cd repo_name
9. Build the docker and ran the constainer.
    - docker build
    - docker run
10. Finally the app was live at.
    - http://EC2-public-ip:3000
   

    
 ## 💡 I’ve now: 
- Built a full Node.js app

- Dockerized it

- Deployed it to a cloud server (EC2) using Docker
