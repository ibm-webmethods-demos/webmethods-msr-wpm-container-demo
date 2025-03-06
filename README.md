webmethods-msr-wpm-container-demo
============================================

A simple project demonstrating how to create new MSR containers with various packages sourced with webMEthods package manager (wpm) from the webMethods package repository

You'll need to be able to pull the webMethods microservices runtime container from the IBM registry.

This demo is created for the webMethods 10.15 version - 

Step 1 - Make sure you have access to the 10.15 MSR container 
------------------------------------------------------------------------

Containers at https://containers.webmethods.io

Create a registry user + token

And use it in your docker login command:

```sh
docker login ibmwebmethods.azurecr.io
```

Step 2 - Make sure you have access to the package manager repository
------------------------------------------------------------------------

PAckage manager at https://packages.webmethods.io/

Create a package repository "token"

And we'll use it in our docker builds via the ENV variable WPM_TOKEN:

```sh
export WPM_TOKEN=<YOUR TOKEN HERE!!>
```

Step 3 - Build the MSR containers with packages
------------------------------------------------------------------------

JDBC adapter package:

```sh
build-msr-jdbc.sh
```

IBM MQ adapter package:

```sh
build-msr-mq.sh
```

Both JDBC and MQ Adapter packages:

```sh
build-msr-both.sh
```

That's it, you now have 3 new MSR container with custom packages installed and available for your usage / development.
