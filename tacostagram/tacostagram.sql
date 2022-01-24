DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS like;
DROP TABLE IF EXISTS follower;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    username TEXT,
    location TEXT
);

CREATE TABLE post (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    posted_at TEXT,
    image TEXT
);

CREATE TABLE comment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    body TEXT,
    post_id INTEGER,
    user_id INTEGER
);

CREATE TABLE like (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    user_id INTEGER
);

CREATE TABLE follower (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    followed_user_id INTEGER,
    following_user_id INTEGER
);