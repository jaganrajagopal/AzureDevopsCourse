
****
Azure DevOps Cheat Sheet****

A service that offers a set of tools for planning, building, and deploying applications.

**Features**
**Azure Boards**

It allows you to track features, user stories, tasks, and bugs associated with your project.
You can also customize your dashboards and track progress easily during your project lifecycle.
**Azure Pipelines**

A CI/CD service that helps you build and test your code automatically.
Enables you to deploy your codes to multiple targets at the same time.

**Azure Repos**
Store and manage your codes using a set of version control tools.

**Azure Test Plans**
A test management solution that supports end-to-end traceability.
Run tests simultaneously using exploratory test sessions.
**Azure Artifacts**
Allows you to create, host, and share your code/packages with your team or other organization.
You can share your code by storing Maven, npm, NuGet, and Python packages together.
**Azure DevTest Labs**
A self-service sandbox that helps you create Dev/Test environments.
You can quickly provision different environments by using reusable templates and artifacts.
It also has a cost management feature to track your VMs and PaaS resources to stay within the allocated budget.
**GitHub Actions for Azure**
Automates software development workflows.
A workflow enables you to build, test, package, release, and deploy projects on Azure.
Each workflow is composed of individual actions that run after a particular event. These actions are defined in YAML files. 
You can find all the available actions in the Marketplace for GitHub Actions for Azure.


**1. Setting up Azure DevOps Project:**
Create Azure DevOps Account:

Go to Azure DevOps and sign up for a new account.
**Create a New Project:**

Once logged in, create a new project to host your source code, builds, and releases.
**2. Version Control with Git:**
Clone Repository:



git clone https://<your-azure-devops-account>/<your-project>/_git/<repository-name>
Navigate to Repository:


cd <repository-name>
3. .NET Core Basics:
Create a New .NET Core Project:


dotnet new console -n MyDotNetApp

**Build and Run .NET Core Application:**


dotnet build
dotnet run
**4. Azure DevOps Pipeline:**
Create azure-pipelines.yml File:

**Create a YAML file at the root of your project.**
yaml
Copy code
trigger:
  branches:
    include:
      - main

pool:
  vmImage: 'windows-latest'

jobs:
- job: Build
  steps:
  - script: dotnet build --configuration Release
    displayName: 'Build the .NET Core application'

  - task: PublishBuildArtifacts@1
    inputs:
      pathtoPublish: 'bin/Release/netcoreapp3.1/publish'
      artifactName: 'drop'
      displayName: 'Publish Artifact'
Commit and Push:

Commit the azure-pipelines.yml file and push changes to trigger the build.
**5. Continuous Integration (CI):**
Configure CI Trigger:
In the Azure DevOps portal, go to Pipelines > Pipelines.
Edit your pipeline, go to the Triggers tab, and enable continuous integration.
**6. Package Management:**
NuGet Restore:

Add a NuGet Restore step in the pipeline to restore packages.
yaml
Copy code
- task: NuGetToolInstaller@1
  displayName: 'Use NuGet 5.0.2'
  inputs:
    versionSpec: 5.0.2

- task: NuGetCommand@2
  inputs:
    restoreSolution: '**/*.sln'
  
**7. Publish Artifacts:**
Artifact Publishing:

Ensure your pipeline publishes artifacts for deployment.
yaml
Copy code
- task: PublishBuildArtifacts@1
  inputs:
    pathtoPublish: 'bin/Release/netcoreapp3.1/publish'
    artifactName: 'drop'
    displayName: 'Publish Artifact'
  
**8. Deployment:**
**Add Deployment Jobs:**

Extend your pipeline to include deployment jobs.
yaml
Copy code
jobs:
- job: Build
  # ...

- job: Deploy
  dependsOn: Build
  pool:
    vmImage: 'windows-latest'
  steps:
  - download: current
    artifact: drop
  # Add deployment steps
Environment Approvals:


**Add environment approvals for a controlled release process.**
9. Monitor and Debug:
View Build Logs:

In Azure DevOps, navigate to Pipelines > Pipelines, select your pipeline run, and view logs.


Certainly! Here's a basic Azure DevOps cheat sheet for beginners working with .NET Core. This cheat sheet assumes you have a basic understanding of .NET Core and Azure DevOps concepts.

Azure DevOps Cheatsheet for .NET Core Beginners
**1. Setting up Azure DevOps Project:**
Create Azure DevOps Account:

Go to Azure DevOps and sign up for a new account.
Create a New Project:

Once logged in, create a new project to host your source code, builds, and releases.
**2. Version Control with Git:**
Clone Repository:

bash
Copy code
git clone https://<your-azure-devops-account>/<your-project>/_git/<repository-name>
Navigate to Repository:

bash
Copy code
cd <repository-name>
**3. .NET Core Basics:**
Create a New .NET Core Project:

dotnet new console -n MyDotNetApp
Build and Run .NET Core Application:


dotnet build
dotnet run
4. Azure DevOps Pipeline:
Create azure-pipelines.yml File:

Create a YAML file at the root of your project.
yaml
Copy code
trigger:
  branches:
    include:
      - main

pool:
  vmImage: 'windows-latest'

jobs:
- job: Build
  steps:
  - script: dotnet build --configuration Release
    displayName: 'Build the .NET Core application'

  - task: PublishBuildArtifacts@1
    inputs:
      pathtoPublish: 'bin/Release/netcoreapp3.1/publish'
      artifactName: 'drop'
      displayName: 'Publish Artifact'
Commit and Push:

Commit the azure-pipelines.yml file and push changes to trigger the build.
5. Continuous Integration (CI):
Configure CI Trigger:
In the Azure DevOps portal, go to Pipelines > Pipelines.
Edit your pipeline, go to the Triggers tab, and enable continuous integration.
6. Package Management:
NuGet Restore:

Add a NuGet Restore step in the pipeline to restore packages.
yaml
Copy code
- task: NuGetToolInstaller@1
  displayName: 'Use NuGet 5.0.2'
  inputs:
    versionSpec: 5.0.2

- task: NuGetCommand@2
  inputs:
    restoreSolution: '**/*.sln'
7. Publish Artifacts:
Artifact Publishing:

Ensure your pipeline publishes artifacts for deployment.
yaml
Copy code
- task: PublishBuildArtifacts@1
  inputs:
    pathtoPublish: 'bin/Release/netcoreapp3.1/publish'
    artifactName: 'drop'
    displayName: 'Publish Artifact'
8. Deployment:
Add Deployment Jobs:

Extend your pipeline to include deployment jobs.
yaml
Copy code
jobs:
- job: Build
  # ...

- job: Deploy
  dependsOn: Build
  pool:
    vmImage: 'windows-latest'
  steps:
  - download: current
    artifact: drop
  # Add deployment steps
Environment Approvals:

Add environment approvals for a controlled release process.
9. Monitor and Debug:
View Build Logs:




Integrate Application Insights for application performance monitoring.
This cheat sheet covers the basics of setting up a .NET Core project, creating an Azure DevOps pipeline, and managing continuous integration and deployment
