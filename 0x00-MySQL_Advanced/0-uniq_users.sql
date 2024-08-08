-- Script to create a table `users`
-- The table includes an auto-increment primary key `id`
-- The `email` field is unique and cannot be null
-- The `name` field allows up to 255 characters

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
