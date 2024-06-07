-- Crie e popule as tabelas plans e users

CREATE TABLE plans(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  price FLOAT(5,2) NOT NULL
);

CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  birthday DATE NOT NULL,
  active BOOLEAN DEFAULT TRUE NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(id)
);

INSERT INTO plans(id, name, price)
VALUES 
(1, 'Anual', 39.90),
(2, 'Mensal', 5.90),
(3, 'Trimestral', 19.90);

INSERT INTO users(id, full_name, email, birthday, active, plan_id)
VALUES 
(1, 'Pedro', 'pedro@trybefy.com', '1990-01-01', TRUE, 1),
(2, 'Camila', 'camila@trybefy.com', '1988-12-01', TRUE, 1),
(3, 'Guilherme', 'guilherme@trybefy.com', '1988-12-01', TRUE, 2),
(4, 'Andressa', 'andressa@trybefy.com', '1984-07-20', FALSE, 3),
(5, 'Luís', 'luis@trybefy.com', '2000-01-01', TRUE, 2),
(6, 'Cássia', 'cassia@trybefy.com', '1995-12-01', TRUE, 1),
(7, 'Simone', 'simone@trybefy.com', '1988-12-01', TRUE, 1),
(8, 'Rogério', 'rogerio@trybefy.com', '1979-12-01', TRUE, 3),
(9, 'Júlio', 'julio@trybefy.com', '1994-06-20', FALSE, 2),
(10, 'Melissa', 'melissa@trybefy.com', '1997-04-11', TRUE, 2);