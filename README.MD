# What we need
    - location of where picture is taken
    - What food is it
        1. origination of food
        2. price of food
        3. 
    - Time picture is taken
        1. year
        2. month
        3. season
        4. days
        5. time
    - Device is taken off
    - use linkedin log in to identify user profession.
        1. does engineer likes vege?
        
    - use google to log in
        1. age of person

# Schema JSON
    {
        - First Name
        - Last Name
        - Street
        - City
        - State
        - Zip Code
        - Device : []
        - Foods:
            - {
                -ImageLink
                -Web_Names: []
                -Location:{
                    - Street,
                    - City,
                    - State,
                    - Zipcode
                }
                Time: "YYYY/MM/DD:HH:SS"
            }
    }

# GETTING STARTED WITH DOCKER CASSANDRA (DATASTAX DISTRO)
    1. docker run -e DS_LICENSE=accept --name my-dse -d datastax dse-server -g -s -k
    2. docker run -e DS_LICENSE=accept --link my-dse -p 9091:9091 --name my-studio -d datastax/dse-studi
    3. 192.168.99.100 or localhost port 9091.

# CASSANDRA DOCKER COMPOSE
    1. docker-compose up --build