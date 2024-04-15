CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

select * from employee_table
order by salary desc

-------

with t_category as (
	select distinct salary,
		rank() over (order by salary desc) as salary_rank
		from employee_table
)
select salary from t_category
where salary_rank = 3;


