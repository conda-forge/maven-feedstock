mamba create -yp .\bootstrap maven=3.9.1

.\bootstrap\Library\bin\mvn -DdistributionTargetDir="%LIBRARY_PREFIX%" -Drat.ignoreErrors=true -Dspotless.check.skip=true clean package
