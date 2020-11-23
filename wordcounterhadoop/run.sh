#!/usr/bin/env bash
#it's the hello word of map reduce with python and  hadoop streaming
# please configure all the parameters of hadoop before execution
FileInput=${1? fournisez un fichier entree!!!}
FileOutput=${2? fournisez un fichier de sortie !!!}

$HADOOP_HOME/bin/hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.3.0.jar   -mapper  ./mapper.py -reducer ./reducer.py -input $FileInput -output $FileOutput

$HADOOP_HOME/bin/hadoop fs -cat $FileOutput/*
