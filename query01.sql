-- Tạo database
CREATE DATABASE IF NOT EXISTS doctorhub CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE doctorhub;

-- Bảng người dùng
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    role ENUM('user', 'admin', 'doctor') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Dữ liệu mẫu cho users
INSERT INTO users (name, email, password, role) VALUES
('Nguyễn Văn A', 'a@gmail.com', '123456', 'user'),
('Trần Thị B', 'b@gmail.com', '123456', 'user'),
('Admin', 'admin@doctorhub.com', 'admin123', 'admin'),
('Nguyễn Đức Gia Bảo', 'baoldz3009@gamil.com', '1', 'doctor');



INSERT INTO users (name, email, password, role) VALUES
('User 1', 'user1@example.com', '$2y$10$Wtbk2HHcMRp3/OSDncPhou.6FzLJ7tN6tkFSwxYeWVPic8ezyPas.', 'user'),
('User 2', 'user2@example.com', '$2y$10$VGWQBI32l3ESDEG/ucyaCuNOVr29DcMpAaSSKPF5kbWLafliC6V.G', 'user'),
('User 3', 'user3@example.com', '$2y$10$xNOXI3knyf4KpyTzrKDDu.f1kF01gGpBoCZtCiRjvEivW9bVwxnLm', 'user'),
('User 4', 'user4@example.com', '$2y$10$q5RhiPQt6MAUL5Gq0wG9we1J9OtpUH5XycojXOtswxyt8gXiuOeN.', 'user'),
('User 5', 'user5@example.com', '$2y$10$Dl6YJUjdH0woMS86OgyW7eCEyojIS./OXJIwOzdaBGOQhnYM.9EZ.', 'user'),
('User 6', 'user6@example.com', '$2y$10$Q3qcPYU74uwipDSZMiUUPONq5QdwwW79lpB5cHe.0kf3Rxy9hNqVq', 'user'),
('User 7', 'user7@example.com', '$2y$10$x5bLkVz3MQy/PmIcNk7cR..Ky7JwJslaaap1Lp4M71QbsnvGfNl4q', 'user'),
('User 8', 'user8@example.com', '$2y$10$SXVa78gxRAGX1oINmy4xt.0JbfLf1VP9GmtI6jAAnzd/FT58r6v/6', 'user'),
('User 9', 'user9@example.com', '$2y$10$SAeuaBC7PSdy9XxCkiJ6depPcB.voGR9cXWiC67UrzVONkreYUrbm', 'user'),
('User 10', 'user10@example.com', '$2y$10$ghraFCLGMjZg63A/nR5VO.UvXcw63bDxecwD8ihd6fVd9cOrGKPL6', 'user'),
('User 11', 'user11@example.com', '$2y$10$nRICTTlxq0swcgOTJv8uPePGj66nKjYiHDybTvoLJro.pIGmfA6YK', 'user'),
('User 12', 'user12@example.com', '$2y$10$z/Tc3MF.8PrjBKSRZcAOOufyzcKx6okU.pWD0wymN90UdIsvmp/CG', 'user'),
('User 13', 'user13@example.com', '$2y$10$ZrDOkNgbkKU.JIgbMLi3o.MZroklBxzCSssk9B4Q6H38DyxJN0fZO', 'user'),
('User 14', 'user14@example.com', '$2y$10$pfZyMDs12T4PuirXxJNYHeQLU37SJGrYyg.6.oUYPyUjKErnZ5P5S', 'user'),
('User 15', 'user15@example.com', '$2y$10$WvPbJp3wA7xmdwiJ6Xlw7.d2ZOdVo5VMbhdIm08tBjBNBu38Kk7si', 'user'),
('User 16', 'user16@example.com', '$2y$10$vOKHPRx9zt018nyo7umGI..NySEGBE9XtzOledAgtlmXzGkLg5EX6', 'user'),
('User 17', 'user17@example.com', '$2y$10$ENCkkDrLOvYNCnnndtMOPuu15YDp.4XX.gcCeqs2ZnYZwEUxk1k6q', 'user'),
('User 18', 'user18@example.com', '$2y$10$RTMDLpDRYomXKkSLx00IfuCaYtfOIUDuwxofjRSd/cRtZdIwpc5Mq', 'user'),
('User 19', 'user19@example.com', '$2y$10$4NwQ0bxImwSM6gId9N6PmerPd1ZO3NOPSuw3ndw4T5GSqDsCtqdGe', 'user'),
('User 20', 'user20@example.com', '$2y$10$WswXuuzHYx6ODDVqsc8ol.mG5OQDWwQ.feJN4vKpbTrfHNhi6.OeW', 'user'),
('User 21', 'user21@example.com', '$2y$10$6NHx/orrpnCfiPsZdrN5jOOtzWfjQdZ0jCT0U0OFM07HTG.e8Y7KW', 'user'),
('User 22', 'user22@example.com', '$2y$10$BsWgmVoyYsnD5bumzK3xVOs6Em3FApIgRWxwVbzDT0V5WpoOgp7fe', 'user'),
('User 23', 'user23@example.com', '$2y$10$PTwzFC4tPiM5jwYTMElGYeVDk0biW5XjRxtxn75OBl5PyxIGyErGa', 'user'),
('User 24', 'user24@example.com', '$2y$10$4qWOfYCSNtB/KO.o4t2S0OjDld4WMMjBUkgC.093Dv2t3.wp2zMWS', 'user'),
('User 25', 'user25@example.com', '$2y$10$qIrwZ5vZ81pkwdDnPFVOZO9iIfBZu9cyEMLNhhTA.aK5tB9IQz3FG', 'user'),
('User 26', 'user26@example.com', '$2y$10$o2HmTRFcNT1Fjq9a5wfyceauNshUbVl2T6m19RCvSl80O.U77R6T.', 'user'),
('User 27', 'user27@example.com', '$2y$10$xtQzsSuKb9O5InFutmKfp.SzuzS3KkkbvUXU4PDMKo0263dY.2sEu', 'user'),
('User 28', 'user28@example.com', '$2y$10$qi92QdaCu0m5tzEDKOF9NeshyPL0PBoLLvyY9LyJNCB8FPH8Mz.9u', 'user'),
('User 29', 'user29@example.com', '$2y$10$RkAHvyNE4aMXkxhK/CYQiuMoudRbI8CPdKD6/zNaI4Gy5yv0yJyHK', 'user'),
('User 30', 'user30@example.com', '$2y$10$Q237tg0aTkHzywagYgO52OB5Yy6LtIHe2kHIbTH7GIGV9vgMVUqam', 'user'),
('User 31', 'user31@example.com', '$2y$10$mnV2eUIarP1Iv8DWB7ooWeXx4l8Mylb/LaYJKtjAFuFa/wQeCktRG', 'user'),
('User 32', 'user32@example.com', '$2y$10$y3vQaAfFL1GlhhGvT3QM0.Pm9LtVHy7PL09p92maCrOkOiRgH0NWe', 'user'),
('User 33', 'user33@example.com', '$2y$10$6f2mOMx7dBF4.P/6P8Y8X.kV/akCSQHw5MAYoJZtN/6UlFHwdBLU6', 'user'),
('User 34', 'user34@example.com', '$2y$10$.tF3xvnyLLSLlsM6GjiLTu6R6xMzA/AFIzDYp895JqUSulH3TBKAu', 'user'),
('User 35', 'user35@example.com', '$2y$10$6ZUgAaga4P..SoEctCEc9.HpQUx8FGgYUY7KMxOUbfcUmRFHvemJu', 'user'),
('User 36', 'user36@example.com', '$2y$10$DuwQNhEL7XnrMxubPJkg4eJpp9u/iZbAhPQ8pNYfCBEgpCWyjga1a', 'user'),
('User 37', 'user37@example.com', '$2y$10$8ZSdVquby/sowzve9HFGiuBA36/z4QDjbTg4HUhvZ99vnPMNmX1ru', 'user'),
('User 38', 'user38@example.com', '$2y$10$3xwpdW7PogiujbTERSYB1O3SNdFz.p3islXFiYUBoFZU9laeFORRS', 'user'),
('User 39', 'user39@example.com', '$2y$10$iu/dLVD1vRjgqzTt47DdaOPAcUrCn1cPsK5Mk92xq1JMajGls1dES', 'user'),
('User 40', 'user40@example.com', '$2y$10$cHZpJodojw2YKwGBc29lyucDYVWvVWGSRYEzURp8upzOOqznItCQ.', 'user'),
('User 41', 'user41@example.com', '$2y$10$Opg69mZTiq1HrGvtVFKez.MBFob6JlEM2D6LG2.iP7r0dcYVUCWAG', 'user'),
('User 42', 'user42@example.com', '$2y$10$gEGMWBCF8ieRMwvmDZqEsuNgG4ZCSSDXWFLwMAu/i7Vwjy3.Kd8KG', 'user'),
('User 43', 'user43@example.com', '$2y$10$6ffB.r9Cty2TS6kt1TREtOxP.uzSw.HtwylJnm6uqO9Kpr9x3lW3.', 'user'),
('User 44', 'user44@example.com', '$2y$10$5oaR2VZfxNWVVyzf4E2Jsui3QvymnndfrlTYxU.q0QaJVhtQXuki2', 'user'),
('User 45', 'user45@example.com', '$2y$10$G7Yhn2FTw.XnLlTITrohdeZAJjysA1unmVw1aCfPJutcm3tDXezzq', 'user'),
('User 46', 'user46@example.com', '$2y$10$lURzfbcAjBxT9Tq6vEFH5uAO75Kh3F7Syzz4TsbdQ/hYmqm6oP.Ry', 'user'),
('User 47', 'user47@example.com', '$2y$10$ZegjOLpxWXV2fvVA0ThvEe2ucyDwImjGoVbJf4QLzH7l4Rpsf7Q3W', 'user'),
('User 48', 'user48@example.com', '$2y$10$Glnbn7rR56rydgMSKJu8JemRE0qvZPj91hybErDA4J5stEfhEnkHm', 'user'),
('User 49', 'user49@example.com', '$2y$10$vvBGuMHHQBNNwSI9rwlBmOhJoOJghBfl0rx9kmcMOdt4VseoBEEJi', 'user'),
('User 50', 'user50@example.com', '$2y$10$kFNShQkUTt..YC3dKybD9emnsy65BLn4A6B3rE77qwAb6UEOiMYMC', 'user');








