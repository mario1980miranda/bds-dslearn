INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Mario Miranda', 'mario.luiz.miranda@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_role_user (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_role_user (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_role_user (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_role_user (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_role_user (user_id, role_id) VALUES (3, 3);

insert into tb_course ( name , img_uri , img_gray_uri ) values ('Bootcamp HTML', 'https://free-vectors.net/_ph/10/2/186696827.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');