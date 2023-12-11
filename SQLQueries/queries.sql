
-- Table Creation - Members

CREATE TABLE Members (
    m_ID INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(15),
    date_of_birth DATE
);


 
-- Inserting Data into Members Table 

INSERT INTO Members (m_ID, first_name, last_name, email, address, phone_number, date_of_birth) 

VALUES (1, 'Alberto', 'C', 'alberto.c@email.com', '123 Rideau St', 613000000, '1810-02-19'),
 (2, 'Ariba', 'R', 'ariba.c@email.com', '123 Rideau St', 613000000, '1245-02-19');


--  Table Creation - Profiles

CREATE TABLE Profiles(
	m_ID INT,
    health_stats VARCHAR(255),
    FOREIGN KEY (m_ID) REFERENCES Members(m_ID)	
);

--  Insert Into - Profiles

INSERT INTO Profiles (m_ID, health_stats) 

VALUES (1, 'More amazing health stats'),
 (2, 'Amazing Health Stats');

-- Update Query 

UPDATE Members 
SET email = 'new.email@email.com' 
WHERE m_ID = 1;

-- Select Query  

SELECT * FROM Members 
WHERE first_name = 'Ariba';
 
SELECT * FROM Profiles 
WHERE m_ID = 1;

-- Deletion Query 

DELETE FROM Profiles 
WHERE m_ID = 1;


