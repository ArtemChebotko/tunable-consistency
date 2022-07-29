<div class="top">

# ONE, TWO, THREE, LOCAL_ONE
### [◂](command:katapod.loadPage?step5){.steps} Step 6 of 8 [▸](command:katapod.loadPage?step7){.steps}
</div>

Let's experiment with these consistency levels and see why 
they can or cannot be satisfied.
 
Add a row using CL `ONE`:
```
CONSISTENCY ONE;
INSERT INTO users (email, name, age, date_joined) 
VALUES ('joe@datastax.com', 'Joe', 25, '2020-01-01');
```
CL `ONE` was satisfied by one of the two nodes in the cluster.


Add a row using CL `TWO`:
<details>
  <summary>Solution</summary>

```
CONSISTENCY TWO;
INSERT INTO users (email, name, age, date_joined) 
VALUES ('jen@datastax.com', 'Jen', 27, '2020-01-01');
```

CL `TWO` was satisfied by the two nodes in the cluster.

</details>

<br/>

Add a row using CL `THREE`:
<details>
  <summary>Solution</summary>

```
CONSISTENCY THREE;
INSERT INTO users (email, name, age, date_joined) 
VALUES ('art@datastax.com', 'Art', 33, '2020-05-04');
```

CL `THREE` could not be satisfied because the cluster does not have three replicas to respond.

</details>

<br/>

Add a row using CL `LOCAL_ONE`:
<details>
  <summary>Solution</summary>

```
CONSISTENCY LOCAL_ONE;
INSERT INTO users (email, name, age, date_joined) 
VALUES ('jim@datastax.com', 'Jim', 31, '2020-05-07');
```

CL `LOCAL_ONE` was satisfied by the node in our local datacenter *DC-London*.

</details>

<br/>

Retrieve all rows from the table:
```
CONSISTENCY ONE; SELECT * FROM users;
```

[continue](command:katapod.loadPage?step7){.orange_bar}