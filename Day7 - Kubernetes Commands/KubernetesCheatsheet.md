# Get commands with basic output
kubectl get services                          # List all services in the namespace
kubectl get pods --all-namespaces             # List all pods in all namespaces
kubectl get pods -o wide                      # List all pods in the current namespace, with more details
kubectl get deployment my-dep                 # List a particular deployment
kubectl get pods                              # List all pods in the namespace
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

kubectl edit deployment <deployment_name> – Edit and update the definition of one or more deployments on the server.

kubectl create deployment <deployment_name> – Create a new deployment.

kubectl delete deployment <deployment_name> – Delete deployments.

kubectl rollout status deployment <deployment_name> – See the rollout status of a deployment.
kubectl rollout undo deployment/<deployment name> – Rollback a previous deployment.

kubectl replace --force -f <configuration file> – Perform a replace deployment — Force

####### Events happening on the cluster or node ####
Events
kubectl get events – List recent events for all resources in the system.

kubectl get events --field-selector type=Warning – List Warnings only.

kubectl get events --sort-by=.metadata.creationTimestamp – List events sorted by timestamp.

kubectl get events --field-selector involvedObject.kind!=Pod – List events but exclude Pod events.

kubectl get events --field-selector involvedObject.kind=Node, involvedObject.name=<node_name> – Pull events for a single node with a specific name.

kubectl get events --field-selector type!=Normal – Filter out normal events from a list of events

###### Logs on the pods Level #######

Logs
Logs – System component logs record events happening in cluster, which can be very useful for debugging. You can configure log verbosity to see more or less detail. Logs can be as coarse-grained as showing errors within a component, or as fine-grained as showing step-by-step traces of events (like HTTP access logs, pod state changes, controller actions, or scheduler decisions).

kubectl logs <pod_name> – Print the logs for a pod.

kubectl logs --since=6h <pod_name> – Print the logs for the last 6 hours for a pod.

kubectl logs --tail=50 <pod_name> – Get the most recent 50 lines of logs.

kubectl logs -f <service_name> [-c <$container>] – Get logs from a service and optionally select which container.

kubectl logs -f <pod_name> – Print the logs for a pod and follow new logs.

kubectl logs -c <container_name> <pod_name> – Print the logs for a container in a pod.

kubectl logs <pod_name> pod.log – Output the logs for a pod into a file named ‘pod.log’.

kubectl logs --previous <pod_name> – View the logs for a previously failed pod.

####### Pods ######

kubectl get pod – List one or more pods.

kubectl get pods --sort-by='.status.containerStatuses[0].restartCount' – List pods Sorted by Restart Count.

kubectl get pods --field-selector=status.phase=Running – Get all running pods in the namespace.

kubectl delete pod <pod_name> – Delete a pod.

kubectl describe pod <pod_name> – Display the detailed state of a pods.

kubectl create pod <pod_name> – Create a pod.

kubectl exec <pod_name> -c <container_name> <command> – Execute a command against a container in a pod. Read more: Using Kubectl Exec: Connect to Your Kubernetes Containers

kubectl exec -it <pod_name> /bin/sh – Get an interactive shell on a single-container pod.

######

kubectl set image deployment/frontend www=image:v2               # Rolling update "www" containers of "frontend" deployment, updating the image
kubectl rollout history deployment/frontend                      # Check the history of deployments including the revision
kubectl rollout undo deployment/frontend                         # Rollback to the previous deployment
kubectl rollout undo deployment/frontend --to-revision=2         # Rollback to a specific revision
kubectl rollout status -w deployment/frontend                    # Watch rolling update status of "frontend" deployment until completion
kubectl rollout restart deployment/frontend                      # Rolling restart of the "frontend" deployment

#Rolling Updates and Rollbacks
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