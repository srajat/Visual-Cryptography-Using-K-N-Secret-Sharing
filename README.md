# Visual Cryptography using KN secret Sharing

In this project we take any image which is to be shared secretly. This image is encrypted using a key given by the user. Further, the encrypted image is divided into N different shares using K N Secret Sharing Algorithm. These N shares can be distributed but, the end user needs only K of these shares to generate the original image. After the original image is generated it is still in encrypted form. The key which is used to encrypt the image originally is now required again to decrypt it, thus providing an additional level of security.

![alt tag](https://raw.githubusercontent.com/srajat/Visual-Cryptography-Using-K-N-Secret-Sharing/master/images/Screenshot%20from%202017-07-02%2014:57:42.png)

## Table of contents

- [Installation](#installation)
    - [Prerequisites](#prerequisites)
    - [Using MATLAB 2015a](#using-matlab-2015a)
    - [Technologies Used](#technologies-used)
- [Features](#features)
    - [Users](#users)
        - [Login And Register](#login-and-register)
        - [List Elections](#list-elections)
        - [Vote!](#vote)
        - [Show Stats](#show-stats)
    - [Admin](#admin)
        - [Add Elections](#add-elections)
        - [Edit Elections](#edit-elections)
        - [Add Candidates](#add-candidates)
        - [Candidate Details](#candidate-details)
- [Contributers](#contributers)
- [Links](#links)

## Installation <a name='installation'></a>

### Prerequisites <a name='prerequisites'></a>

1. Matlab 2015a or later

### Using Matlab 2015a <a name='using-matlab-2015a'></a>
<pre>
1. Copy all matlab files in a folder to your computer
2. Open Matlab 2015a
3. Change matlab's current path to the folder  
4. Find the file knshare.fig, execute command "run knshare" in Matlab's console  
5. Follow the GUI
</pre>

### Algorithms Used <a name='algo'></a>

Implementing 2 visual cryptographic algorithms namely,
1. Visual Cryptography by Naor and Shamir for Monochrome images
2. KN Sharing Scheme for colored images

## Observations <a name='observe'></a>

We experimented K-N sharing algorithm on Lena image.
Number of shares (n) = 10
Number of shares to be taken (k) = 6,
The experimental result after encryption by the kn encryption algorithm is given below:

![alt tag](https://raw.githubusercontent.com/srajat/Visual-Cryptography-Using-K-N-Secret-Sharing/master/images/Screenshot%20from%202017-07-02%2014:58:00.png)

We can get the original image only by stacking k or more shares. If value of k is less than
required (in this case k = 6), we will get a partial image. After choosing any number of
shares of all the generated shares, the reconstructed image is:

![alt tag](https://raw.githubusercontent.com/srajat/Visual-Cryptography-Using-K-N-Secret-Sharing/master/images/Screenshot%20from%202017-07-02%2014:58:05.png)

### AES encryption results <a name='aes'></a>
A symmetric key based encryption (AES encryption) at both the ends of KN Shares
Algorithm is added to make the image more secure.

![alt tag](https://raw.githubusercontent.com/srajat/Visual-Cryptography-Using-K-N-Secret-Sharing/master/images/Screenshot%20from%202017-07-02%2014:58:12.png)

Thus, after encrypting the original image with AES first, and then, regenerating the
shares gives more better and noisy image. Now, the image will require at-least k shares
along with the symmetric key in order to decrypt the image to its original form.


## Applications <a name='applications'></a>
Following are some of the areas in which our project can be helpful -

• DISTRIBUTED SYSTEMS
Suppose we have N distributed servers. Traditionally if we store a file in only one
server, there is a high risk that if it breaks or get hacked, all of our data will be
lost. So we would like to store our information in a distributed manner, with each
server storing a part of the information. We can encrypt and break our data into N
different parts with each part going into a server. Even if N − K servers are broken,
we can still generate our original data using the K alive servers.

• DATA TRANSFER SECURITY
It is obvious that transferring our data through N channels is more secure than
transferring all of it through one channel. We can use the above algorithm to
encrypt and break data into N different parts and transfer the data simultaneously
through N channels. End user can get K shares and ignore the other N − K shares.


## Contributers <a name='contributers'></a>
* Rajat Saxena
* Satyam Poddar
* Pranav Pandey
* Ankush Jangid
* Divyesh Soni

## Links <a name='links'></a>

Visit me:     [Rajat Saxena](http://www.rajatsaxena.me/)

Contact me:     <rajat8171@gmail.com>
