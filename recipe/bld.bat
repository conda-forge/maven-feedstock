conda create -yp .\bootstrap maven=3.5.0

.\bootstrap\Library\bin\mvn -DdistributionTargetDir="%LIBRARY_PREFIX%" -Drat.ignoreErrors=true clean package
