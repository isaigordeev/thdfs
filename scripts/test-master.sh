# Replace with your NameNode pod name
NAMENODE_POD=$(kubectl get pods -l app=hadoop-namenode -o jsonpath='{.items[0].metadata.name}')

kubectl exec -it $NAMENODE_POD -- sh -c "
  hdfs dfs -mkdir -p /testdir && \
  hdfs dfs -ls / | grep testdir && \
  echo 'Hadoop HDFS test passed'
"
