<div class="top">

# Choosing consistency levels
### [◂](command:katapod.loadPage?step7){.steps} Step 8 of 8 [▸](command:katapod.loadPage?finish){.steps}
</div>

For critical transactions, you should prefer *strong consistency*, which guarantees that 
all acknowledged writes are visible to subsequent reads. To achieve this, choose write and read consistency levels 
such that the write and read replica sets overlap. This simple inequality should be valid: 

`number_of_read_replicas + number_of_write_replicas > sum_of_replication_factors`

If `QUORUM` is used for both reads and writes, you are guaranteed to have strong consistency. For example, 
for our cluster with replication factors `1` and `3` for *DC-London* and *DC-Paris*, `QUORUM` means `(1 + 3) / 2 + 1 = 3` replicas and 
the inequality holds `3 + 3 > 1 + 3`. In our cluster, we can similarly achieve strong consistency by using `QUORUM` for writes and `TWO` for reads.  

With multiple datacenters, especially when datacenters serve different geographical locations, your application may prefer to only wait for responses 
from replicas in a local datacenter to avoid potentially higher network latencies for replicas in remote datacenters. In this case, 
`LOCAL_QUORUM` for both writes and reads can still guarantee strong consistency within the same datacenter, even though it 
will be a weaker guarantee for applications accessing data in other datacenters. 

Finally, less critical transactions that do not require strong consistency 
should prefer lower consistency levels, such as `ONE` and `LOCAL_ONE` to greatly improve response time, throughput and availability. 

[continue](command:katapod.loadPage?finish){.orange_bar}
