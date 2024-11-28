use tumblr_db;

insert into user (username, passwordhash, email, join_date) values
('s01', 'mostSecureestOfPasswords1', 'stu01@example.com', '2021-01-01 12:00:00'),
('s02', 'mostSecureestOfPasswords2', 'stu02@example.com', '2021-05-10 14:00:00'),
('s03', 'mostSecureestOfPasswords3', 'stu03@example.com', '2021-07-07 15:30:00'),
('s04', 'mostSecureestOfPasswords4', 'stu04@example.com', '2023-04-01 16:45:00'),
('s05', 'mostSecureestOfPasswords5', 'stu05@example.com', '2023-10-01 17:15:00'),
('s06', 'mostSecureestOfPasswords6', 'stu06@example.com', '2023-05-06 18:20:00'),
('s07', 'mostSecureestOfPasswords7', 'stu07@example.com', '2022-07-05 19:50:00'),
('s08', 'mostSecureestOfPasswords8', 'stu08@example.com', '2022-08-01 10:00:00'),
('s09', 'mostSecureestOfPasswords9', 'stu09@example.com', '2022-09-01 11:15:00'),
('s10', 'mostSecureestOfPasswords10', 'stu10@example.com', '2020-10-01 12:30:00');

insert into message (user_id, recipient_id, content, message_date) values
(1, 2, 'How\'s your mortality?', '2021-03-01 08:11:21'),
(2, 1, 'Like a propper victim.', '2021-03-02 10:15:31'),

(2, 3, 'You should be publicy flayed.', '2021-07-10 14:12:43'),
(3, 2, 'Flay me yourself you coward!', '2021-07-10 14:15:12'),

(6, 7, 'Happy cake day!', '2023-07-22 09:11:06'),
(7, 6, 'Get that reddit shit out of my dms!', '2023-07-22 09:12:32'),
(6, 7, ':(', '2023-07-22 09:14:21'),

(10, 2, 'Have you considered death', '2021-06-23 10:25:03'),
(10, 2, 'Sporry, wrong person', '2021-06-23 10:25:53'),
(10, 1, 'Have you considered death', '2021-06-23 10:26:12');

insert into Blog (blogger_id, title, blog_description, creation_date) values
(1, '1 Tech Wonder', 'All about the latest in technology.', '2021-02-01 12:00:00'),
(2,  'Time 2 Travel', 'Sharing travel stories and tips.', '2021-06-10 14:00:00'),
(3, 'Anxiety for 3 and thee', 'This is cheaper than therapy.', '2021-08-07 15:30:00'),
(4, 'Atleast 4 ways to be fit', 'Stay healthy and fit with these tips.', '2023-05-01 16:45:00'),
(5, '5 likes good games', 'Updates on the latest games and reviews.', '2023-11-01 17:15:00'),
(6, '6 cool pictures', 'Capturing the beauty of the world.', '2023-06-06 18:20:00'),
(7, '7 minute crafts', 'Do-it-yourself projects and crafts.', '2022-08-05 19:50:00'),
(8, 'Music Blog', 'Explore the world of music.', '2022-09-01 10:00:00'),
(9, '9 types of fashion', 'Trendy fashion tips and tricks.', '2022-10-01 11:15:00'),
(10,'Reading with 10', 'Discussing the latest and greatest books.', '2020-11-01 12:30:00');

