### Web Applications and Services

A web application is an application that you interact with over HTTP. Most of the time when you’re using a website on the Internet, you’re interacting with a web application. So, how does this look behind the scenes?

Your web browser sends an HTTP request to a web server. Then, the web server passes the request along to the web application in charge of deciding what information to show you. The application then generates the website content (in HTML format). The application is also in charge of serving images and any other necessary data so that your web browser can render the website on your computer.

Lots of web applications also have APIs that you can use from your scripts! Web applications that have an API are also known as web services. Instead of browsing to a web page to type and click around, you can use your program to send a message known as an API call to the web service. The part of the program that listens on the network for API calls is called an API endpoint.

When you interact with a web service like this, you don't even care what language the other application is using. You interact with it using a specified protocol, and the only important constraint is that both the service and your program know how to use this protocol.


## Project Problem Statement
To complete this module, you'll write a script that interacts with a running web service.  The web service is part of your company's website and is in charge of storing and displaying the customer reviews of the company.

The reviews are stored in text files in the local disk. Your script should open those files, process the information to turn it into the format expected by the web service, then send it to the web service to get stored.

For this lab, the service is running on the same machine, and you can actually look at how all of it is implemented, if you want.  But you don't need to change the service implementation to complete the exercise.

## Introduction
You’re working at a company that sells second-hand cars. Your company constantly collects feedback in the form of customer reviews. Your manager asks you to take those reviews (saved as .txt files) and display them on your company’s website. To do this, you’ll need to write a script to convert those .txt files and process them into Python dictionaries, then upload the data onto your company’s website (currently using Django).

## What you’ll do
Use the Python OS module to process a directory of text files 
Manage information stored in Python dictionaries
Use the Python requests module to upload content to a running Web service
Understand basic operations for Python requests like GET and POST methods 
