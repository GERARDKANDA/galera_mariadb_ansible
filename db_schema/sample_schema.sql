-- Create the "users" table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Create the "posts" table
CREATE TABLE IF NOT EXISTS posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert records into the "users" table
INSERT INTO users (username, email) VALUES
    ('john_doe', 'john@example.com'),
    ('jane_doe', 'jane@example.com'),
    ('alice_smith', 'alice@example.com'),
    ('bob_jones', 'bob@example.com'),
    ('emma_davis', 'emma@example.com');

-- Insert records into the "posts" table
INSERT INTO posts (title, content, user_id) VALUES
    ('First Post', 'This is the content of the first post', 1),
    ('Second Post', 'This is the content of the second post', 2),
    ('Third Post', 'This is the content of the third post', 3),
    ('Fourth Post', 'This is the content of the fourth post', 4),
    ('Fifth Post', 'This is the content of the fifth post', 5);
