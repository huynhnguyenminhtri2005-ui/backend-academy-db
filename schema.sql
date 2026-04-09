CREATE TABLE USERS
(
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) unique not null,
    password_hash TEXT NOT NULL,
    full_name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE users;

INSERT INTO users (email, password_hash, full_name)
VALUES ('user1@example.com', 'hashed_password', 'User One');

-- Select
SELECT * FROM users;

-- Update
UPDATE users
SET full_name = 'Updated Name'
WHERE id = 1;

-- Delete
DELETE FROM users
WHERE id = 1;


--Dữ liệu chạy bài tập 11 
INSERT INTO users (email, password_hash, full_name) 
VALUES ('tri.nguyen@example.com', 'hash_123', 'Huynh Nguyen Minh Tri'),
('admin@ecommerce.com', 'admin_hash', 'System Admin'),
('customer1@gmail.com', 'cust_hash_1', 'Nguyen Van A'),
('customer2@gmail.com', 'cust_hash_2', 'Tran Thi B'),
('dev.test@example.com', 'dev_hash', 'Developer Test');

--Dùng email trùng nhen
INSERT INTO users (email, password_hash, full_name)
VALUES ('tri.nguyen@example.com', 'new_hash', 'Duplicate Tri');

SELECT column_name, data_type, is_nullable 
FROM information_schema.columns 
WHERE table_name = 'users';