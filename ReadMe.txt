For academic integery purposes:
Over the course of this, I used a bunch of outside material
to assist in my learning. 
It includes matlab sites/forums, method explanations,
concept explantions, etc. 
I do not have all the links on hand as there was too many
But I did want to include this for the purposes of
acknowledging this fact

generateIndexMap.m
Set matrix of zeros with dimensions H,W,N
set a gaussian spread
set a gaussian filter
set the Sum-Modified Laplacian variable through an img filter 
set a SML variable to collect the summations
We scan over all windows of N
We scan over heights 
We change the values of the upper and lower variables, 
	Which are y +- width size
	We do this by seeing it lower is greater than height 
	and if upper is greater than 1
We call a helper function called getWidths with parameters:
	upper, lower, L , SML_sums, img
Have right and left equal x (which loops through 1:W) += width_size
We do this by seeing it right is greater than weight 
	and if left is less than 1
Retreive the upper left edge
Retrive the upper right edge
Retrieve the left edge
retrive the right edge
Next, find the best-focused photo at each pixel


loadFocalStack.m
Change to the stack dir
get the height, len, rbg by reading in size and imread of 
	frame[i].jpg
set values gray_stack and rbg_stack to zeros
Loop through the frames and set the actual values
	of gray_stack and rbg_stack
Return to proper directory


refocusApp.m
show img
print message to user explaining what to do
set the rbg_size
set the height max
set the width max
set the height and width with ginput from user
set conditions for while loop
	width is <= width_max
	height is <= height_max
	width is not empty
	height is not empty
We get the image depth through depth_map
We show the new image using the rbg_Stack
we calculate the new width and height
