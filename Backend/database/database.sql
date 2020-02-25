DROP DATABASE IF EXISTS tekpack;

CREATE DATABASE tekpack;

\c tekpack


CREATE TABLE users
(
    users_id SERIAL PRIMARY KEY,
    name VARCHAR,
    email VARCHAR UNIQUE,
    number VARCHAR,
    password VARCHAR
);

CREATE TABLE template
(
    template_id SERIAL PRIMARY KEY,
    image VARCHAR,
    img_name VARCHAR,
    users_id INT REFERENCES users(users_id)
    );


CREATE TABLE projects
(
    projects_id SERIAL PRIMARY KEY,
    description VARCHAR,
    date_made DATE,
    created_by VARCHAR,
    quantity INT,
    color VARCHAR,
    img_url VARCHAR,
    template_id INT REFERENCES template(template_id),
    users_id INT REFERENCES users(users_id),
    form_data VARCHAR
);

    CREATE TABLE comments
(
    comment_id SERIAL PRIMARY KEY,
    comment VARCHAR,
    commentors_name VARCHAR REFERENCES users (name),
    projects_id INT REFERENCES projects(projects_id)
);



CREATE TABLE measurement
(
    measurement_id SERIAL PRIMARY KEY,
    -- verison INT,
    HPS VARCHAR,
    CF VARCHAR,
    CB VARCHAR,
    SS VARCHAR,
    -- body_length INT,
    -- across_chest INT,
    -- waist INT,
    -- hip INT,
    -- garment_base_width INT,
    -- sleeve_length INT,
    -- bicep INT,
    -- armhole_curved INT,
    -- shoulder_drop INT,
    -- neck_opening INT,
    -- upper_waist INT,
    -- lower_hip INT,
    -- thigh INT,
    -- knee_opening INT,
    -- leg_opening INT,
    -- front_rise INT,
    -- back_rise INT,
    -- inseamn INT,
    projects_id INT REFERENCES projects(projects_id)
);



INSERT INTO users
    (name, email, number, password)
VALUES
    ('Owen Jones', 'OJones@project.com', 1234567890, 'pursuit123'),
    ('Jonathan Fagan', 'JFagan@project.com', 9876543210, 'pursuit123');

INSERT INTO template
    (image, img_name)
VALUES
    ('https://i.pinimg.com/originals/63/c2/ee/63c2ee0ce6a9781832abb6257a5a2f6c.jpg', 'T-shirt'),
    ('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTBLh2S4BzaeD8ekMQkQ-PGOgeeyvObvrUUx7XtOejo6ZHX2G8r', 'Dress'),
    ('data:image/jpeg;base64,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', 'Jeans');

INSERT INTO projects
    (projects_id, description, date_made, created_by, quantity, color, img_url, template_id, users_id, form_data)
VALUES
    (1, 't-shirt', '2020-02-23', 'peach', 10, 'blue', '' , 1, 1, ''),
    (2, 'jeans', '2020-02-23', 'steve', 5, 'black', 'https://cdn3.vectorstock.com/i/thumb-large/57/12/unisex-outlined-template-jeans-front-back-view-vector-6975712.jpg',3,2, '' );


INSERT INTO measurement
    (HPS, CF, CB, SS, projects_id)
VALUES
    (10, 5, 5, 2, 1),
    (5, 4, 12, 6, 2);

INSERT INTO comments
    (comment, commentors_name)
VALUES
    ('I would like 1 sample shipped to me in 14 days if possible.', 'Owen Jones'),
    ('Can a pocket be added to the leg ?','Jonathan Fagan' );
