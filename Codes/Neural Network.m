%%Neural Network
fritz = imageDatastore('C:\Users\Babloo\Desktop\Minor Project\image augumentation','IncludeSubfolders',true,'LabelSource','foldernames');
%%[image_train,image_test,image_validate] = splitEachLabel(fritz,4,4,4,'randomized')
anet = alexnet
layers = anet.Layers
frlayer = fullyConnectedLayer(5)
layers(end-2) = frlayer
layers(end) = classificationLayer
options = trainingOptions('sgdm','InitialLearnRate',0.01)
[fruitnet , info] = trainNetwork(image_train, layers, options)