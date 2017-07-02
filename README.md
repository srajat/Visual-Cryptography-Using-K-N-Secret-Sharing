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
1. Create a new <del>Project</del> Website in Visual Studio  
2. Fork this repo  
3. Copy all the files in this repo to website's folder  
4. Configure Database on the machine accordingly  
5. Run the website  
</pre>

### Technologies Used <a name='technologies-used'></a>

1. <b>Materialize 0.97 (for css)</b>
2. ASP.NET framework 5
3. HTML and C#
4. SQL

## Features <a name='features'></a>

> USERS <a name='users'></a>

### Login and Register <a name='login-and-register'></a>
This app manages individual user accounts and provides facility for user to register himself to this app. It contains an <code>admin</code> section to manage all current elections and candidates.

![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture2.PNG)

### List Elections <a name='list-elections'></a>
All current elections are listed in Elections tab and their details provided. User can apply as a candidate before the beginning of the election and wait for approval. During election any eligible user can vote for selected candidates.

![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture4.PNG)

### Vote! <a name='vote'></a>
Click <code>vote</code> to enter the voting page for any election. Click <code>vote</code> in front of any candidate you would like to vote.

![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture12.PNG)

### Show Stats <a name='show-stats'></a>
When an Election has ended stats option becomes active. It shows the all candiadates sorted by number of votes. It also shows various statistics regarding the election.

![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture5.PNG)
![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture6.PNG)

> ADMIN <a name='admin'></a>

### Admin Panel <a name=''></a>
Go to the admin panel by <code>/admin.aspx</code>. Currently there is no security for admin panel but it will be provided in the future. There are options avaliable to Add Elections, Edit Elections and Add Candidates.

![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture7.PNG)

### Add Elections <a name='add-elections'></a>
Admin can add Elections by providing the details of the election. Once successfully added, Election is shown in the Election's list to all users.

![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture8.PNG)

### Edit Elections <a name='edit-elections'></a>
Admin can edit any Election once an Election is created. However Election details cannot be changed if the Election is going on at that time.

![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture9.PNG)

### Add Candidates <a name='add-candidates'></a>
After a user applies as a candidate for a particular Election, Admin can grant permission to that candidate to appear in the election using this menu. He can make the decision based on his details which are provided.

![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture10.PNG)

### Candidate Details <a name='candidate-details'></a>
This option is avaliable exclusively for admin to view details of any registered user. This information can be used in making the right decision to select him as a candidate or not based on the criteria that admin decides for any election.

![alt tag](https://raw.githubusercontent.com/srajat/Online-Voting-System/master/images/Capture11.PNG)

## Contributers <a name='contributers'></a>
* Rajat Saxena
* Satyam Poddar
* Pranav Pandey
* Abhinav Mishra

## Links <a name='links'></a>

Visit me:     [Rajat Saxena](http://www.rajatsaxena.me/)

Contact me:     <rajat8171@gmail.com>
