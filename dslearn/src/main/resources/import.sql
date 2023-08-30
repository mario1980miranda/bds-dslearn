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

INSERT INTO TB_OFFER ( EDITION , START_MOMENT , END_MOMENT , COURSE_ID ) VALUES ('1.0' , TIMESTAMP WITH TIME ZONE '2020-11-15T02:00:00.12345Z' , TIMESTAMP WITH TIME ZONE '2021-11-15T02:00:00.12345Z', 1 );
INSERT INTO TB_OFFER ( EDITION , START_MOMENT , END_MOMENT , COURSE_ID ) VALUES ('2.0' , TIMESTAMP WITH TIME ZONE '2021-11-15T02:00:00.12345Z' , TIMESTAMP WITH TIME ZONE '2022-11-15T02:00:00.12345Z', 1 );

INSERT INTO TB_NOTIFICATION ( MOMENT , READ , ROUTE , TEXT , USER_ID ) VALUES (TIMESTAMP WITH TIME ZONE '2020-11-20T20:50:07.12345Z' , 0 , '' , 'Notification test' , 1 );
INSERT INTO TB_NOTIFICATION ( MOMENT , READ , ROUTE , TEXT , USER_ID ) VALUES (TIMESTAMP WITH TIME ZONE '2020-11-28T20:50:07.12345Z' , 1 , '' , 'Test notification' , 2 );

INSERT INTO TB_RESOURCE ( DESCRIPTION , EXTERNAL_LINK , IMG_URI , POSITION , TITLE , TYPE , OFFER_ID ) VALUES ( 'Trilha HTML' , '' , 'https://upload.wikimedia.org/wikipedia/commons/3/3b/Javascript_Logo.png' , 1 , 'Javascript' , 1 , 1 );
INSERT INTO TB_RESOURCE ( DESCRIPTION , EXTERNAL_LINK , IMG_URI , POSITION , TITLE , TYPE , OFFER_ID ) VALUES ( 'FORUM' , '' , 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS9v00g4XP1X0sFzxp64FIBSIgchtoRkAZSj_fjzq75u16gd3RcOmWYHJazTTHc6WSt30&usqp=CAU' , 2 , 'Tire suas dúvidas' , 2 , 1 );
INSERT INTO TB_RESOURCE ( DESCRIPTION , EXTERNAL_LINK , IMG_URI , POSITION , TITLE , TYPE , OFFER_ID ) VALUES ( 'Lives' , '' , 'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg' , 0 , 'Lives para a turma' , 1 , 1 );