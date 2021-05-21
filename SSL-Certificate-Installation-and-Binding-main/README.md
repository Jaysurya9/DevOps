# SSL-Certificate-Installation-and-Binding
Verifying an SSL certificate is the process of ensuring the certificate the site holds is valid and identifying it correctly.

SSL Certificate Installation:

Step 1: Open Powershell and Use the following commands to get the content of the SSL certificate.

Command 1:

     $fileContentBytes = get-content ‘C:\Desktop\Certificates\<certificate name>.pfx’ -Encoding Byte

Command 2:

     [System.Convert]::ToBase64String($fileContentBytes) | Out-File -Encoding ASCII ‘<Certificate name >.pfx.txt’

Step 2: Open the SSL Certifiacte text file and copy the content in it (Note: remove unnecessary spaces at the last)

Step 3: Go to VM and create a text file and paste the content of ssl certificate text and click on save as and save the file name (file name will be certificateName +.pfx, save as type will be ‘All’, Encoding will be ‘ANSI’.

then 

Go to mmc (Microsoft Management Console) and install certificate on local computer and choose the path automatic then add certificate from console and click on ok to import the certificate. Close mmc.

then

Go to IIS for mapping the imported SSL Certificate.

Done

<b>Note:</b>View Documention for Clear View.




