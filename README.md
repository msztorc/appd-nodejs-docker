# Appdynamics NodeJS Agent example
Express app with Appdynamics agent instrumentation


### Build

```bash
$ docker build -t msztorc/appd-nodejs-app .
```

### Configuration

Create .env file and add the following environment variables

```
controllerHostName="<controllerHostName>"
controllerPort=443
controllerSslEnabled=true
accountName="<accountName>"
accountAccessKey="<accountAccessKey>"
applicationName="<applicationName>"
tierName="<tierName>"
nodeName="<nodeName>"
```

### Run

```bash
$ docker run -p 8080:8080 --env-file .env -d msztorc/appd-nodejs-app
```


### Node.js Settings Reference

https://docs.appdynamics.com/display/PRO45/Node.js+Settings+Reference


### License
MIT of course ;)