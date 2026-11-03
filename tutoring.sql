CREATE TABLE if not exists students (
  student_id INTEGER PRIMARY KEY,
  student_name TEXT NOT NULL,
  student_email TEXT NOT NULL UNIQUE
);

CREATE TABLE if not exists tutoring_requests (
  request_id INTEGER PRIMARY KEY,
  student_id INTEGER NOT NULL,
  course TEXT NOT NULL,
  topic TEXT NOT NULL,
  preferred_date TEXT NOT NULL,
  preferred_time TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'Open',
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);

/*INSERT OR ignore INTO students (student_name, student_email)
VALUES ('Maria Lopez', 'maria.lopez@example.com');

INSERT OR ignore INTO students (student_name, student_email)
VALUES ('Jordan Lee', 'jordan.lee@example.edu');

INSERT OR ignore INTO students (student_name, student_email)
VALUES ('Avery Patel', 'avery.patel@example.edu');

INSERT OR ignore INTO tutoring_requests
  (student_id, course, topic, preferred_date, preferred_time)
VALUES
  (1, 'IS 6465', 'PHP arrays and forms', '2026-11-03', '14:00');

  INSERT OR ignore INTO tutoring_requests
  (student_id, course, topic, preferred_date, preferred_time)
VALUES
  (2, 'IS 6465', 'Forms', '2026-11-04', '14:00');

  INSERT OR ignore INTO tutoring_requests
  (student_id, course, topic, preferred_date, preferred_time)
VALUES
  (2, 'IS 6465', 'SQL SELECT', '2026-11-05', '15:00');

  INSERT OR ignore INTO tutoring_requests
  (student_id, course, topic, preferred_date, preferred_time)
VALUES
  (3, 'IS 6465', 'SQLite CRUD', '2026-11-06', '16:00'); */

/* select * from students;

select * from tutoring_requests;

select * from tutoring_requests where status like 'Open';

select * from tutoring_requests where request_id = 4;

select r.request_id, s.student_name, s.student_email, r.course, r.topic, r.preferred_date, r.preferred_time, r.status
from tutoring_requests r inner join students s on r.student_id = s.student_id
order by preferred_date;


select * from tutoring_requests where request_id = 3;

update tutoring_requests
    set topic = 'SQL Forms'
    where request_id = 3;

update tutoring_requests 
    set status = 'Cancelled'
    where request_id = 5;

select * from tutoring_requests where request_id = 3;

select * from tutoring_requests where request_id = 5;

*/

  INSERT OR ignore INTO tutoring_requests
  (student_id, course, topic, preferred_date, preferred_time)
VALUES
  (3, 'IS 6465', 'DELETE TEST', '2026-11-08', '18:00');

select * from tutoring_requests;

  delete from tutoring_requests where topic = 'DELETE TEST';

select * from tutoring_requests;