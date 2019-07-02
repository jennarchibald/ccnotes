# Configuring Spring Data REST for use with React.js

## Introduction
When working with React.js, the component structure means that the back-end can be configured in a way that makes fetching data a little easier.

When calling a back-end that's  on a seperate machine (or even just a different port) we need to configure that back-end to work with "CORS".

### Cross-Origin-Resource-Sharing

In order to call our back-end from a front-end that's running on a separate resource (or server), then we must tell our services that this is OK. Servers assume this isn't OK by default as a security precaution to prevent CSFR's (Cross Site Forgary Requests) which is a type of security vulnerability.

## Configure Cors in Spring

With Spring configuring how to handle CORS is just a matter of adding a configuration.

If there's not one already, we need a `configs` or `configurations` package. In that create a class called `SpringDataRestGlobalConfig`. This class will be used to setup CORS to allow calls into our API from any machine.
Ideally, later on or when more is known about who will be calling into your API the CORS settings can be changed to restrict or allow certain hosts.

In the `SpringDataRestGlobalConfig` class we will override the `configureRepositoryRestConfiguration` and use the `config` object available in that overridden method to get the CORS registry then set certain origins and allowd headers.

```java
@Configuration
public class SpringDataRestGlobalConfig extends RepositoryRestConfigurerAdapter {

    private static final String CORS_BASE_PATTERN = "/**";
    private static final String ALLOWED_ORIGINS = "*";
    private static final String ALLOWED_HEADERS = "*";
    private static final String ALLOWED_METHODS = "*";

    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config) {
        config.getCorsRegistry()
                .addMapping(CORS_BASE_PATTERN)
                .allowedOrigins(ALLOWED_ORIGINS)
                .allowedHeaders(ALLOWED_HEADERS)
                .allowedMethods(ALLOWED_METHODS);
    }
}
```

### Configure ID's to show by default

We want to show the `id` property in JSON returned from Spring Data REST. We can do that with a Spring Data Rest `Configuration` setting `exposeIdsFor()`, giving it the classes we wish Spring Data REST to show id's for.

In the over-ridden `configureRepositoryRestConfiguration()` add:

``` java
config.exposeIdsFor(Pirate.class, Ship.class, Raid.class);

```
