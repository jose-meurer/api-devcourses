--Users
INSERT INTO tb_user (cpf, name, email, birth_date, password) VALUES ('12345678910', 'Alex Brown', 'alex@gmail.com', TIMESTAMP WITH TIME ZONE '1990-12-12T03:00:00Z', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (cpf, name, email, birth_date, password) VALUES ('12345678911', 'Maria Green', 'maria@gmail.com', TIMESTAMP WITH TIME ZONE '1993-07-14T03:00:00Z', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (cpf, name, email, birth_date, password) VALUES ('12345678912', 'Bob Brown', 'bob@gmail.com', TIMESTAMP WITH TIME ZONE '1985-02-09T03:00:00Z', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
--Phones
INSERT INTO tb_phone (user_id, name, phone) VALUES (1, '11999123456', 'cellphone');
INSERT INTO tb_phone (user_id, name, phone) VALUES (1, '1177123456', 'homephone');
INSERT INTO tb_phone (user_id, name, phone) VALUES (2, '1177123456', 'homephone');
INSERT INTO tb_phone (user_id, name, phone) VALUES (3, '11999123456', 'cellphone');
--Roles
INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
--User authorizations
INSERT INTO tb_user_role (user_id, role_id) VALUES(1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES(2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES(2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES(3, 3);
--Notifications
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', false, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: tudo ok', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', false, '/offers/1/resource/1/sections/1', 1);

