#!/bin/bash

$HIVE_HOME/bin/beeline --verbose=true -n db_user -u jdbc:hive2://localhost:10000
# $HIVE_HOME/bin/beeline -u jdbc:hive2://