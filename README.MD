# GETTING STARTED
    1. start your docker machine
    2. run "docker-compose up --build"
    3. go to localhost:4000 or 192.168.99.100:4000

#STRESS LOAD
    1. npm install -g artillery
    2. artillery quick --count 50 -n 40 http://localhost:8080/data/all
