%%Generating Labelled Structured Data%%
fruit(1).images = dir(fullfile('C:\Users\Babloo\Desktop\Minor Project\image augumentation\crop\baeburn','*.png'))
fruit(1).name = 'Apple Baeburn'
fruit(3).name = 'Apple Topaz'
fruit(3).images = dir(fullfile('C:','Users','Babloo','Desktop','Minor Project','Fruits','apple_topaz','*.png'))
fruit(2).name = 'Apple Golden'
fruit(2).images = dir(fullfile('C:','Users','Babloo','Desktop','Minor Project','Fruits','apple_golden_delicious','*.png'))
fruit(4).name = 'Peach'
fruit(4).images = dir(fullfile('C:','Users','Babloo','Desktop','Minor Project','Fruits','peach','*.png'))
fruit(5).name = 'Pear'
fruit(5).images = dir(fullfile('C:','Users','Babloo','Desktop','Minor Project','Fruits','pear','*.png'))
x1 = size(fruit(1).images,1)
x2 = size(fruit(2).images,1)
x3 = size(fruit(3).images,1)
x4 = size(fruit(4).images,1)
x5 = size(fruit(5).images,1)
images_train_baeburn = datasample(fruit(1).images,0.6*(x1),'Replace',false)
images_valid_baeburn = datasample(fruit(1).images,0.2*(x1),'Replace',false)
images_test_baeburn = datasample(fruit(1).images,0.2*(x1),'Replace',false)
images_train_topaz = datasample(fruit(2).images,0.6*(x2),'Replace',false)
images_valid_topaz = datasample(fruit(2).images,0.2*(x2),'Replace',false)
images_test_topaz = datasample(fruit(2).images,0.2*(x2),'Replace',false)
images_train_golden = datasample(fruit(3).images,0.6*(x3),'Replace',false)
images_valid_golden = datasample(fruit(3).images,0.2*(x3),'Replace',false)
images_test_golden = datasample(fruit(3).images,0.2*(x3),'Replace',false)
images_train_peach = datasample(fruit(4).images,0.6*(x4),'Replace',false)
images_valid_peach = datasample(fruit(4).images,0.2*(x4),'Replace',false)
images_test_peach = datasample(fruit(4).images,0.2*(x4),'Replace',false)
images_train_pear = datasample(fruit(5).images,round(0.6*(x5),0),'Replace',false)
images_valid_pear = datasample(fruit(5).images,round(0.2*(x5),0),'Replace',false)
images_test_pear = datasample(fruit(5).images,round(0.2*(x5),0),'Replace',false)
%%Image Augmentation%%
%% fruit 1

cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\crop\baeburn'
fruit_baeburn=cell(1,length(fruit(1).images))
for k1=1:length(fruit(1).images)
    i=[fruit(1).images(k1).name]
    fruit_baeburn{k1}=imread(i);
end
%%fruit 2
cd 'C:\Users\Babloo\Desktop\Minor Project\Fruits\apple_golden_delicious\'
fruit_apple_golden_delicious=cell(1,length(fruit(2).images))
for k2=1:length(fruit(2).images)
    i=[fruit(2).images(k2).name]
    fruit_apple_golden_delicious{k2}=imread(i);
end
%%fruit3
cd 'C:\Users\Babloo\Desktop\Minor Project\Fruits\apple_topaz\'
fruit_apple_topaz=cell(1,length(fruit(3).images))
for k3=1:length(fruit(3).images)
    i=[fruit(3).images(k3).name]
    fruit_apple_topaz{k3}=imread(i);
end
%%fruit 4
cd 'C:\Users\Babloo\Desktop\Minor Project\Fruits\peach\'
fruit_peach=cell(1,length(fruit(4).images))
for k4=1:length(fruit(4).images)
    i=[fruit(4).images(k4).name]
    fruit_peach{k4}=imread(i);
end
%%fruit 5
cd 'C:\Users\Babloo\Desktop\Minor Project\Fruits\pear\'
fruit_pear=cell(1,length(fruit(5).images))
for k5=1:length(fruit(5).images)
    i=[fruit(5).images(k5).name]
    fruit_pear{k5}=imread(i);
