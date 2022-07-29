<div class="top">

# Tunable consistency
### [◂](command:katapod.loadPage?intro){.steps} Step 1 of 8 [▸](command:katapod.loadPage?step2){.steps}
</div>

Each keyspace in Cassandra has a data replication strategy, which prescribes 
how data should be replicated. There usually exist 
multiple copies of the same data stored on different nodes in a cluster.
However, in the real world, nodes fail, go down, get replaced, go back up, become less responsive, 
and so forth. While some replicas may become unavailable, other replicas may just be temporarily out-of-sync. Given such 
conditions, will 
your application still be able to access data? Can it tolerate the risk of reading inconsistent or stale data? 
 
The answer lies in *tunable consistency*. *Tunable consistency* is a mechanism that enables a per-operation tradeoff between *consistency* and 
*availability*. For example, for some writes, your application may prefer higher consistency to make sure that
a large number of replica nodes get those writes successfully. For some reads, your application may prefer higher availability allowing 
the reads to be served by a small number of replicas making it possible to read even when many replicas are down. 
We will soon demonstrate how consistency can be tuned using *consistency levels* and discuss how to choose consistency levels 
to meet your use case requirements.

Our introduction of tunable consistency would not be complete without mentioning *eventual consistency*, the term that refers to replicas becoming consistent or 
synchronized over time. Since every column value has a write-time timestamp, it is straightforward to differentiate 
between up-to-date and stale data. Cassandra provides several mechanisms to synchronize replicas, including *anti-entropy repair*, 
*read repair* and *hinted handoff*.  

[continue](command:katapod.loadPage?step2){.orange_bar}