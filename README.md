# Fruit-classification
> **DISCLAIMER:-** This project was my first toy project in deep learning, so don't expect much if you are already an expert.

***Technologies used:- Matlab, Matlab Deep Learning Toolbox, AWS EC2 (for training, unfortunately, colab was not there then)***

### Objective

Classification of apple lookalike fruits namely Braeburn apple, golden apple, topaz apple, pear, peach. The fruits have many similarities such as color, shape, pattern, etc. Using neural networks, we want to enhance the performance and increase the accuracy of the algorithm.

### Challenges

Using traditional image processing algorithms or feature extraction + traditional ML will be very difficult to classify these fruits because of their similarities.

### Need of the project
To improve the application of computer vision using artificial intelligence evading the manual feature extraction process for object detection, etc.

By incorporating neural networks in vision system, we can enhance the performance and increase the accuracy of the system.

### Methodology
Firstly, we will access pre-acquired image datasets containing various images of fruits.

Since the training is a time expensive process, possibility of GPU computing in a standalone or in cloud compute engine would be used (tentative).

Then we would train our system with images using ALEXNET CNN architecture as proposed in the literature.

The training would be carried out with around 450 images in each class chosen randomly.

The inference system would then use the remaining images in the dataset to validate the classification process. 

### Image augumentation

DNNs generally need a large amount of training data to achieve good performance. As mentioned above we are using only 450 images in each class, which is not at all enough. We have relied on image augmentation to do the job for us instead of collecting more data. Image augmentation in our application has been used to create artificial training images through different techniques such as random rotation, shifts, shear, and flips, etc.

We have performed image augmentation based on flipping of image and intensity change.

![alt text](https://github.com/madhu-korada/Fruit-classification/blob/master/image%20augumentation.PNG)

### Classes Considered

A total of 2150 images are organised into five different folders as below.  

| Classes        | No of Images |
| -------------- | ------------ |
| Braeburn apple | 450 images   |
| Golden apple   | 420 images   |
| Topaz apple    | 400 images   |
| Pear           | 450 images   |
| Peach          | 430 images   |


![alt text](https://github.com/madhu-korada/Fruit-classification/blob/master/5%20classes.PNG)

### sources

check out the training data [here](https://drive.google.com/open?id=149BY0HNtnD2tqXq6n_GIP5NyFNi3UovC)

check out the matlab workspace [here](https://drive.google.com/drive/u/0/folders/166ZcQvELHK-mgMMXV3EoCAZPMPzbwSRO)