insert into Post (poster_id, blog_id, title, content, likes, favorites, post_date, parent_id) values
(1, 1, 'AI in 2023', 'The rise of AI continues.', 11432, 127, '2021-03-10 12:12:12', NULL),
(10, 10, 'Book Review: AI Revolution', 'A deep dive into the AI revolution.', 180, 9, '2021-3-11 18:45:33', null),
(2, 2, 'Rome Travel Tips', 'Top 10 places to visit in Rome.', 2057, 43, '2021-07-15 11:31:13', NULL),
(3, 3, 'Best Pasta Recipe', 'Here’s how to make authentic Italian pasta.', 31421, 1150, '2021-09-11 05:33:23', null),
(4, 4, 'Home Workouts', 'Stay fit at home with these exercises.', 25412, 1203, '2023-05-13 14:45:54', NULL),
(5, 5, 'Top 10 Games', 'The best games released this year.', 31213, 1476, '2023-11-11 15:15:51', NULL),
(6, 6, 'Sunset Photography Tips', 'Capture stunning sunsets.', 132, 12, '2023-06-07 11:20:02', NULL),
(7, 7, 'DIY Home Decor', 'Make your own decorations.', 532, 3, '2023-07-10 11:30:00', NULL),
(8, 8, 'Music Theory Basics', 'Understanding the foundations of music.', 81268, 2395, '2022-09-11 01:01:10', NULL),
(9, 9, 'Top Fashion Trends', 'What’s hot this season.', 22012, 936, '2022-10-01 11:16:59', NULL);

insert into Note (post_id, poster_id, content, likes, note_date) values
(1, 9, 'AI is fascinating!', 534, '2021-03-10 14:12:12'),
(1, 7, 'AI = bad >:(.', 107, '2021-03-10 21:12:12'),
(3, 5, 'It was eidble!', 153, '2021-09-11 09:23:33'),
(4, 10, 'There are more than 4 options OwO.', 812, '2023-05-14 14:40:04'),
(5, 1, 'Gaming keeps getting better! Ai sure is cool!', 1243, '2023-11-11 19:11:51'),
(6, 2, 'Picture cool.', 600, '2023-6-07 12:22:12'),
(7, 3, 'DIWhy', 412, '2023-07-13 11:33:12'),
(8, 2, 'Music theory finally makes sense.', 3532, '2023-07-11 12:31:30'),
(9, 5, 'Fashion cool.', 1743, '2023-09-21 16:30:00'),
(10, 3, 'This book changed my perspective.', 932, '2022-10-01 13:56:19');

insert into Tag (content) values
('Technology'), ('Travel'), ('Food'), ('Fitness'), ('Gaming'),
('Photography'), ('DIY'), ('Music'), ('Fashion'), ('Books');

insert into Post_Tag (post_id, tag_id) values
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

insert into Mutuals (mutual_id, user_id, date_added) values
(1, 2, '2023-01-01 12:00:00'),
(2, 3, '2023-01-05 15:30:00'),
(3, 4, '2023-01-10 10:45:00'),
(4, 5, '2023-01-15 18:00:00'),
(5, 6, '2023-01-20 14:25:00'),
(6, 7, '2023-01-25 16:40:00'),
(7, 8, '2023-01-30 12:15:00'),
(8, 9, '2023-02-01 13:50:00'),
(9, 10, '2023-02-05 17:10:00'),
(10, 1, '2023-02-10 19:00:00');

insert into Post_Liked (post_id, user_id, date_liked) values
(1, 2, '2023-01-01 12:10:00'),
(2, 3, '2023-01-05 15:40:00'),
(3, 4, '2023-01-10 11:00:00'),
(4, 5, '2023-01-15 18:15:00'),
(5, 6, '2023-01-20 14:35:00'),
(6, 7, '2023-01-25 16:50:00'),
(7, 8, '2023-01-30 12:30:00'),
(8, 9, '2023-02-01 14:00:00'),
(9, 10, '2023-02-05 17:20:00'),
(10, 1, '2023-02-10 19:10:00');

insert into Post_Favorited (post_id, user_id, date_favorited) values
(1, 3, '2023-01-01 12:20:00'),
(2, 4, '2023-01-05 15:50:00'),
(3, 5, '2023-01-10 11:15:00'),
(4, 6, '2023-01-15 18:25:00'),
(5, 7, '2023-01-20 14:45:00'),
(6, 8, '2023-01-25 17:00:00'),
(7, 9, '2023-01-30 12:45:00'),
(8, 10, '2023-02-01 14:15:00'),
(9, 1, '2023-02-05 17:30:00'),
(10, 2, '2023-02-10 19:20:00');



