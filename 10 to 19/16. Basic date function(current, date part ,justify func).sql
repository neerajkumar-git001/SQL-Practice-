select current_date;

select current_time;

select current_timestamp;

-- 1) date aprt function [only show perticular one date/value]
select date_part('year', timestamp '2026-10-15 04:47:50');    --show only year  2026

select date_part('hour', timestamp '2026-10-15 04:52:00');  --4

select date_part('month', timestamp '2026-10-15 04:55:00');  --10

select date_part('day', timestamp '2026-10-15');     --15

select date_part('minute', timestamp '2026-11-07 5:07:06' ); --7

select date_part('second', timestamp '2027-01-01 12:01:02');  --2

select date_part('weak', timestamp '2026-11-07 5:07:06' );   --not work becouse [error :- unit "weak" not recognized for type timestamp without time zone ]


-- 2) trunc funcktion [only consider who keyword i give as and other can niglate ]

select date_trunc('hour', timestamp '2025-12-21 20:15:40 ');    --2025-12-21 20:00:00

select date_trunc('year', timestamp '2026-07-15 20:15:40');      --2026-01-01 00:00:00

select date_trunc('month', timestamp '2027-9-2 8:9:17');            -- its working [2027-09-01 00:00:00]

select date_trunc('second', timestamp '2026-07-15 20:15:40');      --2026-07-15 20:15:40



--3) justify function [it convert to year to month, day, time to hour, minute, second]

select justify_days(interval '60 days')   ;      -- 2 mons

select justify_hours(interval '35 hours') ;  --1 day 11:00:00

SELECT justify_interval(interval '1 mon 35 days 27 hours');      --2 mons 6 days 03:00:00
