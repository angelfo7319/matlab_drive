%defines the size of the grid
N=500;
%creates a vector to make the grid
x = -N/2:1:N/2;
%creates a matrix containing the x-coordinates for each pixel
xmat = meshgrid(x);
%creates a matrix containing the y-coordinates for each pixel by transposing %the x-matrix
ymat = -xmat';
%makes a matrix with the radius values from the center for each pixel
R = sqrt(xmat.^2 + ymat.^2);
%creating a logical filter
logicalFilter = (xmat > 0 & R > 100);
%displaying the logical filter
imshow(logicalFilter) 


%% InvertedData = (logicalFilter - 100);
% logical_filtering
% imshow(InvertedData)
% imshow(logicalFilter) 
% max(logicalFilter)