ALTER TABLE employees ALTER COLUMN employee_id RESTART WITH 10002;

CREATE TABLE IF NOT EXISTS employees (
    employee_id BIGINT PRIMARY KEY,
    role VARCHAR(50),
    username VARCHAR(50),
    password VARCHAR(100),
    last_name VARCHAR(100),
    first_name VARCHAR(100),
    birthday DATE,
    address VARCHAR(600),
    phone_number VARCHAR(60),
    sss_no VARCHAR(60),
    philhealth_no VARCHAR(60),
    tin_no VARCHAR(60),
    pagibig_no VARCHAR(60),
    status VARCHAR(20),
    position VARCHAR(50),
    immediate_supervisor VARCHAR(50),
    basic_salary DECIMAL(10,2),
    rice_subsidy DECIMAL(10,2),
    phone_allowance DECIMAL(10,2),
    clothing_allowance DECIMAL(10,2),
    gross_semi_monthly_rate DECIMAL(10,2),
    hourly_rate DECIMAL(10,2)
);


CREATE TABLE IF NOT EXISTS attendance (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    date_of_attendance DATE,
    time_in VARCHAR(10),
    time_out VARCHAR(10),
    is_late BOOLEAN DEFAULT FALSE,
    is_absent BOOLEAN DEFAULT FALSE,
    on_leave BOOLEAN DEFAULT FALSE,
    employee_id BIGINT,
    FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);


CREATE TABLE IF NOT EXISTS inventory (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    date_entered DATE,
    stock_label VARCHAR(150),
    brand VARCHAR(100),
    engine_number VARCHAR(150),
    status VARCHAR(60)
);


