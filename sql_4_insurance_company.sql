--задание 4
set search_path=InsuranceCompany_db, insurance_company_db;

insert into insurance_company values (1, 'МАКС');
insert into insurance_company values (2, 'Росгосстрах');
insert into insurance_company values (3, 'АльфаСтрахование');
insert into insurance_company values (4, 'Согласие');
insert into insurance_company values (5, 'Консенсус');

insert into customer values (1, 'Поляков', 'Эдуард', 'Глебович', 'г. Черкесск, ул. Некрасова 21', 'Автомобиль', 1 );
insert into customer values (2, 'Жуков', 'Эмин', 'Алексеевич', 'г. Черкесск, ул. Маяковского 58', 'Ноутбук', 2 );
insert into customer values (3, 'Жердев', 'Дмитрий', 'Глебович', 'г. Черкесск, ул. Победы 132', 'Компьютер', 3);
insert into customer values (4, 'Смолин', 'Николай', 'Давидович', 'г. Черкесск, ул. Свободы 38', 'Стиральная машина', 4);
insert into customer values (5, 'Мамыкин', 'Пётр', 'Станиславович', 'г. Черкесск, ул. Мичурина 90', 'Принтер', 5 );

insert into compensation_for_damage values (1, 1, 1, '1000', 'Неисправность стиральной машины', '2020-07-20', '2020-07-30');
insert into compensation_for_damage values (2, 2, 2, '1500', 'Неисправность автомобиля', '2020-08-01', '2020-08-10');
insert into compensation_for_damage values (3, 3, 3, '2000', 'Неисправность компьютера', '2020-08-11', '2020-08-21');
insert into compensation_for_damage values (4, 4, 4, '3000', 'Неисправность ноутбука', '2020-08-22', '2020-09-01');
insert into compensation_for_damage values (5, 5, 5, '5000', 'Неисправность принтера', '2020-09-02', '2020-09-12');

insert into service values (1, 'Личное страхование', '1000', '2020-06-10', 1 );
insert into service values (2, 'Медицинское страхование', '2000','2020-06-20', 2 );
insert into service values (3, 'Имущественное страхование', '3000', '2020-06-30', 3 );
insert into service values (4, 'Страхование ответственности', '2500', '2020-07-09', 4 );
insert into service values (5, 'Автомобильное страхование', '4000', '2020-08-09', 5 );

insert into employee values (1, 'Гунин Давид Викторович', '1980-06-03', 'Ведущий специалист оформления страхования',  '2', '+79283872123', 'г. Черкесск, ул. Лободина 37', 1);
insert into employee values (2, 'Анников Назарий Кириллович', '1977-05-03', 'Cпециалист оформления страхования',  '2', '+79884536026', 'г. Черкесск, ул. Красноармейская 80', 2);
insert into employee values (3, 'Михалев Арно Ипполитович', '1988-04-11', 'Менеджер',  '2', '+79882270701', 'г. Черкесск, ул. Соколова 20', 3);
insert into employee values (4, 'Журавлёв Самсон Дмитриевич', '1990-08-09', 'Зам. директора',  '2', '+79880170339', 'г. Черкесск, ул. Юрченко 99', 4);
insert into employee values (5, 'Чичиков Азат Всеволодович', '1983-02-01', 'Директор',  '2', '+79881864259', 'г. Черкесск, ул. Доватора 56', 5);

insert into contract values (1, 1, 1, 1, '5000', '2020-06-01');
insert into contract values (2, 2, 2, 2, '10000', '2020-06-11');
insert into contract values (3, 3, 3, 3, '15000', '2020-06-21');
insert into contract values (4, 4, 4, 4, '25000', '2020-07-01');
insert into contract values (5, 5, 5, 5, '35000', '2020-06-11');

