**Maven Cheatsheet for Java Beginners**


Create Java project
mvn archetype:generate 
-DgroupId=org.yourcompany.project 
-DartifactId=application
Create web project
mvn archetype:generate 
-DgroupId=org.yourcompany.project 
-DartifactId=application 
-DarchetypeArtifactId=maven-archetype-webapp
Create archetype from existing project
mvn archetype:create-from-project
Main phases
clean — delete target directory
validate — validate, if the project is correct
compile — compile source code, classes stored 
in target/classes
test — run tests
package — take the compiled code and package it in its 
distributable format, e.g. JAR, WAR
verify — run any checks to verify the package is valid 
and meets quality criteria
install — install the package into the local repository
deploy — copies the final package to the remote repository

**1. Installing Maven:**

**Download Maven:**

Visit Apache Maven Download Page and download the latest version.

**Installation:**
Extract the downloaded archive and add the bin directory to your system's PATH.

**2. Creating a Maven Project:**

Using Archetype:
To create the java  the project name :**myproject**


mvn archetype:generate -DgroupId=com.example -DartifactId=**myproject** -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

This command generates a basic Maven project structure.

**3. Maven Project Structure:**
pom.xml:

The Project Object Model (POM) file where project configuration is specified.
**src/main/java:**

Java source code goes here.
**src/test/java:**

Test source code goes here.
4. Building and Running:
**Clean and Build:**


**mvn clean install

Run Application:**

java -cp target/myproject-1.0-SNAPSHOT.jar com.example.App

**5. Dependencies:**
Adding Dependencies:

Add dependencies to the <dependencies> section in the pom.xml file.
xml
Copy code
<dependencies>
    <dependency>
        <groupId>group-id</groupId>
        <artifactId>artifact-id</artifactId>
        <version>version</version>
    </dependency>
</dependencies>
Update Dependencies:


mvn clean install -U
**6. Plugins:**
Adding Plugins:

Add plugins to the <build><plugins> section in the pom.xml file.
xml
Copy code
<build>
    <plugins>
        <plugin>
            <groupId>group-id</groupId>
            <artifactId>artifact-id</artifactId>
            <version>version</version>
        </plugin>
    </plugins>
</build>
7. Running Tests:
Run Tests:

mvn test
8. Profiles:
Creating Profiles:

Define profiles in the pom.xml file to configure different build settings.

<profiles>
    <profile>
        <id>profile-id</id>
        <!-- Profile configuration -->
    </profile>
</profiles>
**Activate Profiles:**

mvn clean install -Pprofile-id
**9. Lifecycle Commands:**
Compile Code:


mvn compile
Package:

mvn package
Clean:

mvn clean
10. IDE Integration:
Eclipse:

Run mvn eclipse:eclipse to generate Eclipse project files.
IntelliJ IDEA:

Open IntelliJ and import the project using the pom.xml file.
