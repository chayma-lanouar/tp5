--2.1
sol1:
select* from Emp
where Hiredate between TO_DATE('01/01/20011','DD/MM/YYYY')AND TO_DATE('31/12/2011','DD/MM/YYYY');
sol2:
select* from Emp
where to_char(hire_date,'YYYY')='2011';
sol3:
select* from Emp
where 





2.2
sol1:
select ename,round(sal) from EMP where upper(ename) like '_L%';
sol2:
select ename,round(sal)
from emp 
where upper(substr(ename,2,1))='L';
2.3
sol1:
select distinct initcap(job) from emp;
sol2:
select distinct upper (substr(job,1,1))||lower(substr(job,2,length(job))) from emp
2.4
sol1:
select hiredate from emp 
where upper(job) in ('ANALYST','MANAGER');
sol2:
where upper(job)='ANALYST' or upper(job)='MANAGER';
2.5
select ename,job,decode(commission,null,'sans',0,'sans',commission), nvl(commission,0)+sal
 from emp;
 2.6
select deptno,decode(deptno,10,'****',20,'####',SAL) as SALAIRE
from emp;
2.7
select ename, floor(MONTHS_BETWEEN(sysdate,hiredate)) as nb_mounth from emp;
3)jointure
3.1
sol1
select ename,dname from emp e join dept d
on e.deptno=d.deptno;
sol2
select ename,dname from emp e,dept d
where e.deptno=d.deptno;
3.2
select ename from emp where mgr=(select mgr from emp where upper(ename)='CLARK');
3.3
select e.ename,e.sal,s.ename,s.sal from emp e,emp s where e.mgr=s.empno and e.sal>s.sal;
3.4
select ename from Emp
where deptno=(select deptno from dept where upper(dname)='RESEARCH') and
sal>=(select lowsal from salgrade where grade=4) and sal<=(select highsal from salgrade where grade=4);
3.5
select e1.ename,e2.ename
from emp e1, emp e2
where e1.deptno=(select deptno from dept where upper(dname)='RESEARCH')
and e2.deptno=(select deptno from dept where upper(dname)='ACCOUNTING')
and e1.hiredate=e2.hiredate;
3.6
select empno from emp where deptno in (select deptno from emp where upper (job)='ANALASYST');
VIEWS:
1)
create view VEMP AS
SELECT empno matricule ,ename nom ,e.deptno "nom de departement" ,sal+nvl(commission,0) GAINS,loc "lieu de departement"
from emp e,dept d
where e.deptno=d.deptno
syntaxe2:
create view VEMP AS(matricule,"nom de departement",GAINS,"lieu de departement")
SELECT empno  ,ename nom ,e.deptno  ,sal+nvl(commission,0) ,loc 
from emp e,dept d
where e.deptno=d.deptno
2)
select * from VEMP where GAINS>2500;
3)
update vemp set nom ='SAMIR'
where nom='MARTIN';
4)
select column_name, insertable, updatable, deletable
from user_updatable_columns
where table_name = 'VEMP';
5)
CREATE VIEW VEMP10 AS
SELECT * FROM emp WHERE deptno = 10;
--
insert into VEMP10(empno,ename,job,hiredate,sal,deptno) VALUES(111,'SALAH','SALESMAN',to_date('12-02-2018','DD/MM/YY'),2000,20);
6)
CREATE OR REPLACE VIEW VEMP11 AS
SELECT * FROM emp WHERE deptno = 10 with check option;
7)
insert into VEMP11 