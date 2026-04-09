-- Thêm quyền
INSERT INTO Roles (role_name) VALUES ('Admin'), ('Teacher'), ('Student');

-- Thêm User và Auth
INSERT INTO Users (full_name, email, role_id) VALUES ('Hoang Tu', 'tu@gmail.com', 3);
INSERT INTO User_Auth (user_id, username, password_hash) VALUES (1, 'tu_student', '123456');

-- Thêm Khóa học và Lớp
INSERT INTO Courses (course_name, credits) VALUES ('Lập trình .NET', 3);
INSERT INTO Classes (course_id, class_code) VALUES (1, 'DOTNET_K01');

-- Thêm Đăng ký học
INSERT INTO Enrollments (user_id, class_id) VALUES (1, 1);