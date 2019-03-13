---
layout: post
title: Setup SonarQube for Android
---

## Intro
Sonarqube is static code analyzer tool on server side. It is very useful to write clean and quality code.

This tutorial is going to setup SonarQube on local and config scanner in Android project.

## Installation
- Go to [https://www.sonarqube.org/](https://www.sonarqube.org/) and download SonarQube and install it to your computer.
- Start server by running script in sonarqube-7.6\bin\{YOUR_OS}\StartSonar.bat
- Open [http://localhost:9000](http://localhost:9000) to see if server is up

## Setup SonarQube
- Login by `admin:admin`

SonarQube already provided build-in Quality Gates called "Sonar way".

You can install more plug-in in Administration page.

## Config project scanner
- Open build.gradle(app) and add:
```
apply plugin: "org.sonarqube"

...
sonarqube {
    properties {
        property "sonar.projectName", "{PROJECT_NAME}"
        property "sonar.projectKey", "{PACKAGE_NAME}"
        property "sonar.host.url", "http://localhost:9000"
        property "sonar.login", "{LOGIN_NAME}"
        property "sonar.password", "{LOGIN_PASSWORD}"
        property "sonar.language", "java"
        property "sonar.sources", "src/main/java"
    }
}
```

- Open build.gradle(project) and add:
```
dependencies {
    ...
    classpath "org.sonarsource.scanner.gradle:sonarqube-gradle-plugin:2.6.1"
}
```

## Run scan task
- Open terminal and run `gradlew sonarqube` to start scanning.
- Project will be created automatically on SonarQube.
- Open [http://localhost:9000](http://localhost:9000) to see the report
