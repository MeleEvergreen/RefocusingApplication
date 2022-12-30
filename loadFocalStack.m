function [rgb_stack, gray_stack] = loadFocalStack(focal_stack_dir)
%      DEBUG = 0;

    % Change to the stack dir
    cd (focal_stack_dir)

    [height, len, rbg] = size(imread('frame25.jpg'));
    frames = 25; 

    gray_stack = cast(zeros(height,len, frames),       'uint8');
    rgb_stack  = cast(zeros(height,len, frames * rbg), 'uint8');

    % We do this to show grayscale images
    for i=1:frames
%         j = (img_end - 1):(img_end);

        img_end = i * rbg;
        img = imread(['frame' num2str(i) '.jpg']);
        gray_stack(:,:,i) = rgb2gray(img);
        rgb_stack(:,:,(img_end - 2):(img_end)) = img;

    end

    % Return proper directory
    cd ('..')
