# cbswagger-redoc (beta)

![Redoc Logo](https://github.com/homestar9/cbswagger-redoc/blob/master/includes/img/redoc-logo.png?raw=true)

This is the Swagger Redoc UI module for ColdBox applications.  It was inspired by the [cbSwaggerUI module](https://github.com/garciadev/cbSwaggerUI). By default, it looks in the /cbswagger location for the OpenAPI Swagger file. 

The UI is available at **/redoc** - where you will see a visual representation of your Swagger docs.

![Redoc Screenshot](https://github.com/homestar9/cbswagger-redoc/blob/master/includes/img/redoc-demo.png?raw=true)

## Important links

- <https://swagger.io/docs/>
- <https://github.com/Redocly/redoc>
- <https://github.com/coldbox-modules/cbSwagger>

## Install cbswgger-redoc (via Commandbox)

box install cbswagger-redoc

> Note:  Omit the `box` from your command, if you are already in the Commandbox interactive shell

## Configuration

If you just want to use this with cbSwagger, there is nothing else to configure (assuming you have cbSwagger installed.)

You can optionaly configure the following settings:

**swaggerFile**

The location for the swagger JSON file you want to render. 

Default: "/cbswagger"

**title**

The title of your API project.

Example ColdBox.cfc configuration:
```
moduleSettings = {
    cbSwaggerRedoc : {
        "swaggerFile" : "/cbswagger",
        "title" : "My Cool API"
    }
};
```

## Roadmap

* Execute requests from the browser
* Display personalized logo from `x-logo`
* Basic security to limit access (possibly cbsecurity?)
* Ability to render a static HTML page/site
