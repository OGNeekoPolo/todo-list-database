CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  completed_at TIMESTAMP NULL
);


INSERT INTO todos (title, details, priority)
  VALUES ('Wash the Car', 'Use Crew Carwash coupons to clean car', 3),
          ('Finish Project', 'Reach halfway point of TIY Project', 2);

INSERT INTO todos (title, priority)
  VALUES ('Do the Dishes', 4),
          ('Walk the Dog', 5);

INSERT INTO todos (title, details, priority, completed_at)
  VALUES ('Cut Grass', 'Front and Back', 1, 'Tuesday, June 27, 2017 9:00 AM');

SELECT * FROM todos WHERE completed_at is NOT NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = 'Tuesday June 27, 2017 10:00 PM' WHERE id = 1;

DELETE FROM todos WHERE completed_at is NOT NULL;
