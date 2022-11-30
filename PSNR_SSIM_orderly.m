function PSNR_SSIM_orderly()

 location = 'C:\Users\ulku\Documents\MATLAB\gt_resize_matlab_order\';       %  folder in which your images exists
 location_rd = 'C:\Users\ulku\Documents\MATLAB\train_2shift_matlab_resize_ordered\';  


% Check to make sure that folder actually exists.  Warn user if it doesn't.
if ~isdir(location)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', location);
  uiwait(warndlg(errorMessage));
  return;
end
% Get a list of all files in the folder with the desired file name pattern.
filePattern_gt = fullfile(location, '*.png'); % Change to whatever pattern you need.
theFiles_gt = dir(filePattern_gt);

filePattern_rd = fullfile(location_rd, '*.png'); % Change to whatever pattern you need.
theFiles_rd = dir(filePattern_rd);

for k = 1 : length(theFiles_gt)
    
  baseFileName_gt = theFiles_gt(k).name;
  fullFileName_gt = fullfile(location, baseFileName_gt);
  fprintf(1, 'Now reading %s\n', fullFileName_gt);
  
   baseFileName_rd = theFiles_rd(k).name;
  fullFileName_rd = fullfile(location_rd, baseFileName_rd);
  fprintf(1, 'Now reading rd %s\n', fullFileName_rd);
  % Now do whatever you want with this file name,
  % such as reading it in as an image array with imread()
  image_gt = imread(fullFileName_gt);
  image_rd = imread(fullFileName_rd);
%   imshow(image_gt);  % Display image.
%   imshow(image_rd);  % Display image.
 
        [peaksnr, snr] = psnr(image_rd,image_gt);
        [ssimval, ssimmap] = ssim(image_rd,image_gt);
        fprintf('\n AFTER RESIZE****************');
        
        fprintf('\n The n value is %f',k);
        fprintf('\n The Peak-SNR value is %0.4f',peaksnr);
        fprintf('\n The SNR value is %0.4f',snr);
        fprintf('\n The SSIM value is %0.5f \n',ssimval);
end
end