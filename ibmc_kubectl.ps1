Clear-Host
Set-Alias -Name kc -Value kubectl
$region='jp2'

# Get's kubernetis version
kc version

# kubectl requires configuration so that it targets the appropriate cluster. 
kc config get-clusters

# A kubectl context is a group of access parameters, including a cluster, a user, and a namespace.
kc config get-contexts

# Run a image as a container in Kubernetes.
kc run [imagename] --image $region.icr.io/[namespace]/[image name]:[version] --overrides='{"spec":{"template":{"spec":{"imagePullSecrets":[{"name":"icr"}]}}}}'
# The --overrides option here enables us to specify the needed credentials to pull this image from IBM Cloud Container Registry.

# Lists all the pods in the ns
kc get pods

# Lists all the pods with wide details 
kc get pods -o wide

# Describe the pod with more specific details
kc describe pod [podname]

# Delete a pod
kc delete pod [podname]

# Create pod based on configuration
kc create -f [configuration].yaml

# Set configuration as the desired state in Kubernetes
kc apply -f [configuration].yaml

# Get the list of created deployments
kc get deployments

# Exposes the deployment to the open internet
kc expose deployment/[deploymentName] --type=NodePort --port=8080 --name=[deploymentName] --target-port=8080

# Lists kubernetes services 
kc get services

# Delete deployment and service
kc delete deployment/[deploymentName]
kc delete service/[deploymentName]
