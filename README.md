# Fruit-classification
This project deals with the field of computer vision mainly for the application of deep learning in object classification task.

5 different types of fruits will be classified

# Need of the project
To improve the application of computer vision using artificial intelligence evading the manual feature extraction process for object detection, etc.

By incorporating neural networks in vision system, we can enhance the performance and increase the accuracy of the system.

# Methodology
Firstly, we will access pre-acquired image datasets containing various images of fruits.

Since the training is a time expensive process, possibility of GPU computing in a standalone or in cloud compute engine would be used (tentative).

Then we would train our system with images using ALEXNET CNN architecture as proposed in the literature.

The training would be carried out with around 450 images in each class chosen randomly.

The inference system would then use the remaining images in the dataset to validate the classification process. 

# Image augumentation

Deep networks need large amount of training data to achieve good performance. To build a powerful image classifier using very little training data, image augmentation is usually required to boost the performance of deep networks. Image augmentation artificially creates training images through different ways of processing or combination of multiple processing, such as random rotation, shifts, shear and flips, etc.

We have performed image augmentation based on flipping of image and intensity change.

![alt text](https://github.com/madhu-korada/Fruit-classification/blob/master/image%20augumentation.PNG)

# Classes Considered

Five classes 

Braeburn apple - 450 images

Golden apple - 450 images

Topaz apple - 450 images

Pear - 450 images

Peach - 450 images


![alt text](https://github.com/madhu-korada/Fruit-classification/blob/master/5%20classes.PNG)

