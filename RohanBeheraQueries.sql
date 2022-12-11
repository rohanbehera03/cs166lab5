--Find the pid of parts with cost lower than 10--
SELECT P.pid
FROM Parts P, Catalog C
WHERE P.pid = C.pid AND C.cost < 10;

--Find the name of parts with cost lower than 10--
SELECT P.pname
FROM Parts P, Catalog C
WHERE P.pid = C.pid AND C.cost < 10;

--Find the address of the suppliers who supply “Fire Hydrant Cap”--
SELECT S.address
FROM Suppliers S, Parts P, Catalog C
WHERE S.sid = C.sid AND P.pid = C.pid AND P.pname = 'Fire Hydrant Cap';

--Find the name of the suppliers who supply green parts--
SELECT S.sname
FROM Parts P, Suppliers S, Catalog C
WHERE P.pid = C.pid AND S.sid = C.sid AND P.color = 'Green';

--For each supplier, list the supplier’s name along with all parts’ name that it supply--
SELECT P.pname, S.sname
FROM Parts P, Suppliers S, Catalog C
WHERE P.pid = C.pid AND S.sid = C.sid;

