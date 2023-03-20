# PoshBox

This is a powershell module that is able to automate administrative tasks in an enterprise box cloud storage provider environment.  Unlike other box powershell modules currently available, this module acts as a wrapper of the [Box windows sdk](https://github.com/box/box-windows-sdk-v2), which allows users to easily utilize advanced box features, such as authentication to box using OAuth2.0 with Json Web tokens (allows for full automation of box rather than providing user credentials to authenticate to box), and more.

**This module can only be run on Windows.  This module will not work if you are using powershell core on Linux.**  I am currently working on updating the module to allow for cross platform use, but the module is limited to Windows as of now.  If you encounter any issues when using the module, please submit an issue.

## Installation

You can download the poshbox module from the powershell gallery using the below command:

```powershell
Install-module Poshbox -allowclobber -force
```

## Box environment configuration

In order to use this module in your box environment, there are some prerequisites that need to be observed.
* Create a box app.
   1. Login to your account and navigate to the Dev Console.
   ![test](https://i.imgur.com/s6zLG7Z.png)
   2. Click "Create new app."
   ![newapp](https://i.imgur.com/JB2XVaS.png)
   3. Select "Enterprise Integration."
   ![int](https://i.imgur.com/0yoaSob.png)
   4. Select "OAuth2.0 with JWT (Server Authentication)."
   ![JWT](https://i.imgur.com/rs2MnIz.png)
   5. Give your app a name.  It has to be globally unique.
   6. On the app configuration page, select "Enterprise" in the "Application Access" section.
   ![conf](https://i.imgur.com/WGvBO3R.png)
   7. Check all of the items in the "Application Scopes" section to grant the app the permissions it needs.
   ![perm](https://i.imgur.com/GuI6l3G.png)
   8. Enable both features under "Advanced Features."
   ![feat](https://i.imgur.com/TJk4sgZ.png)
   9. Generate an RSA keypair.  Box will generate the key pair and allow you to download a json file containing the values.
   ![RSA](https://i.imgur.com/uCUPmPh.png)
   10. Download a json file containing your app configuration settings.  **THIS IS THE MOST IMPORTANT STEP**, as this module will use the information in this json file to authenticate to box.
   ![appconf](https://i.imgur.com/R2MbRsb.png)
   11. Save the changes.
   
* Enable your app for use within the enterprise.  You can do this by following the instructions outlined in step 3 [here](https://developer.box.com/docs/setting-up-a-jwt-app)

* When you import this module for the first time, you will need to run "connect-box" and pass the full path of the json file containing your box authentication information that you obtained when creating your box app to the function's "file" parameter.

* Enjoy!!!

## Using the module

If you are getting started with the module, it might be difficult to understand how to actually use it.  Here are some tips that will help you better use the module:
* You may notice that most of the box functions that allow you to manipulate box environments do not let you specify which user whose box environment the function should be applied to.  In order to specify the user whose environment should be modified, you simply need to run the connect-box command and pass the id associated with the afformentioned user to the id parameter:

	```powershell
	connect-box -id 1234567
	```
	
	* This will allow you to authenticate to box as the box user whose id you specify, allowing you to interact with his/her box environment.
	* **IMPORTANT** When you authenticate to box as another box user, the Admin Client object (which is the object that actually manipulates the box environment) inherits that particular user's limited permissions as well.  In order to restore the Admin Client object's full permissions, just run the connect-box command again with no parameters, which will re-authenticate to box as the orginal service account with the full permissions.

* The id for the root folder in a user's box environment is 0.
* If you have any questions concerning the use of this module that was not covered in the included help content, you can review the documentation for the [Box windows sdk](https://github.com/box/box-windows-sdk-v2), or you can ask me by creating an issue.