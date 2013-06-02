@echo off

set COMMAND_JAVA=java -Xmx8000M -cp weka.jar
REM Evaluadores
set CFSSUBSETEVAL=weka.attributeSelection.CfsSubsetEval
set CLASSIFIERSUBSETEVAL=weka.attributeSelection.ClassifierSubsetEval -B weka.classifiers.rules.ZeroR -T -H
set GAINRATIOATTRIBUTEEVAL=weka.attributeSelection.GainRatioAttributeEval 
set INFOGAINATTRIBUTEEVAL=weka.attributeSelection.InfoGainAttributeEval

REM Metodos de busqueda
set BESTFIRST=weka.attributeSelection.BestFirst -D 1 -N 5
set GENETICSEARCH=weka.attributeSelection.GeneticSearch -Z 20 -G 20 -C 0.6 -M 0.033 -R 20 -S 1
set GREEDYSTEPWISE=weka.attributeSelection.GreedyStepwise -T -1.7976931348623157E308 -N -1
set RANKER=weka.attributeSelection.Ranker -T -1.7976931348623157E308 -N -1

echo ########STARTED matematicaPro######### %time%
echo ########STARTED matematicaPro######### %time% >> tiempos.txt
echo Running matematicaPro1000-1 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%BESTFIRST%" -i matematicaPro\matematicaPro1000.arff > matematicaPro\cfsBfmatematicaPro1000.txt
echo Running matematicaPro1000-2 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GENETICSEARCH%" -i matematicaPro\matematicaPro1000.arff > matematicaPro\cfsGsmatematicaPro1000.txt
echo Running matematicaPro1000-3 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GREEDYSTEPWISE%" -i matematicaPro\matematicaPro1000.arff > matematicaPro\cfsGswmatematicaPro1000.txt
echo Running matematicaPro1000-4 %time%
%COMMAND_JAVA% %CLASSIFIERSUBSETEVAL% -M -s "%GENETICSEARCH%" -i matematicaPro\matematicaPro1000.arff > matematicaPro\claGsmatematicaPro1000.txt
echo Running matematicaPro1000-5 %time%
%COMMAND_JAVA% %GAINRATIOATTRIBUTEEVAL% -M -s "%RANKER%" -i matematicaPro\matematicaPro1000.arff > matematicaPro\gainRankermatematicaPro1000.txt
echo Running matematicaPro1000-6 %time%
%COMMAND_JAVA% %INFOGAINATTRIBUTEEVAL% -M -s "%RANKER%" -i matematicaPro\matematicaPro1000.arff > matematicaPro\infoRankermatematicaPro1000.txt
echo Running matematicaPro10000-1 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%BESTFIRST%" -i matematicaPro\matematicaPro10000.arff > matematicaPro\cfsBfmatematicaPro10000.txt
echo Running matematicaPro10000-2 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GENETICSEARCH%" -i matematicaPro\matematicaPro10000.arff > matematicaPro\cfsGsmatematicaPro10000.txt
echo Running matematicaPro10000-3 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GREEDYSTEPWISE%" -i matematicaPro\matematicaPro10000.arff > matematicaPro\cfsGswmatematicaPro10000.txt
echo Running matematicaPro10000-4 %time%
%COMMAND_JAVA% %CLASSIFIERSUBSETEVAL% -M -s "%GENETICSEARCH%" -i matematicaPro\matematicaPro10000.arff > matematicaPro\claGsmatematicaPro10000.txt
echo Running matematicaPro10000-5 %time%
%COMMAND_JAVA% %GAINRATIOATTRIBUTEEVAL% -M -s "%RANKER%" -i matematicaPro\matematicaPro10000.arff > matematicaPro\gainRankermatematicaPro10000.txt
echo Running matematicaPro10000-6 %time%
%COMMAND_JAVA% %INFOGAINATTRIBUTEEVAL% -M -s "%RANKER%" -i matematicaPro\matematicaPro10000.arff > matematicaPro\infoRankermatematicaPro10000.txt
echo Running matematicaPro100000-1 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%BESTFIRST%" -i matematicaPro\matematicaPro100000.arff > matematicaPro\cfsBfmatematicaPro100000.txt
echo Running matematicaPro100000-2 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GENETICSEARCH%" -i matematicaPro\matematicaPro100000.arff > matematicaPro\cfsGsmatematicaPro100000.txt
echo Running matematicaPro100000-3 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GREEDYSTEPWISE%" -i matematicaPro\matematicaPro100000.arff > matematicaPro\cfsGswmatematicaPro100000.txt
echo Running matematicaPro100000-4 %time%
%COMMAND_JAVA% %CLASSIFIERSUBSETEVAL% -M -s "%GENETICSEARCH%" -i matematicaPro\matematicaPro100000.arff > matematicaPro\claGsmatematicaPro100000.txt
echo Running matematicaPro100000-5 %time%
%COMMAND_JAVA% %GAINRATIOATTRIBUTEEVAL% -M -s "%RANKER%" -i matematicaPro\matematicaPro100000.arff > matematicaPro\gainRankermatematicaPro100000.txt
echo Running matematicaPro100000-6 %time%
%COMMAND_JAVA% %INFOGAINATTRIBUTEEVAL% -M -s "%RANKER%" -i matematicaPro\matematicaPro100000.arff > matematicaPro\infoRankermatematicaPro100000.txt
echo Running matematicaPro500000-1 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%BESTFIRST%" -i matematicaPro\matematicaPro500000.arff > matematicaPro\cfsBfmatematicaPro500000.txt
echo Running matematicaPro500000-2 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GENETICSEARCH%" -i matematicaPro\matematicaPro500000.arff > matematicaPro\cfsGsmatematicaPro500000.txt
echo Running matematicaPro500000-3 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GREEDYSTEPWISE%" -i matematicaPro\matematicaPro500000.arff > matematicaPro\cfsGswmatematicaPro500000.txt
echo Running matematicaPro500000-4 %time%
%COMMAND_JAVA% %CLASSIFIERSUBSETEVAL% -M -s "%GENETICSEARCH%" -i matematicaPro\matematicaPro500000.arff > matematicaPro\claGsmatematicaPro500000.txt
echo Running matematicaPro500000-5 %time%
%COMMAND_JAVA% %GAINRATIOATTRIBUTEEVAL% -M -s "%RANKER%" -i matematicaPro\matematicaPro500000.arff > matematicaPro\gainRankermatematicaPro500000.txt
echo Running matematicaPro500000-6 %time%
%COMMAND_JAVA% %INFOGAINATTRIBUTEEVAL% -M -s "%RANKER%" -i matematicaPro\matematicaPro500000.arff > matematicaPro\infoRankermatematicaPro500000.txt
echo ########FINISHED matematicaPro######### %time%
echo ########FINISHED matematicaPro######### %time% >> tiempos.txt

