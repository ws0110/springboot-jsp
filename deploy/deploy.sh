
#!/bin/bash 

BUILD_PATH=/home/ec2-user/build
TOMCAT_PATH=/home/ec2-user/apache-tomcat-9.0.45
DEPLOY_PATH=$TOMCAT_PATH/webapps


echo "> Backup Old War..."
cp $DEPLOY_PATH/ROOT.war $DEPLOY_PATH/ROOT.war.BACK

echo "> Tomcat pid check..."
CURRENT_PID=$(pgrep -f tomcat)
echo "$CURRENT_PID"
if [ -z $CURRENT_PID ]; then
  echo "> Tomcat not Running.."
else
  echo "> Tomcat Stop..."
  $TOMCAT_PATH/bin/shutdown.sh
fi

echo "> Build File Copy..."
rm -rf $DEPLOY_PATH/ROOT
cp $BUILD_PATH/*.war $DEPLOY_PATH/ROOT.war

echo "> Tomcat Start..."
$TOMCAT_PATH/bin/startup.sh


