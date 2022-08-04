INSERT INTO tb_user (name, email, password) VALUES ('Alex Brow','alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brow','bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green','maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('BootCamp HTML','https://get.pxhere.com/photo/training-course-training','https://get.pxhere.com/photo/training-course-training');
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2022-07-13T03:00:00.12345Z',TIMESTAMP WITH TIME ZONE '2022-07-13T03:00:00.12345Z',1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2022-12-13T03:00:00.12345Z',TIMESTAMP WITH TIME ZONE '2022-12-13T03:00:00.12345Z',1);

INSERT INTO tb_resource(title, description, position,img_Uri,type, offer_id ) VALUES ('TRILHA HTML', 'trilha principal do curso', 1,'https://get.pxhere.com/photo/training-course-training', 1,1);
INSERT INTO tb_resource(title, description, position,img_Uri,type, offer_id ) VALUES ('Forum', 'Tire suas duvidas', 2,'https://get.pxhere.com/photo/training-course-training', 2,1);
INSERT INTO tb_resource(title, description, position,img_Uri,type, offer_id ) VALUES ('Lives', 'Lives exclusivas para a turma', 3,'https://get.pxhere.com/photo/training-course-training', 0 ,1);

INSERT INTO tb_section(title, description, position,img_Uri, resouce_id , prequisite_id ) VALUES ('Capitulo 1', 'Começando', 1,'https://get.pxhere.com/photo/training-course-training', 1,null);
INSERT INTO tb_section(title, description, position,img_Uri, resouce_id , prequisite_id ) VALUES ('Capitulo 2', 'Continuar', 2,'https://get.pxhere.com/photo/training-course-training', 1,1);
INSERT INTO tb_section(title, description, position,img_Uri, resouce_id , prequisite_id ) VALUES ('Capitulo 3', 'terminar', 3,'https://get.pxhere.com/photo/training-course-training', 1,2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update ) VALUES (1,1,TIMESTAMP WITH TIME ZONE '2022-07-13T13:00:00.12345Z', null, true,false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES  (2,1,TIMESTAMP WITH TIME ZONE '2022-07-13T13:00:00.12345Z', null, true,false);

INSERT INTO tb_lesson(title,position,section_id) VALUES('Aula 1 do capitulo 1', 1, 1 );
INSERT INTO tb_content(id, text_Content,video_Uri ) VALUES (1,'mati apoio:abc','https://youtu.be/CuAMneXbhYE');

INSERT INTO tb_lesson(title, position,section_id) VALUES('Aula 2 do capitulo 1', 2, 1 );
INSERT INTO tb_content(id, text_Content,video_Uri ) VALUES (2,'','https://youtu.be/CuAMneXbhYE');

INSERT INTO tb_lesson(title, position,section_id) VALUES('Aula 3 do capitulo 1', 3, 1 );
INSERT INTO tb_content(id, text_Content,video_Uri ) VALUES (3,'','https://youtu.be/CuAMneXbhYE');

INSERT INTO tb_lesson(title, position,section_id) VALUES('Tarefa do capitulo 1', 4, 1 );
INSERT INTO tb_task(id, description, question_Count, approval_Count, weight, due_Date) VALUES (4,'Fazer um trabalho',5,4,1.0,TIMESTAMP WITH TIME ZONE '2022-07-14T13:00:00.12345Z' );

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (1,1,1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (2,1,1);

