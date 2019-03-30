CREATE TABLE IF NOT EXISTS comments (
  comment_id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  post_id INTEGER REFERENCES posts(id) ON DELETE CASCADE, 
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  content TEXT NOT NULL,
  date_created TIMESTAMP DEFAULT now() NOT NULL,
  date_modified TIMESTAMP DEFAULT null
);