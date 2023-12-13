INSERT INTO goer(
    first_name,
    last_address,
    goer_age
) VALUES (
    'Mike',
    'Heiser',
    29
)

INSERT INTO movie(
    title,
    genre
) VALUES (
    'The Big Lebowski',
    'Comedy'
)

INSERT INTO theatre_screen(
    screen_num,
    screen_size,
    three_d_capable
) VALUES (
    1,
    '16x9',
    True
)

INSERT INTO concession(
    goer_id,
    snack_name,
    snack_price
) VALUES (
    1,
    'popcorn',
    100.99
)

INSERT INTO showing(
    movie_id,
    screen_num,
    showing_date,
    showing_time
) VALUES (
    1,
    1,
    'MARCH 6, 1998',
    '16:20'
)

INSERT INTO ticket(
    showing_id,
    goer_id
) VALUES (
    1,
    1
)