#!/bin/bash

echo "This is the script to run."

# Create output files
touch output1.txt
touch output2.txt
touch output3.txt

# Clean and build the project
mvn clean install

# Run the postWithVaragsQueryParams test and save the result to output1.txt
mvn -Dtest=HttpRequestTest#postWithVaragsQueryParams test > output1.txt

# Run the customConnectionFactory test and save the result to output2.txt
#This shows CONNECTION_FACTORY being modified
mvn -Dtest=HttpRequestTest#customConnectionFactory test > output2.txt

# Run both customConnectionFactory and postWithVaragsQueryParams tests together and save the result to output3.txt 
# This shows customConnectionFactory causing postWithVaragsQueryParams to fail
mvn -Dtest=HttpRequestTest#customConnectionFactory,HttpRequestTest#postWithVaragsQueryParams test > output3.txt