-- EMPLOYEES INSERTION
INSERT INTO employees (employee_id, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10001, 'USER', 'josecrisostomo', 'password123', 'Crisostomo', 'Jose', '1988-02-14', '17/85 Stracke Via Suite 042, Poblacion, Las Piñas 4783 Dinagat Islands', '918-621-603', '49-1632020-8', '382189453145', '317-674-022-000', '441093369646', 'Regular', 'HR Manager', 'N/A', 62670.0, 1500.0, 1000.0, 1000.0, 31335.0, 373.04);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'christianmata', 'password123', 'Mata', 'Christian', '1987-10-21', '90 OKeefe Spur Apt. 379, Catigbian 2772 Sulu', '783-776-744', '49-2959312-6', '824187961962', '103-100-522-000', '631052853464', 'Regular', 'Account Team Leader', 'Romualdez, Fredrick', 42975.0, 1500.0, 800.0, 800.0, 21488.0, 255.8);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'bradsanjose', 'password123', 'San Jose', 'Brad', '1996-03-15', '99 Strosin Hills, Poblacion, Bislig 5340 Tawi-Tawi', '797-009-261', '40-2400714-1', '239192926939', '672-474-690-000', '210850209964', 'Regular', 'HR Team Leader', 'Crisostomo, Jose', 42975.0, 1500.0, 800.0, 800.0, 21488.0, 255.8);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'anthonysalcedo', 'password123', 'Salcedo', 'Anthony', '1993-09-14', '93/54 Shanahan Alley Apt. 183, Santo Tomas 1572 Masbate', '070-766-300', '26-9647608-3', '126445315651', '210-805-911-000', '218002473454', 'Regular', 'Payroll Manager', 'Crisostomo, Jose', 60825.0, 1500.0, 1000.0, 1000.0, 30413.0, 362.05);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'aliceromualdez', 'password123', 'Romualdez', 'Alice', '1992-05-14', '12A/33 Upton Isle Apt. 420, Roxas City 1814 Surigao del Norte', '983-606-799', '55-4476527-2', '545652640232', '888-572-294-000', '211385556888', 'Regular', 'HR Rank and File', 'San Jose, Brad', 22500.0, 1500.0, 500.0, 500.0, 11250.0, 133.93);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'rosieatienza', 'password123', 'Atienza', 'Rosie', '1948-09-24', '90A Dibbert Terrace Apt. 190, San Lorenzo 6056 Davao del Norte', '266-036-427', '41-0644692-3', '708988234853', '604-997-793-000', '260107732354', 'Regular', 'HR Rank and File', 'San Jose, Brad', 22500.0, 1500.0, 500.0, 500.0, 11250.0, 133.93);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'marthafarala', 'password123', 'Farala', 'Martha', '1942-01-11', '42/25 Sawayn Stream, Ubay 1208 Zamboanga del Norte', '329-034-366', '45-5656375-0', '233693897247', '210-835-851-000', '631130283546', 'Regular', 'Payroll Rank and File', 'Farala, Martha', 24000.0, 1500.0, 500.0, 500.0, 12000.0, 142.86);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'leilamartinez', 'password123', 'Martinez', 'Leila', '1970-07-11', '37/46 Kulas Roads, Maragondon 0962 Quirino', '877-110-749', '27-2090996-4', '515741057496', '275-792-513-000', '101205445886', 'Regular', 'Payroll Rank and File', 'Farala, Martha', 24000.0, 1500.0, 500.0, 500.0, 12000.0, 142.86);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'allisonsanjose', 'password123', 'San Jose', 'Allison', '1986-06-24', '08 Grant Drive Suite 406, Poblacion, Iloilo City 9186 La Union', '179-075-129', '45-3251383-0', '745148459521', '121-203-336-000', '114901859343', 'Regular', 'Account Rank and File', 'Mata, Christian', 22500.0, 1500.0, 500.0, 500.0, 11250.0, 133.93);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'cydneyrosario', 'password123', 'Rosario', 'Cydney', '1996-10-06', '93A/21 Berge Points, Tapaz 2180 Quezon', '868-819-912', '49-1629900-2', '579253435499', '122-244-511-000', '265104358643', 'Regular', 'Account Rank and File', 'Mata, Christian', 22500.0, 1500.0, 500.0, 500.0, 11250.0, 133.93);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'josielopez', 'password123', 'Lopez', 'Josie', '1937-01-14', '49 Springs Apt. 266, Poblacion, Taguig 3200 Occidental Mindoro', '478-355-427', '44-8563448-3', '431709011012', '218-489-737-000', '113071293354', 'Regular', 'Payroll Team Leader', 'Salcedo, Anthony', 38475.0, 1500.0, 800.0, 800.0, 19238.0, 229.02);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'selenadeleon', 'password123', 'De Leon', 'Selena', '1945-02-20', '89A Armstrong Trace, Compostela 7874 Maguindanao', '975-432-139', '27-2090208-8', '587272469938', '482-259-498-000', '719007608464', 'Regular', 'Account Team Leader', 'Romualdez, Fredrick', 41850.0, 1500.0, 800.0, 800.0, 20925.0, 249.11);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'fredrickromualdez', 'password123', 'Romualdez', 'Fredrick', '1985-03-10', '22A/52 Lubowitz Meadows, Pililla 4895 Zambales', '023-079-009', '26-8768374-1', '308366860059', '598-065-761-000', '223057707853', 'Regular', 'Account Manager', 'Crisostomo, Jose', 63500.0, 1500.0, 1000.0, 1000.0, 31750.0, 377.98);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'markbautista', 'password123', 'Bautista', 'Mark', '1961-02-12', '65 Murphy Center Suite 094, Poblacion, Palayan 5636 Quirino', '683-725-348', '49-1647342-5', '399665157135', '273-970-941-000', '260054585575', 'Regular', 'Account Rank and File', 'Mata, Christian', 23250.0, 1500.0, 500.0, 500.0, 11625.0, 138.39);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'darlenelazaro', 'password123', 'Lazaro', 'Darlene', '1985-11-25', '47A/94 Larkin Plaza Apt. 179, Poblacion, Caloocan 2751 Quirino', '740-721-558', '45-5617168-2', '606386917510', '354-650-951-000', '104907708845', 'Probationary', 'Account Rank and File', 'Mata, Christian', 23250.0, 0.0, 0.0, 0.0, 11625.0, 138.39);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'kolbydelossantos', 'password123', 'Delos Santos', 'Kolby', '1980-02-26', '06A Gulgowski Extensions, Bongabon 6085 Zamboanga del Sur', '739-443-033', '52-0109570-6', '357451271274', '187-500-345-000', '113017988667', 'Probationary', 'Account Rank and File', 'Mata, Christian', 24000.0, 0.0, 0.0, 0.0, 12000.0, 142.86);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'vellasantos', 'password123', 'Santos', 'Vella', '1983-12-31', '99A Padberg Spring, Poblacion, Mabalacat 3959 Lanao del Sur', '955-879-269', '52-9883524-3', '548670482885', '101-558-994-000', '360028104576', 'Probationary', 'Account Rank and File', 'Mata, Christian', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'tomasdelrosario', 'password123', 'Del Rosario', 'Tomas', '1978-12-18', '80A/48 Ledner Ridges, Poblacion, Kabankalan 8870 Marinduque', '882-550-989', '45-5866331-6', '953901539995', '560-735-732-000', '913108649964', 'Probationary', 'Account Rank and File', 'Mata, Christian', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'jacklyntolentino', 'password123', 'Tolentino', 'Jacklyn', '1944-05-19', '96/48 Watsica Flats Suite 734, Poblacion, Malolos 1844 Ifugao', '675-757-366', '47-1692793-0', '753800654114', '841-177-857-000', '210546661243', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 24000.0, 0.0, 0.0, 0.0, 12000.0, 142.86);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'percivalgutierrez', 'password123', 'Gutierrez', 'Percival', '1970-12-18', '58A Wilderman Walks, Poblacion, Digos 5822 Davao del Sur', '512-899-876', '40-9504657-8', '797639382265', '502-995-671-000', '210897095686', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 24750.0, 0.0, 0.0, 0.0, 12375.0, 147.32);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'garfieldmanalaysay', 'password123', 'Manalaysay', 'Garfield', '1966-08-28', '60 Goyette Valley Suite 219, Poblacion, Tabuk 3159 Lanao del Sur', '948-628-136', '45-3298166-4', '810909286264', '336-676-445-000', '211274476563', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 24750.0, 0.0, 0.0, 0.0, 12375.0, 147.32);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'lizethvillegas', 'password123', 'Villegas', 'Lizeth', '1981-12-12', '66/77 Mann Views, Luisiana 1263 Dinagat Islands', '332-372-215', '40-2400719-4', '934389652994', '210-395-397-000', '122238077997', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 24000.0, 0.0, 0.0, 0.0, 12000.0, 142.86);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'carolramos', 'password123', 'Ramos', 'Carol', '1978-08-20', '72/70 Stamm Spurs, Bustos 4550 Iloilo', '250-700-389', '60-1152206-4', '351830469744', '395-032-717-000', '212141893454', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'emeliamaceda', 'password123', 'Maceda', 'Emelia', '1963-04-14', '50A/83 Bahringer Oval Suite 145, Kiamba 7688 Nueva Ecija', '973-358-041', '54-1331005-0', '465087894112', '215-973-013-000', '515012579765', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);

