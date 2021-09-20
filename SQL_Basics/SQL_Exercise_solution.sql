set schema 'introduction'; 

insert into age_bucket (range) values ('0:5'), ('6:14'), ('15:19'), ('20:29'), ('30:39'), ('40:49'), ('50:59'),
       ('60:69'), ('70:79'), ('80:89'), ('90');
       
select * from gender

insert into gender (name) 
    values ('male'), ('female');

select id from age_bucket

select * from record

select min(record_date) from record

select id from record where id_gender = 1 and id_age_bucket = 1 

select * from age_bucket;

select * from record where id_gender = 1 and id_age_bucket between 4 and 6 

select r.cases, r.record_date, g.name from record r 
inner join gender g on g.id = r.id_gender
where r.id_gender = 2 

select r.cases, r.record_date, g.name, ab.range from record r 
inner join gender g on g.id = r.id_gender
inner join age_bucket ab on ab.id = r.id_age_bucket
where r.id_gender = 1 and r.id_age_bucket between 4 and 6


select r.cases, r.record_date, g.name, ab.range from record r 
inner join gender g on g.id = r.id_gender
inner join age_bucket ab on ab.id = r.id_age_bucket
where r.id_gender = 2 and r.id_age_bucket between 4 and 6
order by r.record_date desc 

select avg(r.cases), g.name from record r 
inner join gender g on g.id = r.id_gender
group by g.name

select avg(r.cases), g.name, ab.range from record r 
inner join gender g on g.id = r.id_gender
inner join age_bucket ab on ab.id = r.id_age_bucket
group by g.name, ab.range
order by 1 desc
