CALL mamba create -yp .\bootstrap maven=3.9.1

CALL .\bootstrap\Library\bin\mvn -DdistributionTargetDir="%LIBRARY_PREFIX%" -Drat.ignoreErrors=true -Dspotless.check.skip=true -Dmaven.clean.failOnError=false clean package

rd /s /q "%LIBRARY_PREFIX%\lib\ext\"
