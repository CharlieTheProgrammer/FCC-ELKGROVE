USE db_ElkGrove;

INSERT INTO USERS (first_name, last_name, age, street, city, state, zipcode)
VALUES 
    ('Donald', 'Trump', 70, '3222 Hiker Way', 'Sacramento', 'California', 95888),
    ('Helen', 'Trump', 60, '1231 Hee Way', 'New York', 'California', 12354),
    ('Roger', 'Trump', 50, '5251 Haa Way', 'Elk Grove', 'California', 44112);

INSERT INTO FOODS_PICTURE( image_link, food_name, user_id)
VALUES 
    ('https://picture.com', 'adobo', 1),
    ('https://picture1.com', 'chikcen', 2),
    ('https://picture2.com', 'beef', 3);

INSERT INTO FOOD_LOCATION (street, city, state, zipcode, user_id)
VALUES 
    ('3111 Hel Way', 'Sacramento', 'California', 95758, 1),
    ('1313 Hee Way', 'Folsom', 'California', 44112, 2),
    ('3131 Haa Way', 'Elk Grove', 'California', 44112, 3);