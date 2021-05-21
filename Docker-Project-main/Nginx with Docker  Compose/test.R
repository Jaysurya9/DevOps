sudo docker container run -d --rm -p 8787:8787 -e PASSWORD=XYZ -e USER=rstudio \
-v /home/ubuntu/rstudio_docker/:/home/rstudio/rstudio_docker/ \
rocker/tidyverse
