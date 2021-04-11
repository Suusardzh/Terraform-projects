# Inroduction to Terraform

## What is `Terraform`?
Terraform is a tool for building, changing, and versioning infrastucrure safely and efficiently.
Terraform can manage existing and popular service providers as well as custom in-house solutions.

Configuration files describe to `Terrafom` the  components needed to run a single application or your entire datacenter.

The infrastructure `Terraform ` can manage  includes low-level components such as compute instances, storage, and networking, as well as high-level components such as DNS entries, SaaS features, etc.

## Infrastucture as Code 
Infrastructure is describing using a high-level configuration syntax. This allows a bluebrint of your datacenter to be versioned and treated as you would any other code.
And, Infrastructure can be shared and re-used.

## Execution Plans
`Terraform`  has a "planning" step where it  generates an execution plan. 

## Resource Graph
`Terraform` builds graph of all your resources, and parallelizes the creation and modification of any nondependent resources.

## Change Automation
Complex change set can be applied  to your infrastructure with minimal human interaction.