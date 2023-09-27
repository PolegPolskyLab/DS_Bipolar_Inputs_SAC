# DS_Bipolar_Inputs_SAC
NEURON model and Igor files with experimental data and evolutionary algorithms

IMPORTANT!

a subfolder 'waves' is required for the model to run


to run the simulation, follow the following steps:
1. edit 'main.hoc' , line 8
  NEURONonly=1
2. run main.hoc
3. edit 'main.hoc' , line 8
  NEURONonly=0
4. open BC_SAC_Network in igor (8 and above)
5. change line 11 in NEURON_functions procedure window so that workingpath points to the waves directory
6. similarly, in NEURON_GA procedure window , change line 7 to point to the directory of the hoc files
7. run 'RunGA()'
