function PSNR_SSIM_orderly()
location = 'C:\Users\ulku\Documents\MATLAB\test_a\test_a\data\';
filePattern = fullfile(location, '*.png'); % Change to whatever pattern you need.
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    
  baseFileName = theFiles(k).name;
  fullFileName = fullfile(location, baseFileName);
  fprintf(1, 'Now reading %s\n', fullFileName);

  image = imread(fullFileName);
  im_son=imresize(image, 0.5);    
  imwrite(im_son,sprintf('%d_raindrop_scale.png',k));

end
end