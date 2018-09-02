cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\crop\baeburn'
for k1=1:length(fruit(1).images);
    imresize_baeburn{k1}=imresize(imcrop(fruit_baeburn{k1},[50 0 300 300]),[227 227])
    imwrite(imresize_baeburn{k1},sprintf('%d.png',k1))
end
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\crop\topaz'
for k1=1:length(fruit(3).images);
    imresize_apple_topaz{k1}=imresize(imcrop(fruit_apple_topaz{k1},[50 0 300 300]),[227 227])
    imwrite(imresize_apple_topaz{k1},sprintf('%d.png',k1))
end
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\crop\golden'
for k1=1:length(fruit(2).images);
    imresize_apple_golden_delicious{k1}=imresize(imcrop(fruit_apple_golden_delicious{k1},[50 0 300 300]),[227 227])
    imwrite(imresize_apple_golden_delicious{k1},sprintf('%d.png',k1))
end
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\crop\peach'
for k1=1:length(fruit(4).images);
    imresize_peach{k1}=imresize(imcrop(fruit_peach{k1},[50 0 300 300]),[227 227])
    imwrite(imresize_peach{k1},sprintf('%d.png',k1))
end
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\crop\pear'
for k1=1:length(fruit(5).images);
    imresize_pear{k1}=imresize(imcrop(fruit_pear{k1},[50 0 300 300]),[227 227])
    imwrite(imresize_pear{k1},sprintf('%d.png',k1))
end