-- Bảng dịch vụ y tế
CREATE TABLE IF NOT EXISTS services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Dữ liệu mẫu cho services
INSERT INTO services (name, description, price) VALUES
('Khám tổng quát', 'Dịch vụ khám sức khỏe toàn diện', 500000),
('Khám tim mạch', 'Tư vấn và kiểm tra tim mạch', 600000),
('Khám tai mũi họng', 'Khám và điều trị các bệnh tai mũi họng', 300000),
('Khám cơ xương khớp', 'Dịch vụ khám và tư vấn bệnh cơ xương khớp', 500000);

-- Bảng bệnh nhân
CREATE TABLE IF NOT EXISTS patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng đặt lịch khám (cập nhật cấu trúc)
CREATE TABLE IF NOT EXISTS appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    service_id INT,
    doctor_user_id INT,
    patient_name VARCHAR(100),
    appointment_date DATETIME,
    status ENUM('pending', 'confirmed', 'completed', 'canceled') DEFAULT 'pending',
    note TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (service_id) REFERENCES services(id),
    FOREIGN KEY (doctor_user_id) REFERENCES users(id)
);

-- Dữ liệu mẫu cho appointments
INSERT INTO appointments (user_id, service_id, doctor_user_id, patient_name, appointment_date, status, note) VALUES
(1, 1, 4, 'Nguyễn Văn A', '2025-04-15 09:00:00', 'pending', 'Yêu cầu bác sĩ nữ'),
(2, 2, 4, 'Trần Thị B', '2025-04-16 14:30:00', 'confirmed', 'Mang kết quả xét nghiệm');

