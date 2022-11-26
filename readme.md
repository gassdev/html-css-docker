## deploy html/css on nginx using docker


### clone the project and run the following commands
1. docker build -t my_cv .
2. docker run --name cv -p 80:80 -d my_cv