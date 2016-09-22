#echo off
export workspace=/Users/marysalcedo/Documents/MasterIng.Web/Practicas/mariana.salcedo.SVC.miw.upm.es
echo -----------------------------------------
echo ". (C) MIW"
echo -----------------------------------------
echo .
echo Workspace --- $workspace
echo .
echo .
cd $workspace

# -ff, --fail-fast. Stop at first failure in reactorized builds. Línea de comentario
echo "============ mvn -ff clean test (profile: develop) =================="
echo .
mvn -ff clean test 
if [ $? -gt 0 ] ; then
	echo .
	echo .
	echo .
	echo "########  ERRORES..."
	echo .
else
	echo .
	echo ":: -Dmaven.test.skip=true. To skip running the tests for a particular project"
	echo "============ call mvn -Dmaven.test.skip=true install -Denvironment.type=preproduction (profile: preproduction) ==============="
	echo .
	mvn -Dmaven.test.skip=true install -Denvironment.type=preproduction
	exit    
fi
