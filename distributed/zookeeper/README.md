##### 分布式协调组件zookeeper学习  
ZooKeeper是一个分布式的，开放源码的分布式应用程序协调服务，是Google的Chubby一个开源的实现，是Hadoop和Hbase的重要组件。它是一个为分布式应用提供一致性服务的软件，提供的功能包括：配置维护、名字服务、分布式同步、组服务等。  
ZooKeeper的目标就是封装好复杂易出错的关键服务，将简单易用的接口和性能高效、功能稳定的系统提供给用户。  
ZooKeeper包含一个简单的原语集，提供Java和C的接口。  
ZooKeeper代码版本中，提供了分布式独享锁、选举、队列的接口，代码在zookeeper-3.4.3\src\recipes。其中分布锁和队列有Java和C两个版本，选举只有Java版本。  
* 1.1 [zkclient客户端工具包的代码案例](./zkclient)  
* 1.2 [curator客户端工具包代码案例](./curator)  
* 1.3 [zookeeper-java原生API工具包代码案例](./javaProtogenesisApi)  

##### 原理  
ZooKeeper是以Fast Paxos算法为基础的，Paxos 算法存在活锁的问题，即当有多个proposer交错提交时，有可能互相排斥导致没有一个proposer能提交成功，而Fast Paxos作了一些优化，通过选举产生一个leader，只有leader才能提交proposer，具体算法可见Fast Paxos。因此，要想弄懂ZooKeeper首先得对Fast Paxos有所了解。  
ZooKeeper的基本运转流程：  
1、 选举Leader。  
2、 同步数据。  
3、 选举Leader过程中算法有很多，但要达到的选举标准是一致的。  
4、 Leader要具有最高的zxid。  
5、 集群中大多数的机器得到响应并follow选出的Leader。   
##### 特点
在Zookeeper中，znode是一个跟Unix文件系统路径相似的节点，可以往这个节点存储或获取数据。如果在创建znode时Flag设置为EPHEMERAL，那么当创建这个znode的节点和Zookeeper失去连接后，这个znode将不再存在在Zookeeper里，Zookeeper使用Watcher察觉事件信息。当客户端接收到事件信息，比如连接超时、节点数据改变、子节点改变，可以调用相应的行为来处理数据。Zookeeper的Wiki页面展示了如何使用Zookeeper来处理事件通知，队列，优先队列，锁，共享锁，可撤销的共享锁，两阶段提交。  
那么Zookeeper能作什么事情呢，简单的例子：假设我们有20个搜索引擎的服务器(每个负责总索引中的一部分的搜索任务)和一个总服务器(负责向这20个搜索引擎的服务器发出搜索请求并合并结果集)，一个备用的总服务器(负责当总服务器宕机时替换总服务器)，一个web的cgi(向总服务器发出搜索请求)。搜索引擎的服务器中的15个服务器提供搜索服务，5个服务器正在生成索引。这20个搜索引擎的服务器经常要让正在提供搜索服务的服务器停止提供服务开始生成索引，或生成索引的服务器已经把索引生成完成可以搜索提供服务了。使用Zookeeper可以保证总服务器自动感知有多少提供搜索引擎的服务器并向这些服务器发出搜索请求，当总服务器宕机时自动启用备用的总服务器。  
##### 部署安装  
我需要运行几个ZooKeeper?  
你运行一个zookeeper也是可以的，但是在生产环境中，你最好部署3，5，7个节点。部署的越多，可靠性就越高，当然最好是部署奇数个，偶数个不是不可以的，但是zookeeper集群是以宕机个数过半才会让整个集群宕机的，所以奇数个集群更佳。你需要给每个zookeeper 1G左右的内存，如果可能的话，最好有独立的磁盘。 (独立磁盘可以确保zookeeper是高性能的。).如果你的集群负载很重，不要把Zookeeper和RegionServer运行在同一台机器上面。就像DataNodes 和 TaskTrackers一样。  
[zookeeper安装]()  


  