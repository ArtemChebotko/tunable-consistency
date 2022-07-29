<div class="top">

# QUORUM, LOCAL_QUORUM, EACH_QUORUM
### [◂](command:katapod.loadPage?step6){.steps} Step 7 of 8 [▸](command:katapod.loadPage?step8){.steps}
</div>

Let's experiment with these consistency levels and see why 
they can or cannot be satisfied.

 
Retrive a row using CL `QUORUM`:
```
CONSISTENCY QUORUM;
SELECT * FROM users WHERE email = 'joe@datastax.com';
```

CL `QUORUM` could not be satisfied because the cluster does not have three (`(1 + 3) / 2 + 1`) replicas to respond.


Retrive a row using CL `LOCAL_QUORUM`:
<details>
  <summary>Solution</summary>

```
CONSISTENCY LOCAL_QUORUM;
SELECT * FROM users WHERE email = 'joe@datastax.com';
```

<br/>
CL `LOCAL_QUORUM` was satisfied by the only replica in local datacenter *DC-London*. One (`1 / 2 + 1`) response wa required.
</details>

Retrive a row using CL `EACH_QUORUM`:
<details>
  <summary>Solution</summary>

```
CONSISTENCY EACH_QUORUM;
SELECT * FROM users WHERE email = 'joe@datastax.com';
```

<br/>
CL `EACH_QUORUM` could not be satisfied because datacenter *DC-Paris* does not have two (`3 / 2 + 1`) replicas to respond.
</details>

[continue](command:katapod.loadPage?step8){.orange_bar}