end
%% flipping
%%cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\flip\new_flipped_apple_baeburn\'
%fipped_fruit_apple_baeburn=cell(1,length(fruit(1).images));
%for k1=1:length(fruit(1).images);
 %   flip=flipdim(fruit_baeburn{k1},1);
  %  fipped_fruit_apple_baeburn{k1}=flip;
   % imwrite(fipped_fruit_apple_baeburn{k1},sprintf('%d.png',k1))
   % imwrite(fipped_fruit_apple_golden{k2},sprintf('%d.png',k2))
%end

%cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\flip\new_flipped_apple_topaz\'
%fipped_fruit_apple_topaz=cell(1,length(fruit(2).images));
%for k3=1:length(fruit(2).images);
 %   flip=flipdim(fruit_apple_topaz{k3},1);
  %  fipped_fruit_apple_topaz{k3}=flip;
   % imwrite(fipped_fruit_apple_topaz{k3},sprintf('%d.png',k3))
%end

%cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\flip\new_flipped_peach\'
%fipped_fruit_peach=cell(1,length(fruit(4).images));
%for k4=1:length(fruit(4).images);
 %   flip=flipdim(fruit_peach{k4},1);
  %  fipped_fruit_peach{k4}=flip;
   % imwrite(fipped_fruit_peach{k4},sprintf('%d.png',k4))
%end

%cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\flip\new_flipped_pear\'
%fipped_fruit_pear=cell(1,length(fruit(5).images));
%for k5=1:length(fruit(5).images);
 %   flip=flipdim(fruit_pear{k5},1);
  %  fipped_fruit_pear{k5}=flip;
   % imwrite(fipped_fruit_pear{k5},sprintf('%d.png',k5))
%end
%%Illumination%%
%r = [5 10];
%z1 =(rand(300,400,3))*range(r)+min(r);
%z2 = im2uint8(z1./255);
%imshow(z2);

%cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\apple_braeburn'
%for k1=1:length(fruit(1).images);
 %   illu1=fruit_baeburn{k1}+z;
  %  illu_fruit_baeburn{k1}=illu1
   % imwrite(illu_fruit_baeburn{k1},sprintf('%d.png',k1))
%end
%cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\apple_topaz'
%for k2=1:length(fruit(2).images);
 %   illu2=fruit_apple_topaz{k2}+z;
  %  illu_fruit_apple_topaz{k2}=illu2
   % imwrite(illu_fruit_apple_topaz{k2},sprintf('%d.png',k2))
%end
%cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\apple_golden'
%for k3=1:length(fruit(3).images);
 %   illu3=fruit_golden_delicious{k3}+z;
  %  illu_fruit_golden_delicious{k3}=illu3
   % imwrite(illu_fruit_golden_delicious{k3},sprintf('%d.png',k3))
%end
%cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\peach'
%for k4=1:length(fruit(4).images);
 %   illu4=fruit_peach{k4}+z;
  %  illu_fruit_peach{k4}=illu4
   % imwrite(illu_fruit_peach{k4},sprintf('%d.png',k4))
%end
%cd 'C:\Users\Babloo\Desktop\Minor Project\image augumentation\illu\pear'
%for k5=1:length(fruit(5).images);
 %   illu5=fruit_pear{k5}+z;
  %  illu_fruit_pear{k5}=illu5
   % imwrite(illu_fruit_pear{k5},sprintf('%d.png',k5))
%end
%%Neural Network%%
fritz = imageDatastore('C:\Users\Babloo\Desktop\Minor Project\image augumentation\crop\','IncludeSubfolders',true,'LabelSource','foldernames');
[image_train,image_test,image_validate] = splitEachLabel(fritz,20,20,20,'randomized')
anet = alexnet
layers = anet.Layers
frlayer = fullyConnectedLayer(5)
layers(end-2) = frlayer
layers(end) = classificationLayer
options = trainingOptions('sgdm','InitialLearnRate',0.001)
[fruitnet , info] = trainNetwork(image_train, layers, options)