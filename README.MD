# GETTING STARTED
    1. virtualenv server
    2. source server/Scripts/activate
    3. pip install -r requirements.txt
    4. python server.py

# BENCHMARK
    1. npm install -g artillery
    2. artillery quick --count 50 -n 40 http://localhost:5000/data