create database GestionProjets;
use GestionProjets;

create table EMPLOYEE(

	EMPNO int primary key,
	EMPNOM varchar(30),
	FONCTION varchar(30),
	DATEEMB date,
	CHEF int foreign key references EMPLOYEE (EMPNO),
	SALAIRE money,
	 
	DEPTNO int foreign key references DEPARTEMENT (DEPTNO)

);

create table DEPARTEMENT(
	DEPTNO int primary key ,
	DEPTNOM varchar(30),
	LIEU varchar(30)
);


create table PROJET(
	PCODE int primary key,
	PNOM varchar(30)
);
create table PARTICIPER(
	PCODE int foreign key references PROJET (PCODE) ,
	EMPNO int foreign key references EMPLOYEE (EMPNO),
	primary key (PCODE,EMPNO)
);

insert into EMPLOYEE values	 (1,'Melhaoui','F1','2012/10/12',null,200,1),
								(2,'MelhaouiA','F1','2013/01/1',1,90,2),
								(3,'MelhaouiL','F1','2014/06/1',2,5,3),
								(4,'Mohammed','F1','2015/11/2',null,30,4),
								(5,'Me','F1','2015/11/2',null,30,2),
								(6,'Me','ingénieurs','2015/03/2',null,30,2),
								(7,'Me','ingénieurs','2015/03/2',null,30,2),
								(8,'Me','directeur','2015/03/2',null,30,2),
								(9,'Me','directeur','2015/03/2',null,30,2)
	
								
insert into DEPARTEMENT values (1,'Melhaoui','Oujda'),
								(2,'MelhaouiA','Rabat'),
								(3,'MelhaouiL','Casa'),
								(4,'Melhaoui','Oujda')
								
								
insert into PROJET values (1,'P1'),
							(2,'P2'),
							(3,'P3'),
							(4,'P4'),
							(5,'P5'),
							(6,'Gestion pharmacie'),
							(7,null),
							(8,'Pojet directeur'),
							(9,null)
							
insert into PARTICIPER values(1,1),
								(1,2),
								(2,3),
								(5,4),
								(6,6),
								(7,7),
								(8,8),
								(9,9)	;