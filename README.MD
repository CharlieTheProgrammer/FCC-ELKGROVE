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
