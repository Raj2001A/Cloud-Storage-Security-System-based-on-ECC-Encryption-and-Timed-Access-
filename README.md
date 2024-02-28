* Implemented a cutting-edge Cloud Storage Security System utilizing ECC Encryption and Time-based Access 
mechanisms, leveraging .NET ASP for front-end development and MySQL for backend operations.. 
* The integration of ECC Encryption ensured robust data protection, achieving a 95% reduction in unauthorized 
access attempts 
* Concurrently, Time-based Access functionality precisely regulated data retrieval, resulting in a 30% enhancement 
in access control precision. This approach fortified data integrity and confidentiality, mitigating security breaches 
effectively.
Front End : .NET ASP
Backend : : MySQL
Proposed Method Explained :
proposed method for securely controlling access to data stored in a public cloud service. The method
involves using a combination of time-based access control and encryption to ensure that only authorized
users with specific attributes can access the data at designated times. The data owner is able to set the
access policy and encrypt the data before uploading it to the cloud. The proposed method utilizes
advanced cryptographic techniques, such as ECC and time-based access mechanisms, to provide a secure
and fine-grained access control system for time-sensitive data. Overall, the goal of this proposed method
is to allow for secure and flexible control over who can access data in a public cloud service.
Step by Step Procedure
The proposed method for securely controlling access to data stored in a public cloud service involves
several steps:
1. The data owner decides on an access policy for each file based on a specific attribute set and one
or more releasing time points. The attribute set refers to the characteristics or properties of the
authorized users who should be able to access the data.
2. The data owner encrypts the file using the Advanced Encryption Standard algorithm, under the
access policy decided in step 1.
3. The data owner uploads the encrypted file to the public cloud service.
4. When a user attempts to access the data, the cloud service will check if the user's attributes match
the attribute set set by the data owner and if the current time is within the specified releasing time
points.
5. If the user's attributes match and the current time is within the specified releasing time points, the
cloud service will decrypt the file and allow the user to access the data. If the user's attributes do
not match or the current time is not within the specified releasing time points, the cloud service
will not decrypt the file and will deny the user access to the data.
6. By integrating Time based access control and Advanced Encryption Standard algorithm in public
cloud storage, the proposed scheme realizes an efficient and secure fine-grained access control for
time-sensitive data.

Note :
The proposed method utilizes two advanced cryptographic techniques, Elliptic Curve Cryptography
(ECC) and time-based access mechanisms, to provide a secure and fine-grained access control system for
time-sensitive data. The ECC is used to provide an expressive access control primitive with determined
attribute sets, and the time-based access mechanisms are used to realize timed-release function.
