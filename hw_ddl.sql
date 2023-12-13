CREATE TABLE goer(
    goer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(15),
    last_address VARCHAR (25),
    goer_age INTEGER
)

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    genre VARCHAR (20)
)

CREATE TABLE theatre_screen(
    screen_num INTEGER PRIMARY KEY,
    screen_size VARCHAR(25),
    three_d_capable BOOLEAN
)

-- If I did this again, I would add a snacks table 
-- and use this as more of a sales table but 
-- the prompt was a little wonky on this bit so here we are
CREATE TABLE concession(
    snack_id SERIAL PRIMARY KEY,
    goer_id INTEGER NOT NULL,
    snack_name VARCHAR(25),
    FOREIGN KEY (goer_id) REFERENCES goer(goer_id)
)

ALTER TABLE concession
    ADD snack_price NUMERIC;

CREATE TABLE showing(
    showing_id SERIAL PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    screen_num INTEGER NOT NULL,
    -- didn't want a timestamp but a scheduled time
    -- DATETIME came up with error since it is MYSQL
    -- and not a POSTGRES? 
    showing_date DATE,
    showing_time TIME,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (screen_num) REFERENCES theatre_screen(screen_num)
)
-- couldn't figure out date or time types, tons of errors
ALTER TABLE showing
    ALTER COLUMN showing_time TYPE VARCHAR(7);
ALTER TABLE showing
    ALTER COLUMN showing_date TYPE VARCHAR;

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    showing_id INTEGER NOT NULL,
    goer_id INTEGER NOT NULL,
    FOREIGN KEY (showing_id) REFERENCES showing(showing_id),
    FOREIGN KEY (goer_id) REFERENCES goer(goer_id)
)