INSERT INTO employees (role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES ('USER', 'deliaaguilar', 'password123', 'Aguilar', 'Delia', '1939-01-27', '95 Cremin Junction, Surallah 2809 Cotabato', '529-705-439', '52-1859253-1', '136451303068', '599-312-588-000', '110018813465', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);


-- ATTENDANCE INSERTION
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jose Crisostomo', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josecrisostomo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-15', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-16', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-19', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-20', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-21', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-22', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-23', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-26', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-27', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-28', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-29', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Christian Mata', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'christianmata'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-06', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-15', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-26', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-05', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-14', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-25', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-03', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-14', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-23', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-02', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-13', '11:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-15', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-16', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-19', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-20', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-21', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-22', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-23', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-26', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-27', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-28', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-29', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Brad San Jose', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'bradsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-15', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-16', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-19', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-20', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-21', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-22', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-23', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-26', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-27', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-28', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-29', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Anthony Salcedo', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'anthonysalcedo'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-05', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-14', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-23', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-04', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-13', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-24', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-02', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-11', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-22', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-01', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-12', '8:15', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-15', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-16', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-19', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-20', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-21', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-22', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-23', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-26', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-27', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-28', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-29', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Alice Romualdez', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'aliceromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-15', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-16', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-19', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-20', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-21', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-22', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-23', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-26', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-27', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-28', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-29', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Rosie Atienza', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'rosieatienza'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-01', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-12', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-21', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-09-30', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-11', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-20', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-10-31', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-09', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-18', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-29', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-19', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-28', '8:27', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Martha Farala', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'marthafarala'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-01', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-06', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-12', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-15', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-21', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-26', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-09-30', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-05', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-11', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-14', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-20', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-25', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-10-31', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-03', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-09', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-14', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-18', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-23', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-29', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-02', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-13', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-19', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-22', '8:10', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-28', '8:01', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Leila Martinez', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'leilamartinez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-01', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-06', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-07', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-09', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-12', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-21', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-09-30', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-05', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-11', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-20', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-10-31', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-09', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-18', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-29', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-19', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-28', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Allison San Jose', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'allisonsanjose'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-11', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-21', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Cydney Rosario', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'cydneyrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-05', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-14', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-23', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-04', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-13', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-24', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-02', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-11', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-22', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-01', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-12', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-21', '10:30', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Josie Lopez', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'josielopez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Selena De Leon', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'selenadeleon'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Fredrick Romualdez', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'fredrickromualdez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-07', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Mark Bautista', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'markbautista'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Darlene Lazaro', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'darlenelazaro'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-01', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-12', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-21', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-09-30', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-11', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-18', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-20', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-10-31', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-09', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-18', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-29', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-19', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-28', '8:28', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Kolby Delos Santos', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'kolbydelossantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-06-09', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-13', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-15', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-19', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-26', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-27', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-05', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-14', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-25', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-03', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-14', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-23', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-01-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-02', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-13', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-22', '8:05', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Vella Santos', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'vellasantos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-20', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-21', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-27', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Tomas Del Rosario', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'tomasdelrosario'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Jacklyn Tolentino', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'jacklyntolentino'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Percival Gutierrez', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'percivalgutierrez'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-01', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-05', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-12', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-14', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-21', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-23', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-09-30', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-04', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-10', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-13', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-20', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-24', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-10-31', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-02', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-09', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-11', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-18', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-22', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-29', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-01', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-12', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-19', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-21', '13:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-28', '8:11', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Garfield Manalaysay', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'garfieldmanalaysay'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Lizeth Villegas', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'lizethvillegas'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-06', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-15', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-26', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-05', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-14', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-25', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-03', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-04', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-14', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-23', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-02', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-13', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-22', '9:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Carol Ramos', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'carolramos'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-01', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-08', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-12', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-15', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-21', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-09-30', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-11', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-20', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-10-31', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-09', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-18', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-29', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-19', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-28', '8:21', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Emelia Maceda', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'emeliamaceda'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-08-09', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-19', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-28', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-09-30', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-06', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-18', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-25', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-26', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-27', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-10-31', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-01', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-03', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-04', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-07', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-08', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-10', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-11', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-15', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-16', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-17', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-18', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-24', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-25', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-11-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-01', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-02', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-05', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-06', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-07', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-08', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-09', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-12', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-13', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-14', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-15', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-16', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-19', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-20', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-21', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-22', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-23', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-26', '10:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-27', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-28', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-29', '8:00', '17:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));
INSERT INTO attendance (name, date_of_attendance, time_in, time_out, is_late, is_absent, on_leave, employee_id)
VALUES ('Delia Aguilar', '2022-12-30', '0:00', '0:00', false, false, false, (SELECT employee_id FROM employees WHERE username = 'deliaaguilar'));


-- INVENTORY INSERTION
INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '142QVTSIUR', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '142QVTSIUR', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '142QVTSIUR', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '142QVTSIUR', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '142QVTSIUR', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', 'PZCT1S00XE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', 'PZCT1S00XE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', 'PZCT1S00XE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', 'PZCT1S00XE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', 'PZCT1S00XE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '4VBTV8YNM7', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '4VBTV8YNM7', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '4VBTV8YNM7', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '4VBTV8YNM7', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '4VBTV8YNM7', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '95AN3AWVF4', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '95AN3AWVF4', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '95AN3AWVF4', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '95AN3AWVF4', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-01', 'Old', 'Honda', '95AN3AWVF4', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kawasaki', '483QHIM661', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kawasaki', '483QHIM661', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kawasaki', '483QHIM661', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kawasaki', '483QHIM661', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kawasaki', '483QHIM661', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', 'SPHA17SSEE', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', 'SPHA17SSEE', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', 'SPHA17SSEE', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', 'SPHA17SSEE', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', 'SPHA17SSEE', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', '0AV7SWGX93', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', '0AV7SWGX93', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', '0AV7SWGX93', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', '0AV7SWGX93', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-03', 'Old', 'Kymco', '0AV7SWGX93', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Kymco', 'QMUB6UYLKL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Kymco', 'QMUB6UYLKL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Kymco', 'QMUB6UYLKL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Kymco', 'QMUB6UYLKL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Kymco', 'QMUB6UYLKL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Honda', 'V96GMTFFEI', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Honda', 'V96GMTFFEI', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Honda', 'V96GMTFFEI', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Honda', 'V96GMTFFEI', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-04', 'Old', 'Honda', 'V96GMTFFEI', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', '4J8UA0FMVY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', '4J8UA0FMVY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', '4J8UA0FMVY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', '4J8UA0FMVY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', '4J8UA0FMVY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'A8BDL926FA', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'A8BDL926FA', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'A8BDL926FA', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'A8BDL926FA', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'A8BDL926FA', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'X8G5ZZ7A69', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'X8G5ZZ7A69', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'X8G5ZZ7A69', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'X8G5ZZ7A69', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-05', 'Old', 'Kawasaki', 'X8G5ZZ7A69', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', 'TY5SU0WPDX', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', 'TY5SU0WPDX', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', 'TY5SU0WPDX', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', 'TY5SU0WPDX', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', 'TY5SU0WPDX', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', '5Q0EZG7WKB', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', '5Q0EZG7WKB', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', '5Q0EZG7WKB', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', '5Q0EZG7WKB', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Honda', '5Q0EZG7WKB', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Suzuki', '9XUOUOJ2XZ', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Suzuki', '9XUOUOJ2XZ', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Suzuki', '9XUOUOJ2XZ', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Suzuki', '9XUOUOJ2XZ', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Suzuki', '9XUOUOJ2XZ', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', 'YUL4UTC4FU', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', 'YUL4UTC4FU', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', 'YUL4UTC4FU', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', 'YUL4UTC4FU', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', 'YUL4UTC4FU', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', '2ESQRHAXWG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', '2ESQRHAXWG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', '2ESQRHAXWG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', '2ESQRHAXWG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-06', 'Old', 'Kymco', '2ESQRHAXWG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'J8JA99VWZE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'J8JA99VWZE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'J8JA99VWZE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'J8JA99VWZE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'J8JA99VWZE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'NS530HOT9H', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'NS530HOT9H', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'NS530HOT9H', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'NS530HOT9H', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Kymco', 'NS530HOT9H', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Suzuki', 'URIA0XXM05', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Suzuki', 'URIA0XXM05', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Suzuki', 'URIA0XXM05', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Suzuki', 'URIA0XXM05', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Suzuki', 'URIA0XXM05', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Yamaha', 'IDN93SI4KW', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Yamaha', 'IDN93SI4KW', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Yamaha', 'IDN93SI4KW', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Yamaha', 'IDN93SI4KW', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Yamaha', 'IDN93SI4KW', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'PVAWKD51CE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'PVAWKD51CE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'PVAWKD51CE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'PVAWKD51CE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'PVAWKD51CE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'K4KHCQAU41', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'K4KHCQAU41', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'K4KHCQAU41', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'K4KHCQAU41', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-07', 'Old', 'Honda', 'K4KHCQAU41', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'Z4NY5JGZZT', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'Z4NY5JGZZT', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'Z4NY5JGZZT', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'Z4NY5JGZZT', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'Z4NY5JGZZT', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'IRQACSKUNZ', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'IRQACSKUNZ', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'IRQACSKUNZ', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'IRQACSKUNZ', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Honda', 'IRQACSKUNZ', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'TMZCTALNDL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'TMZCTALNDL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'TMZCTALNDL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'TMZCTALNDL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'TMZCTALNDL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'DVFUIA0YVB', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'DVFUIA0YVB', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'DVFUIA0YVB', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'DVFUIA0YVB', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Yamaha', 'DVFUIA0YVB', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Kymco', '4M793VVAHI', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Kymco', '4M793VVAHI', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Kymco', '4M793VVAHI', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Kymco', '4M793VVAHI', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Kymco', '4M793VVAHI', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Suzuki', '5N7IQVJ2BA', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Suzuki', '5N7IQVJ2BA', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Suzuki', '5N7IQVJ2BA', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Suzuki', '5N7IQVJ2BA', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-02-08', 'Old', 'Suzuki', '5N7IQVJ2BA', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Suzuki', 'NO8VW05PU9', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Suzuki', 'NO8VW05PU9', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Suzuki', 'NO8VW05PU9', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Suzuki', 'NO8VW05PU9', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Suzuki', 'NO8VW05PU9', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Yamaha', 'NWIP2MQEIN', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Yamaha', 'NWIP2MQEIN', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Yamaha', 'NWIP2MQEIN', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Yamaha', 'NWIP2MQEIN', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Yamaha', 'NWIP2MQEIN', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Kawasaki', '1HCWCVZSX8', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Kawasaki', '1HCWCVZSX8', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Kawasaki', '1HCWCVZSX8', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Kawasaki', '1HCWCVZSX8', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-01', 'New', 'Kawasaki', '1HCWCVZSX8', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'Z46VKPIJBY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'Z46VKPIJBY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'Z46VKPIJBY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'Z46VKPIJBY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'Z46VKPIJBY', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'LYQVEHJ6IU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'LYQVEHJ6IU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'LYQVEHJ6IU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'LYQVEHJ6IU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Kawasaki', 'LYQVEHJ6IU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Yamaha', 'BVGQQNMATL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Yamaha', 'BVGQQNMATL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Yamaha', 'BVGQQNMATL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Yamaha', 'BVGQQNMATL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-03', 'New', 'Yamaha', 'BVGQQNMATL', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Kymco', 'URWMSQZCBU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Kymco', 'URWMSQZCBU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Kymco', 'URWMSQZCBU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Kymco', 'URWMSQZCBU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Kymco', 'URWMSQZCBU', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Yamaha', '5NGI5UZ8T2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Yamaha', '5NGI5UZ8T2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Yamaha', '5NGI5UZ8T2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Yamaha', '5NGI5UZ8T2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-04', 'New', 'Yamaha', '5NGI5UZ8T2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'W2UYM0EIRS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'W2UYM0EIRS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'W2UYM0EIRS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'W2UYM0EIRS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'W2UYM0EIRS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'AITLTSJUK2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'AITLTSJUK2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'AITLTSJUK2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'AITLTSJUK2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Honda', 'AITLTSJUK2', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Yamaha', '45CNYV7IFF', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Yamaha', '45CNYV7IFF', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Yamaha', '45CNYV7IFF', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Yamaha', '45CNYV7IFF', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-05', 'New', 'Yamaha', '45CNYV7IFF', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'MXS36NKV96', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'MXS36NKV96', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'MXS36NKV96', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'MXS36NKV96', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'MXS36NKV96', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'PWM3MJWPYE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'PWM3MJWPYE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'PWM3MJWPYE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'PWM3MJWPYE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', 'PWM3MJWPYE', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', '5I80N9HB7W', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', '5I80N9HB7W', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', '5I80N9HB7W', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', '5I80N9HB7W', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Kymco', '5I80N9HB7W', 'Sold');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Yamaha', 'D01JMJL9PG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Yamaha', 'D01JMJL9PG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Yamaha', 'D01JMJL9PG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Yamaha', 'D01JMJL9PG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Yamaha', 'D01JMJL9PG', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Suzuki', '1R88BOJW8W', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Suzuki', '1R88BOJW8W', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Suzuki', '1R88BOJW8W', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Suzuki', '1R88BOJW8W', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-06', 'New', 'Suzuki', '1R88BOJW8W', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Suzuki', 'LAMH9Y1YD6', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Suzuki', 'LAMH9Y1YD6', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Suzuki', 'LAMH9Y1YD6', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Suzuki', 'LAMH9Y1YD6', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Suzuki', 'LAMH9Y1YD6', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Yamaha', '02G7NJCRGS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Yamaha', '02G7NJCRGS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Yamaha', '02G7NJCRGS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Yamaha', '02G7NJCRGS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Yamaha', '02G7NJCRGS', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Kawasaki', '392XSUBMUW', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Kawasaki', '392XSUBMUW', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Kawasaki', '392XSUBMUW', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Kawasaki', '392XSUBMUW', 'On-hand');

INSERT INTO inventory (date_entered, stock_label, brand, engine_number, status)
VALUES ('2023-03-07', 'New', 'Kawasaki', '392XSUBMUW', 'On-hand');