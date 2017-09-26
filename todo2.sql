
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
('Play guitar', 'i will be the next santana', 3, '2017-08-13 07:03:56', NULL),
('Write beautiful poem', 'shakespeare envys my work', 4, '2017-06-07 01:24:40', '2017-08-03 12:05:29'),
('Sharpen pencils', 'need them for drawing', 2, '2017-05-07 07:03:56', 'YYYY-MM-DD HH24:MI:SS'), NULL),
('Check todo list', 'need a reminder to remind me of reminders', 4, '2015-08-09 01:24:40', '2017-08-02 12:05:29'),
('Fist pump', 'it needds to be perfected', 1, '2017-08-07 07:03:56', NULL),
('Air guitar practice', 'sometimes you just forget your real guitar', 3, '2017-05-22 01:24:40', '2017-08-02 12:05:29'),
('Fix computer', 'its getting a little dusty', 5, '2017-08-03 07:03:56', NULL),
('Create Jock Jam', 'about to get some people pumped up', 1, '2017-05-07 01:24:40', '2017-06-07 12:05:29'),
('go to school', 'i need an A', 4, '2017-02-07 07:03:56', , NULL),
('Watch Donnie Brasco', 'its a fugazzi', 4, '2017-07-07 01:24:40', '2017-07-09 12:05:29'),
('Buy ableton', 'need it to make hot banger', 2, '2017-04-07 07:03:56', , NULL),
('Wash car', 'that ole buick is getting nasty', 6, '2017-08-01 01:24:40', '2017-08-02 12:05:29'),
('Teach HTML', 'teach to learn', 5, '2017-06-26 07:03:56', NULL),
('put desk together', 'almost done with the home office', 3, '2017-05-17 01:24:40', '2017-06-01 12:05:29'),
('Call parents', 'could use a nice talk with them', 6, '2017-08-06 07:03:56', NULL),
('Learn SQL', 'write data, write data, write data', 4, '2017-04-07 01:24:40','2017-06-20 12:05:29'),
('Go to movies with Morgan', 'time for a nice date night', 4, '2017-08-15 07:03:56', NULL),
('buy water bottle', 'need to drink more water', 3, '2017-07-01 01:24:40', '2017-07-17 12:05:29'),
('go through wardrobe', 'need to give clothes away', 1, '2017-01-11 07:03:56', NULL),
('Build Dog House', 'puppers needs an outside house', 1, '2017-06-05 01:24:40','2017-06-27 12:05:29', 'YYYY-MM-DD HH24:MI:SS')),
('start making best app', 'it will be award winning', 2, '2017-08-22 07:03:56', NULL),
('Fo getta bout it', 'just fo getta bout it', 3, '2017-03-13 01:24:40','2017-08-09 12:05:29');




SELECT *
FROM todos
WHERE priority = 3 AND completed_at IS NULL
ORDER BY title DESC;

-- Write a SELECT statement to find the number of incomplete todos by priority.

SELECT priority COUNT(*)
FROM todos
WHERE completed_at IS NULL
GROUP BY priority;

-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.

SELECT count(*)
FROM todos
WHERE created_at > (Current_date - interval '30 days')
GROUP BY priority;

-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.

SELECT title, details, priority, created_at
FROM todos
WHERE completed_at IS NULL
ORDER BY priority, created_at
LIMIT 1;
