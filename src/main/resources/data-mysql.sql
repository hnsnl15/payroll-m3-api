CREATE TABLE IF NOT EXISTS employee (
    emp_no BIGINT PRIMARY KEY,
    role VARCHAR(50),
    username VARCHAR(50),
    password VARCHAR(50),
    last_name VARCHAR(50),
    first_name VARCHAR(50),
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

CREATE TABLE IF NOT EXISTS users (
   username VARCHAR(100) NOT NULL,
   password VARCHAR(100) NOT NULL,
   enabled TINYINT(1) NOT NULL,
   PRIMARY KEY (username)
);


INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10001, 'USER', 'crisostomo_10001', '123', 'Crisostomo', 'Jose', '1988-02-14', '17/85 Stracke Via Suite 042, Poblacion, Las Piñas 4783 Dinagat Islands', '918-621-603', '49-1632020-8', '382189453145', '317-674-022-000', '441093369646', 'Regular', 'HR Manager', 'N/A', 62670.0, 1500.0, 1000.0, 1000.0, 31335.0, 373.04);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10002, 'USER', 'mata_10002', '123', 'Mata', 'Christian', '1987-10-21', '90 OKeefe Spur Apt. 379, Catigbian 2772 Sulu', '783-776-744', '49-2959312-6', '824187961962', '103-100-522-000', '631052853464', 'Regular', 'Account Team Leader', 'Romualdez, Fredrick', 42975.0, 1500.0, 800.0, 800.0, 21488.0, 255.8);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10003, 'USER', 'sanjose_10003', '123', 'San Jose', 'Brad', '1996-03-15', '99 Strosin Hills, Poblacion, Bislig 5340 Tawi-Tawi', '797-009-261', '40-2400714-1', '239192926939', '672-474-690-000', '210850209964', 'Regular', 'HR Team Leader', 'Crisostomo, Jose', 42975.0, 1500.0, 800.0, 800.0, 21488.0, 255.8);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10004, 'USER', 'salcedo_10004', '123', 'Salcedo', 'Anthony', '1993-09-14', '93/54 Shanahan Alley Apt. 183, Santo Tomas 1572 Masbate', '070-766-300', '26-9647608-3', '126445315651', '210-805-911-000', '218002473454', 'Regular', 'Payroll Manager', 'Crisostomo, Jose', 60825.0, 1500.0, 1000.0, 1000.0, 30413.0, 362.05);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10005, 'USER', 'romualdez_10005', '123', 'Romualdez', 'Alice', '1992-05-14', '12A/33 Upton Isle Apt. 420, Roxas City 1814 Surigao del Norte', '983-606-799', '55-4476527-2', '545652640232', '888-572-294-000', '211385556888', 'Regular', 'HR Rank and File', 'San Jose, Brad', 22500.0, 1500.0, 500.0, 500.0, 11250.0, 133.93);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10006, 'USER', 'atienza_10006', '123', 'Atienza', 'Rosie', '1948-09-24', '90A Dibbert Terrace Apt. 190, San Lorenzo 6056 Davao del Norte', '266-036-427', '41-0644692-3', '708988234853', '604-997-793-000', '260107732354', 'Regular', 'HR Rank and File', 'San Jose, Brad', 22500.0, 1500.0, 500.0, 500.0, 11250.0, 133.93);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10007, 'USER', 'farala_10007', '123', 'Farala', 'Martha', '1942-01-11', '42/25 Sawayn Stream, Ubay 1208 Zamboanga del Norte', '329-034-366', '45-5656375-0', '233693897247', '210-835-851-000', '631130283546', 'Regular', 'Payroll Rank and File', 'Farala, Martha', 24000.0, 1500.0, 500.0, 500.0, 12000.0, 142.86);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10008, 'USER', 'martinez_10008', '123', 'Martinez', 'Leila', '1970-07-11', '37/46 Kulas Roads, Maragondon 0962 Quirino', '877-110-749', '27-2090996-4', '515741057496', '275-792-513-000', '101205445886', 'Regular', 'Payroll Rank and File', 'Farala, Martha', 24000.0, 1500.0, 500.0, 500.0, 12000.0, 142.86);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10009, 'USER', 'sanjose_10009', '123', 'San Jose', 'Allison', '1986-06-24', '08 Grant Drive Suite 406, Poblacion, Iloilo City 9186 La Union', '179-075-129', '45-3251383-0', '745148459521', '121-203-336-000', '114901859343', 'Regular', 'Account Rank and File', 'Mata, Christian', 22500.0, 1500.0, 500.0, 500.0, 11250.0, 133.93);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10010, 'USER', 'rosario_10010', '123', 'Rosario', 'Cydney', '1996-10-06', '93A/21 Berge Points, Tapaz 2180 Quezon', '868-819-912', '49-1629900-2', '579253435499', '122-244-511-000', '265104358643', 'Regular', 'Account Rank and File', 'Mata, Christian', 22500.0, 1500.0, 500.0, 500.0, 11250.0, 133.93);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10011, 'USER', 'lopez_10011', '123', 'Lopez', 'Josie', '1937-01-14', '49 Springs Apt. 266, Poblacion, Taguig 3200 Occidental Mindoro', '478-355-427', '44-8563448-3', '431709011012', '218-489-737-000', '113071293354', 'Regular', 'Payroll Team Leader', 'Salcedo, Anthony', 38475.0, 1500.0, 800.0, 800.0, 19238.0, 229.02);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10012, 'USER', 'deleon_10012', '123', 'De Leon', 'Selena', '1945-02-20', '89A Armstrong Trace, Compostela 7874 Maguindanao', '975-432-139', '27-2090208-8', '587272469938', '482-259-498-000', '719007608464', 'Regular', 'Account Team Leader', 'Romualdez, Fredrick', 41850.0, 1500.0, 800.0, 800.0, 20925.0, 249.11);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10013, 'USER', 'romualdez_10013', '123', 'Romualdez', 'Fredrick', '1985-03-10', '22A/52 Lubowitz Meadows, Pililla 4895 Zambales', '023-079-009', '26-8768374-1', '308366860059', '598-065-761-000', '223057707853', 'Regular', 'Account Manager', 'Crisostomo, Jose', 63500.0, 1500.0, 1000.0, 1000.0, 31750.0, 377.98);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10014, 'USER', 'bautista_10014', '123', 'Bautista', 'Mark', '1961-02-12', '65 Murphy Center Suite 094, Poblacion, Palayan 5636 Quirino', '683-725-348', '49-1647342-5', '399665157135', '273-970-941-000', '260054585575', 'Regular', 'Account Rank and File', 'Mata, Christian', 23250.0, 1500.0, 500.0, 500.0, 11625.0, 138.39);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10015, 'USER', 'lazaro_10015', '123', 'Lazaro', 'Darlene', '1985-11-25', '47A/94 Larkin Plaza Apt. 179, Poblacion, Caloocan 2751 Quirino', '740-721-558', '45-5617168-2', '606386917510', '354-650-951-000', '104907708845', 'Probationary', 'Account Rank and File', 'Mata, Christian', 23250.0, 0.0, 0.0, 0.0, 11625.0, 138.39);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10016, 'USER', 'delossantos_10016', '123', 'Delos Santos', 'Kolby', '1980-02-26', '06A Gulgowski Extensions, Bongabon 6085 Zamboanga del Sur', '739-443-033', '52-0109570-6', '357451271274', '187-500-345-000', '113017988667', 'Probationary', 'Account Rank and File', 'Mata, Christian', 24000.0, 0.0, 0.0, 0.0, 12000.0, 142.86);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10017, 'USER', 'santos_10017', '123', 'Santos', 'Vella', '1983-12-31', '99A Padberg Spring, Poblacion, Mabalacat 3959 Lanao del Sur', '955-879-269', '52-9883524-3', '548670482885', '101-558-994-000', '360028104576', 'Probationary', 'Account Rank and File', 'Mata, Christian', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10018, 'USER', 'delrosario_10018', '123', 'Del Rosario', 'Tomas', '1978-12-18', '80A/48 Ledner Ridges, Poblacion, Kabankalan 8870 Marinduque', '882-550-989', '45-5866331-6', '953901539995', '560-735-732-000', '913108649964', 'Probationary', 'Account Rank and File', 'Mata, Christian', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10019, 'USER', 'tolentino_10019', '123', 'Tolentino', 'Jacklyn', '1944-05-19', '96/48 Watsica Flats Suite 734, Poblacion, Malolos 1844 Ifugao', '675-757-366', '47-1692793-0', '753800654114', '841-177-857-000', '210546661243', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 24000.0, 0.0, 0.0, 0.0, 12000.0, 142.86);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10020, 'USER', 'gutierrez_10020', '123', 'Gutierrez', 'Percival', '1970-12-18', '58A Wilderman Walks, Poblacion, Digos 5822 Davao del Sur', '512-899-876', '40-9504657-8', '797639382265', '502-995-671-000', '210897095686', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 24750.0, 0.0, 0.0, 0.0, 12375.0, 147.32);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10021, 'USER', 'manalaysay_10021', '123', 'Manalaysay', 'Garfield', '1966-08-28', '60 Goyette Valley Suite 219, Poblacion, Tabuk 3159 Lanao del Sur', '948-628-136', '45-3298166-4', '810909286264', '336-676-445-000', '211274476563', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 24750.0, 0.0, 0.0, 0.0, 12375.0, 147.32);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10022, 'USER', 'villegas_10022', '123', 'Villegas', 'Lizeth', '1981-12-12', '66/77 Mann Views, Luisiana 1263 Dinagat Islands', '332-372-215', '40-2400719-4', '934389652994', '210-395-397-000', '122238077997', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 24000.0, 0.0, 0.0, 0.0, 12000.0, 142.86);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10023, 'USER', 'ramos_10023', '123', 'Ramos', 'Carol', '1978-08-20', '72/70 Stamm Spurs, Bustos 4550 Iloilo', '250-700-389', '60-1152206-4', '351830469744', '395-032-717-000', '212141893454', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10024, 'USER', 'maceda_10024', '123', 'Maceda', 'Emelia', '1963-04-14', '50A/83 Bahringer Oval Suite 145, Kiamba 7688 Nueva Ecija', '973-358-041', '54-1331005-0', '465087894112', '215-973-013-000', '515012579765', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);

INSERT INTO employee (emp_no, role, username, password, last_name, first_name, birthday, address, phone_number, sss_no, philhealth_no, tin_no, pagibig_no, status, position, immediate_supervisor, basic_salary, rice_subsidy, phone_allowance, clothing_allowance, gross_semi_monthly_rate, hourly_rate)
VALUES (10025, 'USER', 'aguilar_10025', '123', 'Aguilar', 'Delia', '1939-01-27', '95 Cremin Junction, Surallah 2809 Cotabato', '529-705-439', '52-1859253-1', '136451303068', '599-312-588-000', '110018813465', 'Probationary', 'Account Rank and File', 'De Leon, Selena', 22500.0, 0.0, 0.0, 0.0, 11250.0, 133.93);
