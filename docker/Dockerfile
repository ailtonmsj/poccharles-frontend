FROM docker.io/nginx/unit:1.22.0-jsc11
# Alternatively, you can download the base image from AWS ECR:
# FROM public.ecr.aws/nginx/unit:1.22.0-jsc11

# port used by the listener in config.json
EXPOSE 8080

# application setup
# prepare the app config for Unit
RUN mkdir /www/ && echo '{                                                 \
    "listeners": {                                                         \
        "*:8080": {                                                        \
            "pass": "applications/java_app"                                \
        }                                                                  \
    },                                                                     \
    "applications": {                                                      \
        "java_app": {                                                      \
            "type": "java",                                                \
            "webapp": "/www/"                                              \
        }                                                                  \
    }                                                                      \
    }' > /docker-entrypoint.d/config.json
