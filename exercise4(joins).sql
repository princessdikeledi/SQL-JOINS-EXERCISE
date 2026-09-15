CREATE OR REPLACE TABLE users AS
SELECT
    col1 AS user_id,
    col2 AS user_name,
    col3 AS country

FROM VALUES
    (1, 'nomvula', 'JHB'),
    (2, 'david', 'CPT'),
    (3, 'anele', 'DBN'),
    (4, 'kabelo', 'PRETORIA'),
    (5, 'lerato', 'PE');

    select *
    from users;


CREATE OR REPLACE TABLE subscriptions AS
SELECT
    col1 AS sub_id,
    col2 AS user_id,
    col3 AS plan_id,
    col4 AS start_date

FROM VALUES
    (501, '1', '10', '2026-01-15'),
    (502, '2', '11', '2026-02-01'),
    (503, '1', '12', '2026-03-10'),
    (504, '6', '11', '2026-03-20'),
    (505, '3', '13', '2026-04-05');

    select *
    from subscriptions;

    select u.user_id,
    u.user_name,
    s.sub_id,
    s.start_date
    FROM users u
    inner join subscriptions s
    on u.user_id = s.user_id;

    CREATE OR REPLACE TABLE subscriptions AS
SELECT
    col1 AS sub_id,
    col2 AS user_id,
    col3 AS plan_id,
    col4 AS start_date

FROM VALUES
    (501, '1', '10', '2026-01-15'),
    (502, '2', '11', '2026-02-01'),
    (503, '1', '12', '2026-03-10'),
    (504, '6', '11', '2026-03-20'),
    (505, '3', '13', '2026-04-05');

    select *
    from subscriptions;

CREATE OR REPLACE TABLE plans AS
SELECT
    col1 AS plan_id,
    col2 AS plan_name,
    col3 AS monthly_price

FROM VALUES
    (10, 'basic', '79'),
    (11, 'standard', '129'),
    (12, 'premium', '199'),
    (13, 'family', '249'),
    (14, 'mobile', '59');

    select *
    from plans;

   select s.sub_id,
   p.plan_id,
   p.plan_name,
   p.monthly_price
   from subscriptions s
   inner join plans p
   on s.plan_id = p.plan_id;

   CREATE OR REPLACE TABLE viewing_sessions AS
SELECT
    col1 AS session_id,
    col2 AS user_id, 
    col3 AS show_id,
    col4 AS watch_time_minutes
    
FROM VALUES
    (901, '1', '701', '45'),
    (902, '2', '703','30' ),
    (903, '1', '702', '60'),
    (904, '7', '701', '20'),
    (905, '3', '705', '90');

    select *
    from viewing_sessions;

    CREATE OR REPLACE TABLE shows AS
SELECT
    col1 AS show_id,
    col2 AS show_title,
    col3 AS genre

FROM VALUES
    (701, 'comedy hour', 'comedy'),
    (702, 'crime time', 'drama'),
    (703, 'tech sales', 'documentary'),
    (704, 'cooking lab', 'lifestyle'),
    (705, 'wild earth', 'documentary');

    select *
    from shows;

    select v.session_id,
    v.user_id,
     v.show_id,
     v.watch_time_minutes,
     s.show_title,
     s.genre
     from viewing_sessions v
     inner join shows s
     on v.show_id = s.show_id;


select u.user_name,
u.country,
u.user_id,
v.show_id,
v.watch_time_minutes
from users u
inner join viewing_sessions v
on u.user_id = v.user_id;

SELECT
    u.user_name,
    u.country,
    p.plan_name,
    p.monthly_price,
    s.start_date
FROM users AS u
INNER JOIN subscriptions AS s
    ON u.user_id = s.user_id
INNER JOIN plans AS p
    ON s.plan_id = p.plan_id;


    select u.user_id,
    u.user_name,
    s.sub_id,
     s.start_date
     FROM users u
     left join subscriptions s
     on u.user_id = s.user_id;

     select p.plan_id,
     p.plan_name,
     s.sub_id,
     s.user_id
     from plans p
     left join subscriptions s
     on p.plan_id = s.plan_id;.


     SELECT s.show_id,
     s.show_title,
     v.session_id,
     v.watch_time_minutes
     from shows s
     left join viewing_sessions v
     on s.show_id = v.show_id;


select v.session_id,
v.show_id,
v.watch_time_minutes,
u.user_id,
u.user_name
from viewing_sessions v 
left join users u
on u.user_id = v.user_id;

select u.user_name,
u.country,
p.plan_name,
p.monthly_price
from users u
left join subscriptions s
on u.user_id = s.user_id
left join plans p
on s.plan_id = p.plan_id;

SELECT
    u.user_id,
    u.user_name,
    s.sub_id AS subscription_id,
    s.start_date
FROM users u
FULL OUTER JOIN subscriptions s
    ON u.user_id = s.user_id;

    
SELECT
    p.plan_id,
    p.plan_name,
    s.sub_id AS subscription_id,
    s.user_id
FROM plans p
FULL OUTER JOIN subscriptions s
    ON p.plan_id = s.plan_id;
    

    SELECT
   s.show_id,
   s.show_title,
   v.session_id,
    v.watch_time_minutes
FROM shows s
FULL OUTER JOIN viewing_sessions v
    ON s.show_id = v.show_id;

     SELECT
   u.user_id,
   u.user_name,
   v.session_id,
   v.show_id,
    v.watch_time_minutes
FROM users u
FULL OUTER JOIN viewing_sessions v
    ON u.user_id = v.user_id;

    SELECT
    u.user_name,
    u.user_id,
    p.plan_id,
    p.plan_name,
   s.sub_id as subscription_id
FROM users u
FULL OUTER JOIN subscriptions s
    ON u.user_id = s.user_id
FULL OUTER JOIN plans p
    ON s.plan_id = p.plan_id;


    
     
     
