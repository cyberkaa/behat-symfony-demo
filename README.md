Behat Demo 
========================
This example tests the "Symfony Demo Application". This project is pure to illustrate how a project can be tested using 
Behat and Chromedriver.

##Installation:
First install the symfony installer
```shell
make install
```

Secondly install composer packages and https certificates
```shell
make configure
```

## Run the application
Boot the application:
```shell
make boot
```

And start the Chome driver
```shell
[location of the chrome browser] Chrome --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 --window-size=1920,1080
```

Run behat with:
```shell
make behat
```

You can check the website at:\
https://localhost:8000/

### Refrences:
* https://github.com/symfony/demo
* https://docs.behat.org/en/latest/
* https://github.com/FriendsOfBehat/SymfonyExtension

