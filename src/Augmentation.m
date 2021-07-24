%%Image Augmentation%%
%% fruit 1
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\old\'
fruit_baeburn=cell(1,length(fruit(1).images))
for k1=1:length(fruit(1).images)
    i=[fruit(1).images(k1).name]
    fruit_baeburn{k1}=imread(i);
end
%%fruit 2
fruit_apple_topaz=cell(1,length(fruit(2).images))
for k2=1:length(fruit(2).images)
    i=[fruit(2).images(k2).name]
    fruit_apple_topaz{k2}=imread(i);
end
%%fruit3
fruit_golden_delicious=cell(1,length(fruit(3).images))
for k3=1:length(fruit(3).images)
    i=[fruit(3).images(k3).name]
    fruit_golden_delicious{k3}=imread(i);
end
%%fruit 4
fruit_peach=cell(1,length(fruit(4).images))
for k4=1:length(fruit(4).images)
    i=[fruit(4).images(k4).name]
    fruit_peach{k4}=imread(i);
end
%%fruit 5
fruit_pear=cell(1,length(fruit(5).images))
for k5=1:length(fruit(5).images)
    i=[fruit(5).images(k5).name]
    fruit_pear{k5}=imread(i);
end
%% flipping
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\flip\new_flipped_apple_baeburn\'
fipped_fruit_apple_baeburn=cell(1,length(fruit(1).images));
for k1=1:length(fruit(1).images);
    flip=flipdim(fruit_baeburn{k1},1);
    fipped_fruit_apple_baeburn{k1}=flip;
    imwrite(fipped_fruit_apple_baeburn{k1},sprintf('%d.png',k1))
end

cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\flip\new_flipped_apple_golden\'
fipped_fruit_apple_golden=cell(1,length(fruit(3).images));
for k2=1:length(fruit(3).images);
    flip=flipdim(fruit_golden_delicious{k2},1);
    fipped_fruit_apple_golden{k2}=flip;
    imwrite(fipped_fruit_apple_golden{k2},sprintf('%d.png',k2))
end

cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\flip\new_flipped_apple_topaz\'
fipped_fruit_apple_topaz=cell(1,length(fruit(2).images));
for k3=1:length(fruit(2).images);
    flip=flipdim(fruit_apple_topaz{k3},1);
    fipped_fruit_apple_topaz{k3}=flip;
    imwrite(fipped_fruit_apple_topaz{k3},sprintf('%d.png',k3))
end

cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\flip\new_flipped_peach\'
fipped_fruit_peach=cell(1,length(fruit(4).images));
for k4=1:length(fruit(4).images);
    flip=flipdim(fruit_peach{k4},1);
    fipped_fruit_peach{k4}=flip;
    imwrite(fipped_fruit_peach{k4},sprintf('%d.png',k4))
end

cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\flip\new_flipped_pear\'
fipped_fruit_pear=cell(1,length(fruit(5).images));
for k5=1:length(fruit(5).images);
    flip=flipdim(fruit_pear{k5},1);
    fipped_fruit_pear{k5}=flip;
    imwrite(fipped_fruit_pear{k5},sprintf('%d.png',k5))
end
%%Illumination%%
r = [5 10];
z1 =(rand(300,400,3))*range(r)+min(r);
z2 = im2uint8(z1./255);
imshow(z2);

cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\apple_braeburn'
for k1=1:length(fruit(1).images);
    illu1=fruit_baeburn{k1}+z;
    illu_fruit_baeburn{k1}=illu1
    imwrite(illu_fruit_baeburn{k1},sprintf('%d.png',k1))
end
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\apple_topaz'
for k2=1:length(fruit(2).images);
    illu2=fruit_apple_topaz{k2}+z;
    illu_fruit_apple_topaz{k2}=illu2
    imwrite(illu_fruit_apple_topaz{k2},sprintf('%d.png',k2))
end
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\apple_golden'
for k3=1:length(fruit(3).images);
    illu3=fruit_golden_delicious{k3}+z;
    illu_fruit_golden_delicious{k3}=illu3
    imwrite(illu_fruit_golden_delicious{k3},sprintf('%d.png',k3))
end
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\peach'
for k4=1:length(fruit(4).images);
    illu4=fruit_peach{k4}+z;
    illu_fruit_peach{k4}=illu4
    imwrite(illu_fruit_peach{k4},sprintf('%d.png',k4))
end
cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\pear'
for k5=1:length(fruit(5).images);
    illu5=fruit_pear{k5}+z;
    illu_fruit_pear{k5}=illu5
    imwrite(illu_fruit_pear{k5},sprintf('%d.png',k5))
end