echo ########STARTED lenguajePro######### %time%
echo ########STARTED lenguajePro######### %time% >> tiempos.txt
echo Running lenguajePro1000-1 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%BESTFIRST%" -i lenguajePro\lenguajePro1000.arff > lenguajePro\cfsBflenguajePro1000.txt
echo Running lenguajePro1000-2 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GENETICSEARCH%" -i lenguajePro\lenguajePro1000.arff > lenguajePro\cfsGslenguajePro1000.txt
echo Running lenguajePro1000-3 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GREEDYSTEPWISE%" -i lenguajePro\lenguajePro1000.arff > lenguajePro\cfsGswlenguajePro1000.txt
echo Running lenguajePro1000-4 %time%
%COMMAND_JAVA% %CLASSIFIERSUBSETEVAL% -M -s "%GENETICSEARCH%" -i lenguajePro\lenguajePro1000.arff > lenguajePro\claGslenguajePro1000.txt
echo Running lenguajePro1000-5 %time%
%COMMAND_JAVA% %GAINRATIOATTRIBUTEEVAL% -M -s "%RANKER%" -i lenguajePro\lenguajePro1000.arff > lenguajePro\gainRankerlenguajePro1000.txt
echo Running lenguajePro1000-6 %time%
%COMMAND_JAVA% %INFOGAINATTRIBUTEEVAL% -M -s "%RANKER%" -i lenguajePro\lenguajePro1000.arff > lenguajePro\infoRankerlenguajePro1000.txt
echo Running lenguajePro10000-1 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%BESTFIRST%" -i lenguajePro\lenguajePro10000.arff > lenguajePro\cfsBflenguajePro10000.txt
echo Running lenguajePro10000-2 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GENETICSEARCH%" -i lenguajePro\lenguajePro10000.arff > lenguajePro\cfsGslenguajePro10000.txt
echo Running lenguajePro10000-3 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GREEDYSTEPWISE%" -i lenguajePro\lenguajePro10000.arff > lenguajePro\cfsGswlenguajePro10000.txt
echo Running lenguajePro10000-4 %time%
%COMMAND_JAVA% %CLASSIFIERSUBSETEVAL% -M -s "%GENETICSEARCH%" -i lenguajePro\lenguajePro10000.arff > lenguajePro\claGslenguajePro10000.txt
echo Running lenguajePro10000-5 %time%
%COMMAND_JAVA% %GAINRATIOATTRIBUTEEVAL% -M -s "%RANKER%" -i lenguajePro\lenguajePro10000.arff > lenguajePro\gainRankerlenguajePro10000.txt
echo Running lenguajePro10000-6 %time%
%COMMAND_JAVA% %INFOGAINATTRIBUTEEVAL% -M -s "%RANKER%" -i lenguajePro\lenguajePro10000.arff > lenguajePro\infoRankerlenguajePro10000.txt
echo Running lenguajePro100000-1 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%BESTFIRST%" -i lenguajePro\lenguajePro100000.arff > lenguajePro\cfsBflenguajePro100000.txt
echo Running lenguajePro100000-2 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GENETICSEARCH%" -i lenguajePro\lenguajePro100000.arff > lenguajePro\cfsGslenguajePro100000.txt
echo Running lenguajePro100000-3 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GREEDYSTEPWISE%" -i lenguajePro\lenguajePro100000.arff > lenguajePro\cfsGswlenguajePro100000.txt
echo Running lenguajePro100000-4 %time%
%COMMAND_JAVA% %CLASSIFIERSUBSETEVAL% -M -s "%GENETICSEARCH%" -i lenguajePro\lenguajePro100000.arff > lenguajePro\claGslenguajePro100000.txt
echo Running lenguajePro100000-5 %time%
%COMMAND_JAVA% %GAINRATIOATTRIBUTEEVAL% -M -s "%RANKER%" -i lenguajePro\lenguajePro100000.arff > lenguajePro\gainRankerlenguajePro100000.txt
echo Running lenguajePro100000-6 %time%
%COMMAND_JAVA% %INFOGAINATTRIBUTEEVAL% -M -s "%RANKER%" -i lenguajePro\lenguajePro100000.arff > lenguajePro\infoRankerlenguajePro100000.txt
echo Running lenguajePro500000-1 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%BESTFIRST%" -i lenguajePro\lenguajePro500000.arff > lenguajePro\cfsBflenguajePro500000.txt
echo Running lenguajePro500000-2 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GENETICSEARCH%" -i lenguajePro\lenguajePro500000.arff > lenguajePro\cfsGslenguajePro500000.txt
echo Running lenguajePro500000-3 %time%
%COMMAND_JAVA% %CFSSUBSETEVAL% -M -s "%GREEDYSTEPWISE%" -i lenguajePro\lenguajePro500000.arff > lenguajePro\cfsGswlenguajePro500000.txt
echo Running lenguajePro500000-4 %time%
%COMMAND_JAVA% %CLASSIFIERSUBSETEVAL% -M -s "%GENETICSEARCH%" -i lenguajePro\lenguajePro500000.arff > lenguajePro\claGslenguajePro500000.txt
echo Running lenguajePro500000-5 %time%
%COMMAND_JAVA% %GAINRATIOATTRIBUTEEVAL% -M -s "%RANKER%" -i lenguajePro\lenguajePro500000.arff > lenguajePro\gainRankerlenguajePro500000.txt
echo Running lenguajePro500000-6 %time%
%COMMAND_JAVA% %INFOGAINATTRIBUTEEVAL% -M -s "%RANKER%" -i lenguajePro\lenguajePro500000.arff > lenguajePro\infoRankerlenguajePro500000.txt
echo ########FINISHED lenguajePro######### %time%
echo ########FINISHED lenguajePro######### %time% >> tiempos.txt