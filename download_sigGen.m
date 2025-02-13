%--------------------------------------------------------------------------
% HDL Workflow Script
% Generated with MATLAB 9.9 (R2020b) at 17:53:19 on 23/11/2020
% This script was generated using the following parameter values:
%     Filename  : 'C:\MATLAB\work\demo\HDL_Demos\0SignalEtc\Qiita_AXIM\download_sigGen.m'
%     Overwrite : true
%     Comments  : true
%     Headers   : true
%     DUT       : 'audioSignalGen/DUT'
% To view changes after modifying the workflow, run the following command:
% >> hWC.export('DUT','audioSignalGen/DUT');
%--------------------------------------------------------------------------

            hdlsetuptoolpath('ToolName','Altera Quartus II', ...
                'ToolPath', 'C:\altera\16.0\quartus\bin64\quartus.exe');
%% Load the Model
modelName = 'audioSignalGen';
load_system(modelName);
%% Workflow Configuration Settings
% Construct the Workflow Configuration Object with default settings
hWC = hdlcoder.WorkflowConfig('SynthesisTool','Altera QUARTUS II','TargetWorkflow','IP Core Generation');

% Specify the top level project directory
% hWC.ProjectFolder = 'hdl_prj_sigGen';
hWC.ProjectFolder = 'hdl_prj_sigGen_noJ';
hWC.ReferenceDesignToolVersion = '16.0';
hWC.IgnoreToolVersionMismatch = true;

% Set Workflow tasks to run
hWC.RunTaskGenerateRTLCodeAndIPCore = false;
hWC.RunTaskCreateProject = false;
hWC.RunTaskGenerateSoftwareInterface = false;
hWC.RunTaskBuildFPGABitstream = false;
hWC.RunTaskProgramTargetDevice = true;

% Set properties related to 'RunTaskGenerateRTLCodeAndIPCore' Task
hWC.IPCoreRepository = '';
hWC.GenerateIPCoreReport = false;

% Set properties related to 'RunTaskCreateProject' Task
hWC.Objective = hdlcoder.Objective.None;
hWC.AdditionalProjectCreationTclFiles = '';

% Set properties related to 'RunTaskGenerateSoftwareInterface' Task
hWC.GenerateSoftwareInterfaceModel = false;
hWC.OperatingSystem = 'Linux';
hWC.GenerateSoftwareInterfaceScript = false;

% Set properties related to 'RunTaskBuildFPGABitstream' Task
hWC.RunExternalBuild = true;
hWC.TclFileForSynthesisBuild = hdlcoder.BuildOption.Default;
hWC.CustomBuildTclFile = '';

% Set properties related to 'RunTaskProgramTargetDevice' Task
hWC.ProgrammingMethod = hdlcoder.ProgrammingMethod.Download;
hWC.IPAddress = '192.168.1.2';
hWC.SSHUsername = 'root';
hWC.SSHPassword = 'cyclonevsoc';

% Validate the Workflow Configuration Object
hWC.validate;

%% Run the workflow
hdlcoder.runWorkflow('audioSignalGen/DUT', hWC);
close_system(modelName, 0);