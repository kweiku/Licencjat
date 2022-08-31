CREATE TABLE categories
(
    category_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE ingredients
(
    ingredient_id SERIAL PRIMARY KEY,
    category_id BIGINT UNSIGNED NOT NULL,
    name TEXT NOT NULL,
    description TEXT,
    img_url TEXT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE products
(
    product_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    img_url TEXT
);


CREATE TABLE product_ingredients
(
    id SERIAL PRIMARY KEY,
    product_id BIGINT UNSIGNED NOT NULL,
    ingredient_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);


INSERT INTO categories
    (name)
VALUES
    ('Proteiny'),
    ('Emolienty'),
    ('Humektanty');

INSERT INTO ingredients
    (name, category_id, description)
VALUES
    ('ind_01', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
    ('ind_02', 2, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    ('ind_03', 2, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
    ('ind_04', 3, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

INSERT INTO products
    (name, description)
VALUES
    ('prod_01', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam'),
    ('prod_02', 'eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo'),
    ('prod_03', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit'),
    ('prod_04', 'sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est');

INSERT INTO product_ingredients
    (product_id, ingredient_id)
VALUES
    (1,1),
    (1,2),
    (2,3),
    (3,1),
    (3,3),
    (4,4);
