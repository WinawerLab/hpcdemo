%% A demo matlab script

% Download and load some input data, which is not in git.
% This data consists of a cell array, each cell of which holds one
% type of stimulus, and contains 30 images of that stimulus type.
downloadData()
load('./input/stimuli.mat')

% Create an output directory
outputdir = './output';
if ~exist(outputdir, 'dir')
    mkdir(outputdir)
end

% Save out the first image of each stimulus class
for i = 1:length(images)
    thiscategory = images{i};
    filename = fullfile(outputdir, sprintf('image-%03d.png', i));
    imwrite(thiscategory(:,:,1), filename);
end
