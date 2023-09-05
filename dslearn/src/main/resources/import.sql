INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Mario Miranda', 'mario.luiz.miranda@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_role_user (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_role_user (user_id, role_id) VALUES (2, 1);
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

INSERT INTO TB_SECTION ( TITLE , DESCRIPTION , POSITION , IMG_URI , RESOURCE_ID , PREREQUISITE_ID ) VALUES ('Capitulo 1' , 'Neste capitulo vamos comecar' , 1 , 'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg' , 1 , null );
INSERT INTO TB_SECTION ( TITLE , DESCRIPTION , POSITION , IMG_URI , RESOURCE_ID , PREREQUISITE_ID ) VALUES ('Capitulo 2' , 'Neste capitulo vamos continuar' , 2 , 'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg' , 1 , 1);
INSERT INTO TB_SECTION ( TITLE , DESCRIPTION , POSITION , IMG_URI , RESOURCE_ID , PREREQUISITE_ID ) VALUES ('Capitulo 3' , 'Neste capitulo vamos terminar' , 3 , 'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg' , 1 , 2 );

INSERT INTO TB_ENROLLMENT ( USER_ID , OFFER_ID , ENROLL_MOMENT , REFUND_MOMENT , AVAILABLE , ONLY_UPDATE ) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2020-11-21T10:00:00.12345Z',null,true,false);
INSERT INTO TB_ENROLLMENT ( USER_ID , OFFER_ID , ENROLL_MOMENT , REFUND_MOMENT , AVAILABLE , ONLY_UPDATE ) VALUES (2,1,TIMESTAMP WITH TIME ZONE '2020-11-21T10:00:00.12345Z',null,true,false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Conteudo da aula 1', 'http://link-para-um-video.com');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Conteudo da aula 2', 'http://link-para-um-video.com');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Conteudo da aula 3', 'http://link-para-um-video.com');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa 1 do capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, aproval_Count, weigth, due_Date) VALUES (4, 'Realizar a tarefa XPTO', 10, 8, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T23:59:59.00000Z');

INSERT INTO tb_lessons_done (user_id, offer_id, lesson_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (user_id, offer_id, lesson_id) VALUES (1, 1, 2);