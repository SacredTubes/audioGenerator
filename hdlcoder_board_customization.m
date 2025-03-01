function r = hdlcoder_board_customization
% Board plugin registration file
% 1. Any registration file with this name on MATLAB path will be picked up
% 2. Registration file returns a cell array pointing to the location of 
%    the board plugins
% 3. Board plugin must be a package folder accessible from MATLAB path,
%    and contains a board definition file

%   Copyright 2014 The MathWorks, Inc.

r = { ...
    'myArrowSoCKit.plugin_board', ...
    };

end


% LocalWords:  CKit
