%--------------------------------------------------------------------------
% HDL Workflow Script
% Generated with MATLAB 9.9 (R2020b) at 18:43:13 on 23/11/2020
% This script was generated using the following parameter values:
%     Filename  : 'C:\MATLAB\work\demo\HDL_Demos\0SignalEtc\Qiita_AXIM\compileDownloadNoJtag.m'
%     Overwrite : true
%     Comments  : true
%     Headers   : true
%     DUT       : 'audioSignalGen/DUT'
% To view changes after modifying the workflow, run the following command:
% >> hWC.export('DUT','audioSignalGen/DUT');
%--------------------------------------------------------------------------

%% Load the Model
modelName = 'audioSignalGen';
load_system(modelName);

%% Restore the Model to default HDL parameters
%hdlrestoreparams('audioSignalGen/DUT');

%% Model HDL Parameters
%% Set Model 'audioSignalGen' HDL parameters
hdlset_param('audioSignalGen', 'HDLSubsystem', 'audioSignalGen/DUT');
hdlset_param('audioSignalGen', 'ReferenceDesign', 'Audio System');
hdlset_param('audioSignalGen', 'ReferenceDesignParameter', {'HDLVerifierJTAGAXI','off'});
hdlset_param('audioSignalGen', 'SynthesisTool', 'Altera QUARTUS II');
hdlset_param('audioSignalGen', 'SynthesisToolChipFamily', 'Cyclone V');
hdlset_param('audioSignalGen', 'SynthesisToolDeviceName', '5CSXFC6D6F31C6');
hdlset_param('audioSignalGen', 'SynthesisToolPackageName', '');
hdlset_param('audioSignalGen', 'SynthesisToolSpeedValue', '');
hdlset_param('audioSignalGen', 'TargetDirectory', 'hdl_prj_sigGen_noJ\hdlsrc');
hdlset_param('audioSignalGen', 'TargetFrequency', 50);
hdlset_param('audioSignalGen', 'TargetLanguage', 'Verilog');
hdlset_param('audioSignalGen', 'TargetPlatform', 'Arrow SoCKit for Audio');
hdlset_param('audioSignalGen', 'Workflow', 'IP Core Generation');

% Set SubSystem HDL parameters
hdlset_param('audioSignalGen/DUT', 'AXI4RegisterReadback', 'on');
hdlset_param('audioSignalGen/DUT', 'AXI4SlaveIDWidth', '13');
hdlset_param('audioSignalGen/DUT', 'ProcessorFPGASynchronization', 'Free running');

% Set Inport HDL parameters
hdlset_param('audioSignalGen/DUT/Data_in', 'IOInterface', 'AXI4-Stream Slave');
hdlset_param('audioSignalGen/DUT/Data_in', 'IOInterfaceMapping', 'Data');

% Set Inport HDL parameters
hdlset_param('audioSignalGen/DUT/Push_Sw', 'IOInterface', 'Push Buttons [0:3]');
hdlset_param('audioSignalGen/DUT/Push_Sw', 'IOInterfaceMapping', '[0:3]');

% Set Inport HDL parameters
hdlset_param('audioSignalGen/DUT/Volume', 'IOInterface', 'AXI4');
hdlset_param('audioSignalGen/DUT/Volume', 'IOInterfaceMapping', 'x"100"');

% Set Inport HDL parameters
hdlset_param('audioSignalGen/DUT/Slide_Sw', 'IOInterface', 'Switches [0:3]');
hdlset_param('audioSignalGen/DUT/Slide_Sw', 'IOInterfaceMapping', '[0:3]');

% Set Inport HDL parameters
hdlset_param('audioSignalGen/DUT/Sel_Wave', 'IOInterface', 'AXI4');
hdlset_param('audioSignalGen/DUT/Sel_Wave', 'IOInterfaceMapping', 'x"110"');

