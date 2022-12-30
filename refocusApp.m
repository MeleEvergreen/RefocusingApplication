function refocusApp(rgb_stack, depth_map)

    imshow(rgb_stack(:,:,1:3));
    pause(4.21);

    msg1 =  msgbox('Press Enter to End');
    msg2 = msgbox('Click anywhere, like the bottle or the people, to focus');

    rbg_size = size(rgb_stack);
    height_max = rbg_size(2);
    width_max = rbg_size(1);

    [width,height] = ginput(1);
    true_val1 = width <= width_max;
    true_val2 = height <= height_max;

    true_val3 = ~isempty(width);
    true_val4 = ~isempty(height);

    while true_val1 && true_val2 && true_val3 && true_val4
        
        img_depth = depth_map(ceil(height), ceil(width));
        
        j = img_depth * 3;

        imshow(rgb_stack(:,:,j-2:j));

        pause(2.1);

        [width,height] = ginput(1);
        
        true_val1 = width <= width_max;
        true_val2 =  height <= height_max;
    
        true_val3 =  ~isempty(width);
        true_val4 = ~isempty(height);
    end


end