# MovieHub: Online Movie Retailer

Steps to deploy and run the project:-

	1. Copy the "movieHub" folder into the Apache Tomacat's "webapps" folder.

	2. Set classpath of ServletAPI, Gson, MongoDb and MySQL drivers if not there. The required JAR files can be found in "MovieHub\requiredLibs" folder.

	3. You should have MySQL running on port number 3306. Execute the attach SQL script file "movieHub.sql" in "MovieHub\movieHub\src" to create database/tables required to run the project.

	4. This project also requires that you have a MongoDb Database running on port number 27017 named "CustomerReviews" and collection named "movieFeed" in the database.

	5. Navigate to "movieHub\WEB-INF\classes\" folder where all the JAVA source code is located. 

	6. Compile all the files in CMD by typing -->  javac *.java

	7. If all the files are compiled properly then you should see .class files in the "classes" folder without any error message on command prompt.

	8. Start a web browser and navigate to http://localhost/movieHub/hubHome. You should see the webpage of Movie Hub portal.

	9. Sample user's login credentials:
		Customer: username : anshika	password: password
		Customer: username : customer password: password
		Admin: username : admin password: admin
		" NO User Account for Guest to access the free movies".

	10. Recording - Project Demo for the demo in "MovieHub" folder.

	11. Snapshots for the outputs are in Output.pdf in "MovieHub" folder.
