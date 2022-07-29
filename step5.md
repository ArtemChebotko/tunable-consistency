<div class="top">

# Access and set a consistency level
### [◂](command:katapod.loadPage?step4){.steps} Step 5 of 8 [▸](command:katapod.loadPage?step6){.steps}
</div>

The CQL shell has the `CONSISTENCY` command to both access and set a consistency level for 
read and write operations. When you write your own application using a driver, there will be a way to 
set a consistency level dynamically, too.

Get the current consistency level:
```
CONSISTENCY;
```

Set the consistency level:
```
CONSISTENCY LOCAL_ONE;
```

[continue](command:katapod.loadPage?step6){.orange_bar}