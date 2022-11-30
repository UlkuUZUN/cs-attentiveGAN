function NRIQA_orderly()

 location = 'C:\Users\ulku\Documents\MATLAB\gt_resize_matlab_order\';       %  folder in which your images exists


% Check to make sure that folder actually exists.  Warn user if it doesn't.
if ~isdir(location)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', location);
  uiwait(warndlg(errorMessage));
  return;
end
% Get a list of all files in the folder with the desired file name pattern.
filePattern_gt = fullfile(location, '*.png'); % Change to whatever pattern you need.
theFiles_gt = dir(filePattern_gt);

for k = 1 : length(theFiles_gt)
    
  baseFileName_gt = theFiles_gt(k).name;
  fullFileName_gt = fullfile(location, baseFileName_gt);
  fprintf(1, '\nNow reading %s\n', fullFileName_gt);
  
  A = double(imread(fullFileName_gt));

 try
    results.bliinds2=bliinds2.bliinds2_score(A);
     fprintf('\n **************');
      fprintf(results.bliinds2);
catch exception
    results.bliinds2=nan;
    disp '*********** Error: '
    disp (getReport(exception,'extended'))
end
%   niqe_score = niqe(A);
%   brisque_score = brisque(A);
% %   piqe_score = piqe(A);
%   fprintf('\n **************');
%         
%         fprintf('\n The n value is %f',k);
%         fprintf('\n The niqe_score value is %0.4f',niqe_score);
%         fprintf('\n The brisque_score value is %0.4f',brisque_score);
%         fprintf('\n The piqe_score value is %0.5f \n',piqe_score);
end
end