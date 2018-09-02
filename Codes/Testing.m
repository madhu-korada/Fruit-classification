testImage1 = imread('k.png');
testImage = imresize(testImage1,[227 227])
[label,score] = classify(fruitnet,testImage)
label = string(label)
[score, idx] = max(score);
bbox = [0 0 2 2]
annotation = sprintf('%s: (Confidence = %f)', label, score);
outputImage = insertObjectAnnotation(testImage1,'rectangle',bbox,annotation);
figure
imshow(outputImage)
%%Just incase for testing with fruit database, use predi(1).name = 'pred
%%baeburn' for which fruit to use
