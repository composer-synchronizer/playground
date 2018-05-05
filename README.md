# Playground
This repository is mainly prepared for those who use Docker. Otherwise
you will need php >= 7.1 installed on your machine and
[composer-synchronizer/composer-synchronizer](https://github.com/composer-synchronizer/composer-synchronizer)
installed in the www directory or globally.

**Usage**
- Pull or copy this repository.
- Build the synchronizer-playground image `docker-compose build `.
- Start the container `docker-compose up -d`.
- Run the following command `docker-compose exec web composer install`.
- This will install the *some/package* package from the packages directory for the nette2 project type.
- If you use different project type, change the project type in project composer.json file
and in the package composer.json file.
- You can use this directory to test your package configuration. Just change and install whatever you need.
- The localhost is accessible from `http//localhost/www`.