-- Bảng bài viết blog
CREATE TABLE IF NOT EXISTS blogs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200),
    content TEXT,
    author_id INT,
    published_at DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (author_id) REFERENCES users(id)
);

-- Dữ liệu mẫu cho blogs
INSERT INTO blogs (title, content, author_id, published_at) VALUES
('Cách chăm sóc sức khỏe mùa hè', 'Nội dung bài viết về giữ gìn sức khỏe trong mùa hè...', 3, '2025-04-01 10:00:00'),
('Dinh dưỡng hợp lý cho người lớn tuổi', 'Nội dung bài viết về chế độ ăn uống cho người cao tuổi...', 3, '2025-04-05 08:30:00');

-- Bảng sản phẩm trong shop
CREATE TABLE IF NOT EXISTS shop_products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2),
    stock INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Dữ liệu mẫu cho shop_products
INSERT INTO shop_products (name, description, price, stock) VALUES
('Vitamin C 500mg', 'Tăng sức đề kháng, phòng cảm cúm', 150000, 50),
('Máy đo huyết áp điện tử', 'Máy đo chính xác, dễ sử dụng tại nhà', 650000, 20),
('Khẩu trang y tế 4 lớp', 'Bảo vệ sức khỏe, lọc bụi và vi khuẩn', 60000, 200);