% Set Inport HDL parameters
hdlset_param('audioSignalGen/DUT/Freq', 'IOInterface', 'AXI4');
hdlset_param('audioSignalGen/DUT/Freq', 'IOInterfaceMapping', 'x"104"');

% Set Inport HDL parameters
hdlset_param('audioSignalGen/DUT/En_JTAG_Ctrl', 'IOInterface', 'AXI4');
hdlset_param('audioSignalGen/DUT/En_JTAG_Ctrl', 'IOInterfaceMapping', 'x"108"');
hdlset_param('audioSignalGen/DUT/En_JTAG_Ctrl', 'IOInterfaceOptions', {'RegisterInitialValue','0'});

% Set Inport HDL parameters
hdlset_param('audioSignalGen/DUT/Valid_in', 'IOInterface', 'AXI4-Stream Slave');
hdlset_param('audioSignalGen/DUT/Valid_in', 'IOInterfaceMapping', 'Valid');

% Set Delay HDL parameters
hdlset_param('audioSignalGen/DUT/Delay6', 'ResetType', 'none');

hdlset_param('audioSignalGen/DUT/Enabled Subsystem/Trigonometric Function', 'Architecture', 'Cordic');

% Set Outport HDL parameters
hdlset_param('audioSignalGen/DUT/Data_out', 'IOInterface', 'AXI4-Stream Master');
hdlset_param('audioSignalGen/DUT/Data_out', 'IOInterfaceMapping', 'Data');

% Set Outport HDL parameters
hdlset_param('audioSignalGen/DUT/LED_Out', 'IOInterface', 'LEDs General Purpose [0:3]');
hdlset_param('audioSignalGen/DUT/LED_Out', 'IOInterfaceMapping', '[0:3]');

% Set Outport HDL parameters
hdlset_param('audioSignalGen/DUT/Valid_out', 'IOInterface', 'AXI4-Stream Master');
hdlset_param('audioSignalGen/DUT/Valid_out', 'IOInterfaceMapping', 'Valid');

% Set Outport HDL parameters
hdlset_param('audioSignalGen/DUT/test_volOut', 'IOInterface', 'AXI4');
hdlset_param('audioSignalGen/DUT/test_volOut', 'IOInterfaceMapping', 'x"10C"');

% Set Outport HDL parameters
hdlset_param('audioSignalGen/DUT/test_volOut1', 'IOInterface', 'AXI4');
hdlset_param('audioSignalGen/DUT/test_volOut1', 'IOInterfaceMapping', 'x"124"');


%% Workflow Configuration Settings
% Construct the Workflow Configuration Object with default settings
hWC = hdlcoder.WorkflowConfig('SynthesisTool','Altera QUARTUS II','TargetWorkflow','IP Core Generation');

% Specify the top level project directory
hWC.ProjectFolder = 'hdl_prj_sigGen_noJ';
hWC.ReferenceDesignToolVersion = '16.0';
hWC.IgnoreToolVersionMismatch = false;

% Set Workflow tasks to run
hWC.RunTaskGenerateRTLCodeAndIPCore = true;
hWC.RunTaskCreateProject = true;
hWC.RunTaskGenerateSoftwareInterface = true;
hWC.RunTaskBuildFPGABitstream = true;
hWC.RunTaskProgramTargetDevice = false;

% Set properties related to 'RunTaskGenerateRTLCodeAndIPCore' Task
hWC.IPCoreRepository = '';
hWC.GenerateIPCoreReport = true;

% Set properties related to 'RunTaskCreateProject' Task
hWC.Objective = hdlcoder.Objective.None;
hWC.AdditionalProjectCreationTclFiles = '';

% Set properties related to 'RunTaskGenerateSoftwareInterface' Task
hWC.GenerateSoftwareInterfaceModel = true;
hWC.OperatingSystem = 'Linux';
hWC.GenerateSoftwareInterfaceScript = true;

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
close_system(modelName);