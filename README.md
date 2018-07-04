# imageEncryption
image encryption using Chaotic sequence and LFSR method
based on the paper " Image encryption and decryption using chaotic key sequence generated by sequence of logistic map and sequence of states of Linear Feedback Shift Register " by " ROHITH S, K N HARI BHAT, A NANDINI SHARMA"

     1. LFSR
 this method starts with an arbitrary seed and next number generates as shown in this figure     
<p align="center"><img src="LFSR.png"></p>
below is result of using this method
<p align="center">
<img src="peppers.png">
<img src="LFSREnc.png">
  </p>
    2. Chaotic Sequence
 this method also starts with an arbitrary seed and another parameter mu. the formula that generates the next number is : X(i) = mu * x(i-1) * (1 – x(i-1))

<p align="center"><X(i) = mu * x(i-1) * (1 – x(i-1))></p>
In this formula mu is between 2 and 4 and when is near to 4 the function generates highly random numbers. Here is how the function behaves
<p align="center"><img align="center" src="chaotic.png"></p>
<p align="center"><img align="center" src="peppers.png">
<img align="center" src="chaoticEnc.png"></p>

to make the encryption more secure the encryption key is combination of these two methods.


Encryption and Decryption : 
after generating keys using methods above:

encryptedImage = originalImage XOR Key
<br/>
decryptedImage = encryptedImage XOR key
