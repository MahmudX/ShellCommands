# Log into the IBM Cloud account
ic login

# Installs the Container Registry plug-in.
ic plugin install container-registry

# Creates a new namespace
ic cr namespace-add [my_namespace]

# Lists all the namespaces
ic cr namespaces

# Ensures the target to the correct IBM Cloud Container Registry region
# us, jp-osa, jp-tok etc.
ic cr region-set [location]

# Builds the docker image
dc build . -t [image name]:[version]

# Lists all the docker images
dc images

# Tags the image with IBM Cloud Container Registry
# location = us , jp2 for Japan Osaka, jp1 for Japan Tokyo etc.
dc tag [image name/id] [location].icr.io/[namespace]/[image name]:[version]

# Logs the local Docker daemon into IBM Cloud Container Registry
ic cr login

# Pushes the tagged image to IBM Cloud Container Registry
dc push [location].icr.io/[namespace]/[image name]:[version]

# Lists all the images from IBM Cloud Container Registry
ic cr images
