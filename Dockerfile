# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "sanjeevkumar.anagandulagmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://34.207.112.15:9000 || exit 1

# tell docker what port to expose
EXPOSE 9000
