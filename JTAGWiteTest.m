%%
h = aximaster('Intel', 'interface', 'JTAG')
% 0x100 Volume
% 0x104 Freq
% 0x108 En_JTAG_Ctrl
% 0x10C test_volOut
% 0x110 Sel_Wave
% 0x120 Strobe Reg for Sel_Wave
% 0x124 test_volOut1  Freq Sel

%% Enable control
h.writememory('0x108', 1)
h.readmemory('0x108', 1)

%% Disable control
h.writememory('0x108', 0)

%% Frequency
h.writememory('0x104', 900)

%% Volume 0~15
h.writememory('0x100', uint32(6))
h.readmemory('0x100', 1)
%% Sel Wave
% h.writememory('0x110', 0)   % No connection
h.writememory('0x114', 0)   % Sqr
h.writememory('0x118', 1)   % Tri
h.writememory('0x11C', 0)   % Sin
h.writememory('0x120', 1)   % Strobe

h.readmemory('0x110', 4)
%%
h.readmemory('0x108', 10, 'BurstType', 'Increment')


%% End
h.writememory('0x108', 0)
release(h)
delete(h)

