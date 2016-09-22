#echo off
export workspace=/Users/marysalcedo/Documents/MasterIng.Web/Practicas/mariana.salcedo.SVC.miw.upm.es
echo -----------------------------------------
echo ".(C) MIW"
echo -----------------------------------------
echo .
echo Workspace --- $workspace
echo .
cd $workspace
echo "====================== mvn clean test (profile: develop) ================================="
echo .
mvn clean test
exit

