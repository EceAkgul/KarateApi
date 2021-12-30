# Web Service Testing With Karate
Karate ile Web Servis Testi Örneği

This sample project includes api testing with Karate

# Getting Started (Gereksinimler)
Karate requires Java 8 (at least version 1.8.0_112 or greater) (Java jdk 1.8 sürümü ve üzeri)
https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

**Intellij**
https://www.jetbrains.com/idea/download/#section=windows (Maven, Gradle or Eclipse to be installed.)

**Cucumber Plugin**
(cucumber for java)

**Karate Github**
""https://github.com/intuit/karate""

**Dummy site**
https://petstore.swagger.io/#/

# Running in IntelliJ
If you use IntelliJ IDEA, Cucumber support is built-in, and you can even select a single Scenario within a Feature to run at a time.
If you are using the free Community Edition, you can easily install the "Gherkin" and "Cucumber for Java" plugins.

# Maven Dependency
'karate-apache' should be add as a dependency on pom.xml so it will be installed automatically
```
 <properties>
        <maven.compiler.source>8</maven.compiler.source>
        <maven.compiler.target>8</maven.compiler.target>
    </properties>

    <dependencies>
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-apache</artifactId>
            <version>0.9.6</version>
            <scope>test</scope>
        </dependency>

        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-junit4</artifactId>
            <version>0.9.6</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-gatling</artifactId>
            <version>0.9.6</version>
            <scope>test</scope>
        </dependency>

    </dependencies>
    <build>
        <testResources>
            <testResource>
                <directory>src/test/java</directory>
                <excludes>
                    <exclude>**/*.java</exclude>
                </excludes>
            </testResource>
        </testResources>
        <plugins>
            <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-compiler-plugin</artifactId>
                    <version>3.6.0</version>
            </plugin>
            <plugin>
                <groupId>io.gatling</groupId>
                <artifactId>gatling-maven-plugin</artifactId>
                <version>3.1.2</version>
                <configuration>
                    <simulationsFolder>src/test/java/performanceRunners</simulationsFolder>
                </configuration>
            </plugin>
        </plugins>
    </build>

```
