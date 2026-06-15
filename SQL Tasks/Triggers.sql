use intro_sql;
CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);
CREATE TABLE employee_logs(
    id INT  PRIMARY KEY,
    action VARCHAR(20),
    emp_id INT,
    old_salary INT,
    new_salary INT
);
DELIMITER //

CREATE TRIGGER before_employee_insert
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SET NEW.salary = 0;
    END IF;
END //

DELIMITER ;
INSERT INTO employee VALUES(1,'John',-500);
DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employee
FOR EACH ROW
BEGIN
    INSERT INTO employee_logs(action,emp_id,new_salary)
    VALUES('INSERT',NEW.emp_id,NEW.salary);
END //

DELIMITER ;
INSERT INTO employee VALUES(2,'Alex',50000);
DELIMITER //

CREATE TRIGGER before_salary_update
BEFORE UPDATE ON employee
FOR EACH ROW
BEGIN
    IF NEW.salary < OLD.salary THEN
        SET NEW.salary = OLD.salary;
    END IF;
END //

DELIMITER ;

SET SQL_SAFE_UPDATES = 0;
UPDATE employee
SET salary=60000
WHERE emp_id=2;

DELIMITER //

CREATE TRIGGER after_employee_delete
AFTER DELETE ON employee
FOR EACH ROW
BEGIN
INSERT INTO employee_logs(action,emp_id,old_salary)
VALUES('DELETE',OLD.emp_id,OLD.salary);
END //

DELIMITER ;
DELETE FROM employee
WHERE emp_id=2;
show triggers;