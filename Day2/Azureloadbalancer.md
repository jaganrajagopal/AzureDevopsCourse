How to create the Azure load balancer via azure portal 

Step 1: Please create the azure virtual machine as window machine ( as per screen attachment)
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/c0eeed05-a6bf-4267-8dc3-2e0e6a1db492)

Step 2: Please configure the vm , ip address and disk properties 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/0c458c93-5b8d-4513-bda2-80b3c028edb0)

Step 3: Please configure the IIS on windowmachine A
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/90be1904-9207-4733-a7de-9a85759c3667)

Step 4: Validation of IIS configuration 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/a0261a8e-b3c2-4893-b717-f90d465c9d4f)

Step 5: Open the static webpage via IIS webserver 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/5ba81785-3f54-4ff7-b559-4dfd9ddce151)

Step 6: Accessing the website endpoint 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/df1f3dd6-529e-47b7-9ea8-5263fa99a6cf)



Step 7: Similarly repeat the process for window machine B 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/715dbe64-6e1b-4612-8cdc-48546a855d6e)


Step 8: Please create the Azure load balancer 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/53ecd142-1fe1-4a8a-8ddc-4dc0397d4559)

Step 9: Configure the front ip address 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/1cfccbdb-e1b2-4293-802e-df489a318185)

Step 10: Please map the front end rule 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/4af80384-c044-4821-8397-7b657af9dffa)

![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/fef64af4-ab87-42dd-bf57-f23be8d41f2a)

Step 11: Please configure the backendpool for azure loadbalancer
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/95b3dc6a-b6d9-4341-bd93-49c331b75056)

Step 12:  Configure Azure health check rule 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/34f025a2-2281-4c94-9716-ced264e9fd44)

Step 13: Azure loadbalancer , two window machine 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/745a1510-b0ef-4052-a670-02aa855f8712)

Step 14: You can access the endpoint via frontendip address of the azure loadbalancer 
![image](https://github.com/jaganrajagopal/AzureDevopsCourse/assets/8061469/1f961b63-632c-46d8-8f84-b83a9331f7a9)










