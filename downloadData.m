function wgetData(overwrite)
% WGET DATA - This function fetches data, which are not included in this
% git repository, and downloads them.
%   overwrite - if true, then will re-download and overwrite existing data,
%   if any exists

    if nargin < 1
        overwrite = false;
    end

    % Check if input directory exists
    inputdir = './input';
    if ~exist(inputdir, 'dir')
        mkdir(inputdir)
    end

    % Download; overwrite only if "overwrite" flag is on
    www = 'http://kendrickkay.net/socmodel/';

    stimuliName = 'stimuli.mat';
    stimuliLocation = fullfile(inputdir, stimuliName);
    if (~exist(stimuliLocation, 'file') || overwrite)
        display('Downloading stimuli')
        urlwrite(fullfile(www, stimuliName), stimuliLocation);
    end
end
