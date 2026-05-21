function startup()
%STARTUP Add the repository source tree to the MATLAB path.
repoRoot = fileparts(mfilename('fullpath'));
% Make all thesis source folders available on the MATLAB path.
addpath(genpath(fullfile(repoRoot, 'src')));
end
