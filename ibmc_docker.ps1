# Log into the IBM Cloud account
ibmcloud login

# Installs the Container Registry plug-in.
ibmcloud plugin install container-registry

# Creates a new namespace
ibmcloud cr namespace-add [my_namespace]

# Lists all the namespaces
ibmcloud cr namespaces

# Ensures the target to the correct IBM Cloud Container Registry region
# us, jp-osa, jp-tok etc.
ibmcloud cr region-set [location]

# Builds the docker image
docker build . -t [image name]:[version]

# Lists all the docker images
docker images

# Tags the image with IBM Cloud Container Registry
# location = us , jp2 for Japan Osaka, jp1 for Japan Tokyo etc.
docker tag [image name/id] [location].icr.io/[namespace]/[image name]:[version]

# Logs the local Docker daemon into IBM Cloud Container Registry
ibmcloud cr login

# Pushes the tagged image to IBM Cloud Container Registry
docker push [location].icr.io/[namespace]/[image name]:[version]

# Lists all the images from IBM Cloud Container Registry
ibmcloud cr images
