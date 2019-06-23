The Dockerfile will install an apache/php web server, install a fresh installation of the wiki software "DokuWiki" and make a docker image out of it.  Docker compose file mounts a volume with the database of the wiki and runs a single docker container.

DokuWiki stores its' database in plain text files.  A database engine is not needed for this wiki software.  To backup the database, make a tar or zip file of the folder containing all of the DokuWiki files.
