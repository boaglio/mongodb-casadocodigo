 
sc.exe delete MongoDB
 
sc.exe create MongoDB binPath="\"C:\MongoDB\bin\mongod.exe\" --service --config=\"C:\MongoDB\mongod.cfg\"" DisplayName="MongoDB" start="auto"
 
