#!/bin/bash


echo "This is the script to run."

touch output1.txt
touch output2.txt
touch output3.txt

mvn clean install

mvn -Dtest=HttpRequestTest#postWithVaragsQueryParams test > output1.txt

mvn -Dtest=HttpRequestTest#customConnectionFactory test > output2.txt

mvn -Dtest=HttpRequestTest#customConnectionFactory,HttpRequestTest#postWithVaragsQueryParams test > output3.txt
