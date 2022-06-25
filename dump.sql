CREATE DATABASE izbiraemi;

USE izbiraemi;

ALTER DATABASE izbiraemi 
  CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci; 

-- ALTER TABLE izbiraemi 
--   CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; 

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    facultyNumber varchar(16) UNIQUE NOT NULL,
    password varchar(256) NOT NULL
);

CREATE TABLE izbiraemi (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(256) NOT NULL,
    teacher varchar(256) NOT NULL
);

INSERT INTO users (facultyNumber, password) VALUES ('2001681040', 'asd');

INSERT INTO izbiraemi (name, teacher) VALUES
('Проектно-базирано обучение по математика, информатика и информационни технологии', 'проф. д-р Коста Гъров, доц. д-р Ивайло Старибратов, докт. Деяна Пейкова'),
('Нестандартни математически задачи', 'проф. д-р Пенка Рангелова'),
('Математически основи на автоматизираното управление', 'доц. д-р Георги Костадинов'),
('Въведение в математика на парите', 'проф. д-р Боян Златанов'),
('Математически основи на компютърната графика', 'доц. д-р Добринка Грибачева, гл. ас. д-р Ива Докузова'),
('Итерационни методи', 'проф. д.м.н. Петко Пройнов'),
('Дискретни логистични модели', 'проф. д.м.н. Манчо Манев, гл. ас. д-р Асен Христов'),
('Аналитична макроикономика', 'проф. д.м.н. Манчо Манев, гл. ас. д-р Асен Христов'),
('Въведение във функционалния анализ', 'доц. д-р Атанаска Георгиева'),
('Въведение в теоретичната информатика', 'доц. д-р Христо Кискинов'),
('Разработка на игри в C++ с Unreal Engine 4', 'проф. д-р Ангел Голев, Колорадо Старк (Enigma Software)'),
('Изграждане на динамични уеб приложения и SEO Оптимизация', 'проф. д-р Тодорка Терзиева, докторант Николай Чочев'),
('Проектиране и управление на локални компютърни мрежи', 'доц. д-р Генчо Стоицов'),
('Информационна и комуникационна сигурност', 'доц.  д-р Генчо Стоицов, маг. Стефан Тафков'),
('Въведение в Artificial Neural Network и Deep Learning', 'доц. д-р Владимир Вълканов, маг. Минчо Симов'),
('Бизнес приложения за Интернет с HTML, CSS и JavaScript', 'проф. д-р Минчо Сандалски'),
('Мобилни приложения - Android за начинаещи', 'проф. д-р Станимир Стоянов, ас. д-р Йордан Тодоров'),
('Обща теория на правото в информационното общество', 'доц. д-р Иван Шотлеков, хон. ас. д-р Владимир Вълев'),
('Параметричен и генеративен дизайн; Софтуерни пакети за 3D моделиране на кибер-физични системи', 'доц. д-р Иван Шотлеков, хон. ас. инж. Петко Стоев'),
('Програмиране в среда Arduino', 'доц. д-р Светослав Енков'),
('Информационна сигурност', 'доц. д-р Николай Касъклиев'),
('Интелигентен анализ и визуализация на данни с JasperSoft', 'доц. д-р Силвия Гафтанджиева и докт. Милен Близнаков'),
('Визуално програмиране с Processing', 'проф. д-р Антон Илиев, ас. Виктор Матански'),
('Бизнес право', 'проф. д-р Асен Рахнев, хон. ас. Илиан Иванов'),
('Проектиране на компютърни системи и хардуер', 'проф. д-р Асен Рахнев, хон. ас. Радослав Дервишев'),
('Преговори в ИТ индустрията', 'доц. д-р Анна Малинова, хон. ас. Силвия Павлова'),
('Въведение в машинното самообучение', 'доц. д-р Николай Павлов, ас. Симеон Монов'),
('Паралелно програмиране със C# и Task Parallel Library', 'доц. д-р Николай Павлов'),
('Основи на моделирането', 'проф. д.м.н. Снежана Христова'),
('Методически аспекти на решаването на избрани задачи от училищната математика', 'проф. дмн Нако Начев'),
('Методични интерпретации в елементарната  математика, банковото дело и космологията', 'проф. дмн Тодор Желязков Моллов'),
('Апроксимационни и моделни аспекти от областта на „Debugging and test theory“', 'проф. д-р Николай Кюркчиев, проф. д-р Антон Илиев, доц. д-р Николай Павлов');

CREATE TABLE jelaniq (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL REFERENCES users(id),
    izbiraema_id INT NOT NULL REFERENCES izbiraemi(id),
    jelanie INT NOT NULL,
    UNIQUE INDEX jelaniq_unique (user_id, jelanie, izbiraema_id)
);

INSERT INTO jelaniq (user_id, izbiraema_id, jelanie) VALUES (1,1,1);