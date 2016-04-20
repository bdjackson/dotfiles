```
brew install hadoop
```

Open the file `/usr/local/Cellar/hadoop/2.7.2/libexec/etc/hadoop/hadoop-env.sh`,
     and replace the line with
```
export HADOOP_OPTS="$HADOOP_OPTS -Djava.net.preferIPv4Stack=true"
```
with
```
export HADOOP_OPTS="$HADOOP_OPTS -Djava.net.preferIPv4Stack=true -Djava.security.krb5.realm= -Djava.security.krb5.kdc="
```


Open the file `/usr/local/Cellar/hadoop/2.7.2/libexec/etc/hadoop/hadoop-env.sh`,
     and replace the line with
```
export HADOOP_OPTS="$HADOOP_OPTS -Djava.net.preferIPv4Stack=true"
```
with
```
export HADOOP_OPTS="$HADOOP_OPTS -Djava.net.preferIPv4Stack=true -Djava.security.krb5.realm= -Djava.security.krb5.kdc="
```


