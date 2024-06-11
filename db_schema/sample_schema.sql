CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Insert records into the "users" table
INSERT INTO users (username, email) VALUES
    ('john_doe', 'john@example.com'),
    ('jane_doe', 'jane@example.com'),
    ('alice_smith', 'alice@example.com'),
    ('bob_jones', 'bob@example.com'),
    ('emma_davis', 'emma@example.com');

-- Create the "posts" table
CREATE TABLE IF NOT EXISTS posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert records into the "posts" table
INSERT INTO posts (title, content, user_id) VALUES
    ('First Post', 'This is the content of the first post', (SELECT id FROM users WHERE username = 'john_doe')),
    ('Second Post', 'This is the content of the second post', (SELECT id FROM users WHERE username = 'jane_doe')),
    ('Third Post', 'This is the content of the third post', (SELECT id FROM users WHERE username = 'alice_smith')),
    ('Fourth Post', 'This is the content of the fourth post', (SELECT id FROM users WHERE username = 'bob_jones')),
    ('Fifth Post', 'This is the content of the fifth post', (SELECT id FROM users WHERE username = 'emma_davis'));
