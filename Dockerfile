# 1 "FROM" tells Docker to pull the specified image and use that as the basis for what we're adding
FROM ortussolutions/contentbox

LABEL maintainer "Angel Chrystian Torres <contact@angel-chrystian.com>"

# INSTALL FUSION REACTOR
RUN box install commandbox-fusionreactor

# Copy Custom modules files to modules_app in root
COPY ./app/modules_app/contentbox-custom/ModuleConfig.cfc $APP_DIR/modules_app/contentbox-custom/ModuleConfig.cfc