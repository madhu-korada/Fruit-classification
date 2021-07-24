testImage1 = imread('b.jpg');
testImage = imresize(testImage1,[227 227]);
[label,score] = classify(fruitnet,testImage);
label = string(label);
[score, idx] = max(score);
bbox = [0 0 2 2];
annotation = sprintf('%s: (Confidence = %f)', label, score);
outputImage = insertObjectAnnotation(testImage,'rectangle',bbox,annotation);
figure;
imshow(outputImage)
