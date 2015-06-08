# jdt4r
POC project

This project demostrates how to make one standalone service from b1 module.

Prerequisite
===
Ruby >=2.1.2  
rails >=4

Usage
===
1. Create your rails project for your module
       $ rails jdt

2. Copy your source code into lib folder

3. Create model for your db table
      $ ./generate_table.rb OJDT.xml
will genereate script for creating model.
Execute the generated command and db migration
      $ db:rake migrate

4. Create your controller to implement you API
       $rails g controller testapi index
You will see lots of files created for testapi. The most important one is app/controller/testapi_controller.rb 
And one line is inserted into routes.rb 
       get 'testapi/index'

5. Implement your API 
Add code in the 'index' method of testapi_controller.rb 

6. Add you api to routes  
Edit config/routes.rb, add line
       get "testapi/index"

7. Protect your api by oauth2.0  
1) Install doorkeeper by following instruction at https://github.com/doorkeeper-gem/doorkeeper#development  

2) 


