<div class="top">

# Create a keyspace and a table
### [◂](command:katapod.loadPage?step3){.steps} Step 4 of 8 [▸](command:katapod.loadPage?step5){.steps}
</div>

To demonstrate how availability can be affected by different consistency levels, we can create 
a keyspace that prescribes to have more replicas than the number of nodes in the cluster. Let's 
use replication factors `1` and `3` for *DC-London* and *DC-Paris*, respectively. You can think of this 
situation as if we lost two replicas in *DC-Paris* due to a natural disaster ... will we still be able to write and read data?

Create the keyspace:
```
CREATE KEYSPACE killr_video
WITH replication = {
  'class': 'NetworkTopologyStrategy', 
  'DC-London': 1,
  'DC-Paris': 3 };
```

Create the table:
```
USE killr_video;
CREATE TABLE users (
  email TEXT,
  name TEXT,
  age INT,
  date_joined DATE,
  PRIMARY KEY ((email))
);
```

[continue](command:katapod.loadPage?step5){.orange_bar}