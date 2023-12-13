CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_address VARCHAR (150),
    phone INTEGER,
    email VARCHAR NOT NULL
)

CREATE TABLE cart(
    cart_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    date_created TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    price NUMERIC(8,2),
    product_description VARCHAR
)

CREATE TABLE product_sale(
    sale_id SERIAL PRIMARY KEY,
    cart_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    FOREIGN KEY (cart_id) REFERENCES cart(cart_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
)