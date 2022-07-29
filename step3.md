<div class="top">

# Find information about the cluster and start the CQL shell
### [◂](command:katapod.loadPage?step2){.steps} Step 3 of 8 [▸](command:katapod.loadPage?step4){.steps}
</div>

Use `nodetool` to find information about the cluster:

```
docker exec -i -t Cassandra-1 bash -c 'nodetool status'
```

Notice that we have:
- two nodes in the cluster
- two datacenters named *DC-London* and *DC-Paris*
- one node in each datacenter

Start the CQL shell:
```
cqlsh
```

Notice that, in this example, `cqlsh` connects to the node in *DC-London* using default `localhost:9042`. The node in *DC-Paris* can be connected to by running command `cqlsh localhost 9043`.

[continue](command:katapod.loadPage?step4){.orange_bar}