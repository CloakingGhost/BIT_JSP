create table Members(
userId varchar(30),
userPw varchar(30),
userName varchar(30),
phoneNo varchar(30),
address varchar(30),
email varchar(30), 
regDate TIMESTAMP DEFAULT NOW()


);
drop table Members;
select * from Members;