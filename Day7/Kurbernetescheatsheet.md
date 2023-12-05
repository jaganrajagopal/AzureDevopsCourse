# Get commands with basic output

# List all services in the namespace
kubectl get services  
# List all pods in all namespaces
kubectl get pods --all-namespaces
 
# List all pods in the current namespace, with more details

kubectl get pods -o wide   

# List a particular deployment

kubectl get deployment my-dep   

# List all pods in the namespace
kubectl get pods                              
kubectl get pod my-pod -o yaml   

# Describe commands with verbose output
kubectl describe nodes my-node
kubectl describe pods my-pod

kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'

kubectl get pods -n=default   # n=>namespace 
kubectl apply -f <configuration file>                            #configurationfile -> deployment.yml

#####
kubectl cluster-info                                             #cluster info for kubernetes 

#### Deployment Module #######
kubectl get deployment – List one or more deployments.



kubectl describe deployment <deployment_name> – Display the detailed state of one or more deployments.

**For example  the deploymentname  as dotnetdeployment**,

kubectl describe deployment dotnetdeployment


kubectl edit deployment <deployment_name> – Edit and update the definition of one or more deployments on the server.
kubectl edit  deployment dotnetdeployment

kubectl create deployment <deployment_name> – Create a new deployment.
kubectl create deployment dotnetdeployment

kubectl delete deployment <deployment_name> – Delete deployments.
kubectl delete deployment dotnetdeployment

kubectl rollout status deployment <deployment_name> – See the rollout status of a deployment.

kubectl rollout status deployment dotnetdeployment

kubectl rollout undo deployment/<deployment name> – Rollback a previous deployment.
kubectl rollout undo deployment dotnetdeployment

kubectl replace --force -f <configuration file> – Perform a replace deployment — Force

kubectl replace --force -f deployment.yml


**###### Logs on the pods Level #######**


Logs – System component logs record events happening in cluster, which can be very useful for debugging. You can configure log verbosity to see more or less detail. Logs can be as coarse-grained as showing errors within a component, or as fine-grained as showing step-by-step traces of events (like HTTP access logs, pod state changes, controller actions, or scheduler decisions).

kubectl logs <pod_name> – Print the logs for a pod.

For example , suppose the  podname container 
kubectl logs dotnetcontainer 


**####### Pods ######**
-- list of the pods 
kubectl get pod – List one or more pods.

 –-List pods Sorted by Restart Count.
 
kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'

– Get all running pods in the namespace.

kubectl get pods --field-selector=status.phase=Running 

–- Delete a pod.

kubectl delete pod <pod_name> – Delete a pod.

kubectl describe pod <pod_name> – Display the detailed state of a pods.

kubectl create pod <pod_name> – Create a pod.

kubectl exec <pod_name> -c <container_name> <command> – Execute a command against a container in a pod. Read more: Using Kubectl Exec: Connect to Your Kubernetes Containers

kubectl exec -it <pod_name> /bin/sh – Get an interactive shell on a single-container pod.

###### Rollback commands   #####

# Check the history of deployments including the revision

kubectl rollout history deployment/frontend 

 # Rollback to the previous deployment
 
kubectl rollout undo deployment/frontend     

# Rollback to a specific revision

kubectl rollout undo deployment/frontend --to-revision=2   

# Watch rolling update status of "frontend" deployment until completion
kubectl rollout status -w deployment/frontend    

 # Rolling restart of the "frontend" deployment
kubectl rollout restart deployment/frontend                    

**#Rolling Updates and Rollbacks**

kubectl set image pods/podsapps appsdotnet=nginx:1.191
pod/podsapps image updated

 kubectl describe pods podsapps


  kubectl rollout undo deployment/test-deploy --to-revision=3
 kubectl set image deployment/dotnet-deploy dotnetcontainer=11122233345/dotnetwebappsdemo
 kubectl  describe deployment/dotnet-deploy   
 kubectl rollout status history deployment/dotnet-deploy
 kubectl rollout status  deployment/dotnet-deploy       
 kubectl rollout history  deployment/dotnet-deploy
 kubectl rollout undo deployment --to-revision=1
 kubectl  describe deployment/dotnet-deploy
