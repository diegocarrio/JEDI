# Instructions how to compile JEDI/oops in a MacBook Laptop 💻:

One of the easiest way to compile JEDI on a MacBook laptop is using Docker containers. Following this link you can find additional information of other methods, such using "singularity":

https://jointcenterforsatellitedataassimilation-jedi-docs.readthedocs-hosted.com/en/latest/using/jedi_environment/containers/container_overview.html#docker

Step 1: docker run -u nonroot --rm -it -v /Users/diegocarrio/Dropbox/JEDI:/home/nonroot/shared jcsda/docker-gnu-openmpi-dev:latest  
Step 2: cd shared/  
Step 3: git clone -b 1.8.0 https://github.com/jcsda/oops  
Step 4: cd oops/  
Step 5: mkdir build  
Step 6: cd build  
Step 7: ecbuild ..  
Step 8: make  

