-- USUARIOS

INSERT INTO users (username, email, password)
VALUES ('Jenny', 'jennifer.villar@estudiant.fjaverianas.com', '1234'),
       ('Judith', 'jlopez@fjaverianas.com', '4567'),
       ('Marc', 'mcallejon@fjaverianas.com','5353');


-- TAREAS

INSERT INTO tasks (user_id, title, description, priority, status, due_date)
VALUES (1, 'PHP practica', 'Repasar PDO y código', 'alta', 'Pendiente', '2026-09-26'),
       (1, 'Practica HTML','Diseñar y depurar', 'alta', 'Pendiente', '2026-09-26'),
       (1, 'Practica CSS', 'Diseñar y trabajar con flex', 'media', 'Pendiente', '2026-09-26'),
       (1, 'Practica permisos BBDD', 'Otorga y modificar permisos', 'media', 'En proceso', '2026-09-26'),
       (1, 'Practica JavaScript', 'Añadir funciones y practicar llamadas', 'alta', 'Pendiente', '2026-09-26');