CREATE TABLE doctor_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    clinic_name VARCHAR(255),
    address TEXT,
    specialty VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Thêm dữ liệu cho bác sĩ
INSERT INTO doctor_details (user_id, clinic_name, address, specialty) VALUES
(4, 'Phòng khám 115', '115 Nguyễn Thị Minh Khai, Quận 1, TP HCM', 'Cơ Xương Khớp');

CREATE TABLE contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    message TEXT NOT NULL,
    created_at DATETIME NOT NULL
);


CREATE TABLE doctors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(255),
    specialty VARCHAR(100),
    avatar VARCHAR(255),
    phone VARCHAR(20),
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO doctors (name, email, password, specialty, avatar, phone, address) VALUES
('BS. Hoàng Hồng Mạnh', 'hoanghongmanh@doctorhub.com', 'hashed_password', 'Khoa da liễu', '../../../assets/images/Doctors/032958-bac-si-da-lieu-hoang-hong-manh.jpg', '0123456789', '123 Đường Láng, Hà Nội'),
('BS. Hoài Thu', 'hoaithu@doctorhub.com', 'hashed_password', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/045850-bac-si-da-lieu-hoai-thu.jpg', '0987654321', '456 Nguyễn Trãi, TP.HCM'),
('BS. Huỳnh Quốc Hiêu', 'huynhquochieu@doctorhub.com', 'hashed_password', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-Huynh-Quoc-Hieu.jpg', '0912345678', '789 Lê Lợi, Đà Nẵng'),
('BS. Chu Trọng Hiệp', 'chutronghiep@doctorhub.com', 'hashed_password', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-TS.BS_.Chu-Trong-Hiep.webp', '0932145678', '101 Trần Phú, Huế'),
('BS. Lê Hoài Thương', 'lehoaithuong@doctorhub.com', 'hashed_password', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/1536566238-bacsy.jpg', '0941234567', '321 Phạm Văn Đồng, Cần Thơ');

INSERT INTO doctors (name, email, password, specialty, avatar, phone, address) VALUES
('BS. Nguyễn Hải Bình', 'nguyễnhảibình@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Sản', '../../../assets/images/Doctors/avatar-1.jpg', '0956271851', '458 Nguyễn Trãi, TP.HCM'),
('BS. Bùi Hữu Dũng', 'bùihữudũng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Tim mạch', '../../../assets/images/Doctors/avatar-2.jpg', '0911851402', '636 Lê Lợi, Huế'),
('BS. Lê Văn Hà', 'lêvănhà@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nhi', '../../../assets/images/Doctors/avatar-3.jpg', '0989898963', '448 Điện Biên Phủ, Biên Hòa'),
('BS. Phạm Minh Giang', 'phạmminhgiang@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-4.jpg', '0976981154', '793 Cách Mạng Tháng 8, Biên Hòa'),
('BS. Đỗ Minh Giang', 'Đỗminhgiang@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Sản', '../../../assets/images/Doctors/avatar-5.jpg', '0941513167', '62 Điện Biên Phủ, Hà Nội'),
('BS. Đỗ Đức Thắng', 'ĐỗĐứcthắng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-6.jpg', '0958896073', '3 Nguyễn Trãi, Hải Phòng'),
('BS. Trần Hải Thắng', 'trầnhảithắng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Tim mạch', '../../../assets/images/Doctors/avatar-7.jpg', '0978843019', '930 Lê Lợi, Cần Thơ'),
('BS. Phan Hữu Hùng', 'phanhữuhùng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Hô hấp', '../../../assets/images/Doctors/avatar-8.jpg', '0962034283', '93 Lê Lợi, Huế'),
('BS. Đặng Xuân Cường', 'Đặngxuâncường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Da liễu', '../../../assets/images/Doctors/avatar-9.jpg', '0950500674', '366 Cách Mạng Tháng 8, Biên Hòa'),
('BS. Hoàng Thị Thắng', 'hoàngthịthắng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Thần kinh', '../../../assets/images/Doctors/avatar-10.jpg', '0947332062', '565 Trường Chinh, TP.HCM'),
('BS. Hoàng Hải Bình', 'hoànghảibình@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-11.jpg', '0932556451', '473 Cách Mạng Tháng 8, TP.HCM'),
('BS. Lê Xuân Hà', 'lêxuânhà@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Da liễu', '../../../assets/images/Doctors/avatar-12.jpg', '0939911393', '375 Nguyễn Trãi, Hải Phòng'),
('BS. Đặng Đức Linh', 'ĐặngĐứclinh@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Da liễu', '../../../assets/images/Doctors/avatar-13.jpg', '0974941086', '573 Trường Chinh, Cần Thơ'),
('BS. Phan Minh Phong', 'phanminhphong@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Sản', '../../../assets/images/Doctors/avatar-14.jpg', '0923524192', '700 Điện Biên Phủ, Hải Phòng'),
('BS. Hoàng Văn Cường', 'hoàngvăncường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Thần kinh', '../../../assets/images/Doctors/avatar-15.jpg', '0930252196', '292 Nguyễn Trãi, TP.HCM'),
('BS. Nguyễn Thị Cường', 'nguyễnthịcường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Thần kinh', '../../../assets/images/Doctors/avatar-16.jpg', '0926551120', '404 Cách Mạng Tháng 8, Huế'),
('BS. Vũ Thanh Hùng', 'vũthanhhùng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Sản', '../../../assets/images/Doctors/avatar-17.jpg', '0922384812', '554 Hai Bà Trưng, Đà Nẵng'),
('BS. Đặng Quốc Trang', 'Đặngquốctrang@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Tim mạch', '../../../assets/images/Doctors/avatar-18.jpg', '0957550256', '818 Trường Chinh, Đà Nẵng'),
('BS. Đỗ Quốc Hà', 'Đỗquốchà@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nhi', '../../../assets/images/Doctors/avatar-19.jpg', '0997149391', '540 Lê Lợi, Biên Hòa'),
('BS. Vũ Hải Giang', 'vũhảigiang@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Hô hấp', '../../../assets/images/Doctors/avatar-20.jpg', '0984137732', '59 Điện Biên Phủ, Huế'),
('BS. Vũ Hải Cường', 'vũhảicường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nhi', '../../../assets/images/Doctors/avatar-21.jpg', '0955937825', '556 Nguyễn Trãi, Huế'),
('BS. Phạm Thanh Cường', 'phạmthanhcường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Sản', '../../../assets/images/Doctors/avatar-22.jpg', '0990664347', '916 Cách Mạng Tháng 8, TP.HCM'),
('BS. Phạm Văn Cường', 'phạmvăncường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Thần kinh', '../../../assets/images/Doctors/avatar-23.jpg', '0942095468', '499 Cách Mạng Tháng 8, Cần Thơ'),
('BS. Đỗ Văn Bình', 'Đỗvănbình@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Hô hấp', '../../../assets/images/Doctors/avatar-24.jpg', '0931577379', '311 Cách Mạng Tháng 8, Đà Nẵng'),
('BS. Nguyễn Quốc Thảo', 'nguyễnquốcthảo@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nhi', '../../../assets/images/Doctors/avatar-25.jpg', '0986099603', '507 Nguyễn Trãi, Cần Thơ'),
('BS. Trần Thị Cường', 'trầnthịcường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-26.jpg', '0930766115', '218 Phan Đình Phùng, Huế'),
('BS. Đỗ Thanh Cường', 'Đỗthanhcường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Sản', '../../../assets/images/Doctors/avatar-27.jpg', '0956901666', '253 Trường Chinh, Đà Nẵng'),
('BS. Hoàng Hữu Bình', 'hoànghữubình@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-28.jpg', '0935021655', '821 Phan Đình Phùng, Đà Nẵng'),
('BS. Đỗ Hải Linh', 'Đỗhảilinh@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nhi', '../../../assets/images/Doctors/avatar-29.jpg', '0959736310', '112 Trường Chinh, TP.HCM'),
('BS. Lê Minh An', 'lêminhan@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Thần kinh', '../../../assets/images/Doctors/avatar-30.jpg', '0986785081', '181 Hai Bà Trưng, Hà Nội'),
('BS. Lê Quốc Thắng', 'lêquốcthắng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Sản', '../../../assets/images/Doctors/avatar-31.jpg', '0950606566', '319 Nguyễn Trãi, Đà Nẵng'),
('BS. Phan Hải Bình', 'phanhảibình@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Sản', '../../../assets/images/Doctors/avatar-32.jpg', '0922230142', '594 Điện Biên Phủ, Biên Hòa'),
('BS. Nguyễn Đức Thắng', 'nguyễnĐứcthắng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-33.jpg', '0971647700', '289 Nguyễn Trãi, Cần Thơ'),
('BS. Hoàng Hải Linh', 'hoànghảilinh@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nhi', '../../../assets/images/Doctors/avatar-34.jpg', '0998344922', '178 Cách Mạng Tháng 8, Hải Phòng'),
('BS. Phạm Đức Bình', 'phạmĐứcbình@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-35.jpg', '0965507966', '677 Lê Lợi, Biên Hòa'),
('BS. Trần Hải Thắng', 'trầnhảithắng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Thần kinh', '../../../assets/images/Doctors/avatar-36.jpg', '0987727394', '362 Hai Bà Trưng, TP.HCM'),
('BS. Trần Hữu Thảo', 'trầnhữuthảo@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-37.jpg', '0969679265', '299 Hai Bà Trưng, Cần Thơ'),
('BS. Nguyễn Thị Dũng', 'nguyễnthịdũng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Da liễu', '../../../assets/images/Doctors/avatar-38.jpg', '0982882751', '812 Lê Lợi, Huế'),
('BS. Phan Văn Bình', 'phanvănbình@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Hô hấp', '../../../assets/images/Doctors/avatar-39.jpg', '0934723153', '640 Phan Đình Phùng, Hà Nội'),
('BS. Đặng Minh Linh', 'Đặngminhlinh@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Sản', '../../../assets/images/Doctors/avatar-40.jpg', '0915107439', '764 Cách Mạng Tháng 8, Hà Nội'),
('BS. Vũ Xuân Cường', 'vũxuâncường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Thần kinh', '../../../assets/images/Doctors/avatar-41.jpg', '0962862746', '171 Phan Đình Phùng, Huế'),
('BS. Phan Thanh An', 'phanthanhan@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Tim mạch', '../../../assets/images/Doctors/avatar-42.jpg', '0967036430', '328 Nguyễn Trãi, Huế'),
('BS. Hoàng Quốc Giang', 'hoàngquốcgiang@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nhi', '../../../assets/images/Doctors/avatar-43.jpg', '0944002214', '680 Nguyễn Trãi, Hà Nội'),
('BS. Nguyễn Đức Thắng', 'nguyễnĐứcthắng@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nhi', '../../../assets/images/Doctors/avatar-44.jpg', '0977223656', '875 Cách Mạng Tháng 8, TP.HCM'),
('BS. Đỗ Hải Cường', 'Đỗhảicường@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Da liễu', '../../../assets/images/Doctors/avatar-45.jpg', '0916323734', '48 Trường Chinh, Đà Nẵng'),
('BS. Bùi Quốc Bình', 'bùiquốcbình@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Da liễu', '../../../assets/images/Doctors/avatar-46.jpg', '0912272522', '500 Hai Bà Trưng, Hà Nội'),
('BS. Hoàng Ngọc Linh', 'hoàngngọclinh@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nhi', '../../../assets/images/Doctors/avatar-47.jpg', '0932322442', '668 Cách Mạng Tháng 8, Biên Hòa'),
('BS. Lê Thị An', 'lêthịan@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Nội tổng quát', '../../../assets/images/Doctors/avatar-48.jpg', '0927381874', '664 Cách Mạng Tháng 8, Đà Nẵng'),
('BS. Lê Hải Linh', 'lêhảilinh@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Hô hấp', '../../../assets/images/Doctors/avatar-49.jpg', '0919865129', '950 Điện Biên Phủ, Đà Nẵng'),
('BS. Nguyễn Hải Giang', 'nguyễnhảigiang@doctorhub.com', '$2y$10$lXQbw.rj9srBWuwADbJz4.FzLx6.X1CCUl5c6OsXqaNLz832PxB.6', 'Khoa Hô hấp', '../../../assets/images/Doctors/avatar-50.jpg', '0976598877', '1 Trường Chinh, Đà Nẵng');



ALTER TABLE doctors
ADD education TEXT,
ADD qualification VARCHAR(255),
ADD experience TEXT;

UPDATE doctors SET
    education = 'Cử nhân Y khoa, Đại học Y Hà Nội (2005-2011)',
    qualification = 'Thạc sĩ Da liễu',
    experience = '10 năm kinh nghiệm tại Bệnh viện Da liễu Trung ương'
WHERE id = 1;

UPDATE doctors SET
    education = 'Cử nhân Y khoa, Đại học Y Dược TP.HCM (2006-2012)',
    qualification = 'Bác sĩ Chuyên khoa I Nội tổng quát',
    experience = '8 năm kinh nghiệm tại Bệnh viện Chợ Rẫy'
WHERE id = 2;

UPDATE doctors SET
    education = 'Cử nhân Y khoa, Đại học Y Dược Huế (2004-2010)',
    qualification = 'Bác sĩ Chuyên khoa II Nội tổng quát',
    experience = '12 năm kinh nghiệm tại Bệnh viện Trung ương Huế'
WHERE id = 3;

UPDATE doctors SET
    education = 'Cử nhân Y khoa, Đại học Y Dược Cần Thơ (2003-2009)',
    qualification = 'Thạc sĩ Nội khoa',
    experience = '15 năm kinh nghiệm tại Bệnh viện Đa khoa Cần Thơ'
WHERE id = 4;

UPDATE doctors SETappointments
    education = 'Cử nhân Y khoa, Đại học Y Hà Nội (2007-2013)',
    qualification = 'Bác sĩ Chuyên khoa I Nội tổng quát',
    experience = '7 năm kinh nghiệm tại Bệnh viện Bạch Mai'
WHERE id = 5;

CREATE TABLE IF NOT EXISTS prescriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    patient_id INT,
    doctor_id INT,
    medication_details TEXT,
    instructions TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (appointment_id) REFERENCES appointments(id),
    FOREIGN KEY (patient_id) REFERENCES patients(id),
    FOREIGN KEY (doctor_id) REFERENCES users(id)
);

INSERT INTO patients (id, name, email, phone, address) VALUES
(1, 'vinh', 'vinhnam04012004@gmail.com', '0352032375', 'TP.HCM, Quận 1, TP. Hồ Chí Minh'),
(2, 'Hoang An Tesst', 'vinhnam04012004@gmail.com', '0352032375', 'TP.HCM, Ba Đình, Hà Nội'),
(3, 'Demo Email', 'vinhnam04012004@gmail.com', '0352032375', 'TP.HCM, Đức Trọng, Đà Lạt');



-- Bảng thuốc
CREATE TABLE IF NOT EXISTS medications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    dosage VARCHAR(100),
    unit VARCHAR(50),
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Thêm dữ liệu mẫu cho bảng thuốc
INSERT INTO medications (name, description, dosage, unit, price, stock) VALUES
('Paracetamol', 'Giảm đau, hạ sốt', '500mg', 'Viên', 5000, 1000),
('Amoxicillin', 'Kháng sinh', '500mg', 'Viên', 8000, 800),
('Omeprazole', 'Giảm acid dạ dày', '20mg', 'Viên', 6000, 500),
('Loratadine', 'Thuốc kháng histamine', '10mg', 'Viên', 7000, 700),
('Vitamin C', 'Bổ sung vitamin C', '1000mg', 'Viên', 3000, 1500),
('Aspirin', 'Giảm đau, chống viêm', '81mg', 'Viên', 4000, 900),
('Ibuprofen', 'Giảm đau, chống viêm', '400mg', 'Viên', 5500, 850),
('Lisinopril', 'Điều trị cao huyết áp', '10mg', 'Viên', 9000, 400),
('Simvastatin', 'Giảm cholesterol', '20mg', 'Viên', 10000, 350),
('Metformin', 'Điều trị tiểu đường', '500mg', 'Viên', 8500, 600);

-- Bảng đơn thuốc
CREATE TABLE IF NOT EXISTS prescriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    doctor_id INT NOT NULL,
    patient_name VARCHAR(100) NOT NULL,
    diagnosis TEXT,
    instructions TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('draft', 'finalized', 'dispensed', 'paid') DEFAULT 'draft',
    total_amount DECIMAL(10,2) DEFAULT 0,
    FOREIGN KEY (appointment_id) REFERENCES appointments(id),
    FOREIGN KEY (doctor_id) REFERENCES users(id)
);

-- Bảng chi tiết đơn thuốc
CREATE TABLE IF NOT EXISTS prescription_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prescription_id INT NOT NULL,
    medication_id INT NOT NULL,
    quantity INT NOT NULL,
    instructions TEXT,
    days INT DEFAULT 0,
    times_per_day INT DEFAULT 0,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (prescription_id) REFERENCES prescriptions(id),
    FOREIGN KEY (medication_id) REFERENCES medications(id)
);


