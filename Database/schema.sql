CREATE TABLE users ( 

id INT PRIMARY KEY auto_increment,

username VARCHAR (50) UNIQUE NOT NULL, 

email VARCHAR (100) unique NOT NULL, 

password VARCHAR (255) NOT NULL, 

created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 

); 


CREATE TABLE tasks ( 

id INT PRIMARY KEY auto_increment, 

user_id INT NOT NULL, 

title VARCHAR (50) NOT NULL, 

description VARCHAR (255), 

priority VARCHAR (50) NOT NULL, 

status VARCHAR (50) NOT NULL, 

due_date DATE, 

created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 



FOREIGN KEY (user_id) REFERENCES users (id) 

ON DELETE CASCADE 

ON UPDATE CASCADE

);