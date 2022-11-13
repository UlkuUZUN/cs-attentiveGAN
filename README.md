# cs-attentiveGAN
Cycle-spinning (CS) method employment into AttentiveGAN (DeRaindrop) algorithm.

Use tensorflow to implement a Deep Convolution Generative Adversarial Network for image derain 
task mainly based on the CVPR2018 paper "Attentive Generative Adversarial Network for Raindrop 
Removal from A Single Image".You can refer to their paper for details https://arxiv.org/abs/1711.10098. 
This model consists of a attentive attentive-recurrent network, a contextual autoencoder 
network and a discriminative network. Using convolution lstm unit to generate attention map 
which is used to help locating the rain drop, multi-scale losses and a perceptual loss to 
train the context autoencoder network. Thanks for the origin author [Rui Qian](https://github.com/rui1996)


##Original online demo

#### URL: https://maybeshewill-cv.github.io/attentive_derain_net
