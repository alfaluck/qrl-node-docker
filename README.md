# EmailMeForm Docker DEV Stack #

**Docker DEV** Stack is an easy to install and configure stack of all services which are used at Staging Servers. It was designed to simplify deploying of **Development Environment** on the local server for dev-team.

## What does it contains ##

* Apache HTTPD v2.4
* PHP-FPM v5.6
* MySQL v5.7
* REDIS v3.0

This stack gives ability to develop application in full featured Environment which is identical to Staging Environment. It gives freedom to develop and test new features related to using REDIS caching and queues. Also out of the box you receive useful CLI tools like:

* backing up your MySQL database
* inspecting REDIS databases
* easy start and stop your DEV Stack, so you don't have to know Docker commands

## Installing and configuring. Walkthrough ##

### Requirements ###

* Windows 10 Pro, Mac OS or Linux
* Minimum 4 GB of RAM

### Step 1. Clone the EMF Bitbucket repo on your system ###

### Step 2. Installing and configuring the Docker ###

1. Download and install it into to your system as described [here](https://docs.docker.com/#/components)
2. Setup your Docker installation https://docs.docker.com/docker-for-windows/#docker-settings
3. Share disk on which EMF repo is located https://docs.docker.com/docker-for-windows/#shared-drives
4. It is recommended to set Memory for your Docker Virtual Machine to 2048 MB https://docs.docker.com/docker-for-windows/#advanced

### Step 3. Installing and start EMF DEV Stack ###

1. Download archive with last deployed version of stack from [here](https://bitbucket.org/alfaluck/emf-docker/downloads?tab=tags)
2. Unpack archive to the <path/to/emf/repo>/.docker path
3. Add to you 'hosts' file (for Linux it is /etc/hosts, for Windows - C:\Windows\System32\drivers\etc\hots) this line:
**127.0.0.1 emf.alfaluck.com**
4. Start your Docker
5. Run start_server.cmd located now in <path/to/emf/repo>/.docker
6. Open in your browser **emf.alfaluck.com**

***Note:*** **If you start Stack at first time, there can be caused issues (as described at https://hub.docker.com/_/mysql/, section "No connections until MySQL init completes"). So you have to wait some time (about 1 or 2 minutes) and then all be fine.**

Well, if you have any troubles with launching DEV Stack, please ask me your questions I'll be glad to help you.

Sincerely,
Anton Shedlovsky,
alfaluck@gmail.com