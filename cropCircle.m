function myImg = cropCircle(a, b, r, r2, myImg)

myImg = im2double(myImg);
B = size(myImg);

for x=1:B(2)
    for y=1:B(1)
        if (x-a)^2 + (y-b)^2 > r^2
           % pixel is outside of the circle, so colour it blue
           myImg(y,x,:) = [255 255 255]; 
        end
    end
end

for x=1:B(2)
    for y=1:B(1)
        if (x-a)^2 + (y-b)^2 < r2^2
           % pixel is outside of the circle, so colour it blue
           myImg(y,x,:) = [255 255 255]; 
        end
    end
end