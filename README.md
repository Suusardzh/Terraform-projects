# Inroduction to Terraform

## What is `Terraform`?
Terraform is a tool for building, changing, and versioning infrastucrure safely and efficiently.
Terraform can manage existing and popular service providers as well as custom in-house solutions.

Configuration files describe to `Terrafom` the  components needed to run a single application or your entire datacenter.

The infrastructure `Terraform ` can manage  includes low-level components such as compute instances, storage, and networking, as well as high-level components such as DNS entries, SaaS features, etc.

## Infrastucture as Code 
Infrastructure is describing using a high-level configuration syntax. This allows a bluebrint of your datacenter to be versioned and treated as you would any other code.
And, Infrastructure can be shared and re-used.


![alt text](https://cdn.fs.teachablecdn.com/ADNupMnWyR7kCWRvm76Laz/resize=width:1000/https://www.filepicker.io/api/file/uO5bkREsSPO8butf1UJT)

## Execution Plans
`Terraform`  has a "planning" step where it  generates an execution plan. 

## Resource Graph
`Terraform` builds graph of all your resources, and parallelizes the creation and modification of any nondependent resources.

## Change Automation
Complex change set can be applied  to your infrastructure with minimal human interaction.

### Benefits of IaC

#### Self-service
Most teams that deploy code manually have a small number of sysadmin (often,just one) who are the only ones who knows all the magic incantations to make deployment work and are the only ones with access to production. This becomes a major bottleneck as the company grows. If your infrasture is defined in code, then the entire deployment proccess can be automated, and development can kick off their own deployments whenever necessary.


#### Speed and safety

Infrastructure as code enables you to quickly set up your complete infrastructure by running a script. You can do that for every environment, from development to production, passing through staging, QA, and more. IaC can make the entire software development lifecycle more efficient.


####  Documentation

Instead of the state of your infrastucture being locked away in a single sysadmin's head, you can represent the state of your infrastucture in source files that anyone can read. In other words, IaC acts as documentation, allowing everyone in the organization to understand how things work, even if the sysadmin goes on vacation.


#### Version Control

You can store your IaC source files in version control, which means the entire history of your infrastructure is now captured in the commit log. This becomes more powerfull tool for debugging issues, as any time a problem pops up, your first step will be to check the commit log and find out what changed in your infrastructure, and your second step may be to resolve the problem by simply reverting back to a previos, known-good version of your IaC code.


#### Validation

If the state of your infrastructure is defined in code, then for every single change, you can perform a review, run  a suite of automated tests, and pass the code through static analysis tools, all practices that are known to significantly reduce the chance of defects.

#### Reuse

You can package your infrastructure into reusable modules, so that instead of doing every deloyment for every product in every environment  from scratch, you can build on top of known, documented, battle-tested pieces. 

#### Lower Cost

One of the main benefits of IaC is without a doubt lowering the costs of infrastructure management. By employing cloud computing along with IaC, you dramatically reduce your costs. That's because you won't have to spend money on hardware, hire people to operate it, and build or rent physical space to store it. But IaC also lowers your costs in another, subtler way and that is what we call "opportunity cost."

## Immutable infrastructure vs. mutable infrastructure
An important decision to make when automating infrastructure with IaC and when choosing an IaC solution is whether to establish mutable or immutable infrastructure.


### Mutable Infrasture 

Mutable Infrastructure  is infrastructure that can be modified  or updated after it is orginally provisioned.  Mutable infrastructure gives development teams the flexibility to make ad hoc  server customizations to say more closely fit development or application requirements or respond to an emergent security issue.