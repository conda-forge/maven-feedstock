conda create -yp .\bootstrap maven=3.9.2

.\bootstrap\Library\bin\mvn -DdistributionTargetDir="%LIBRARY_PREFIX%" -Drat.ignoreErrors=true clean package
