Nessus scanner has a free individual use license that is good for scanning
up to 16 IPs.  It is best practice to stand up a Nessus server and 
take a snapshot for repeated use

## First Time Install

### Create Nessus image from Dockerfile

sudo docker build -t nessus:ne .

### Run Nessus Container
sudo docker run -p 8834:8834 -d -it nessus:ne

Add the license file based on the activation code received.
Create user name and password

### Save licensed Image
docker image save -o nessus-licensed.tar <nessus_container_id> 
## Every Other Use


### Load Image from Tar
docker image load -i nessus-licensed.tar

### Run licensed Docker container
sudo docker run -p 8834:8834 -d -it nessus:ne
