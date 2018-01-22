# Devops

## First things first

Get to know the stakeholders. Who is responsible for what, and where can accurate information can be obtained.

Get to know the architecture in detail. Have a clear vision how it came to be (past) and where does it need to be (future).

Identify common pain points, and how much is devops currently engaged in the lifecycle of the products and managed platforms.

## Keeping things flowing

* __Planning__ - Either GitLab Issues+Labels or Redmine with Agile plugin (I favour GitLab)
* __Analysis__ - Again, GitLab pages or Redmine Wikis for documenting requirements (I favour GitLab), Slack for internal comunication
* __Design__ - I favour design descriptors to be stored near the actual software code, as this allows not only versioning, but usually also means that links can be established between issues, documents and changesets. 
* __Implementation__ - A modern IDE is a must, and I currently favor IntelliJ, as it offers broad support with most technologies, frameworks and langages.
* __Testing and Integration__ - I currently favour unit testing with spring-test, Junit4, Mockito and AssertJ for Java, and integration testing through Selenium. I also have experience and recomend Sonarqube for running and reporting on multiple software development metrics, like code quality, code style and documentation. And of course, Jenkins for continuous integration (GitLab Runners may also offer a tighter integration with SCM).
* __Maintenance__ - Redmine can double as a public ticketing system that customers can use to register issues and feature requests. The agile tools can then be used to analyze, manage and prioritize requests with each sprint.

## Customer delivery
The product could be designed as either a series of installers, or as a set of ready-to-deploy images, adapted to the most common types of private clouds.

Depending on the facilites provided by the customer, offering both solutions would cover a broader audience.

Installing each platform component offers more flexibility, but can also be more cumbersome to manage (install and upgrades alike). However, this problem could be mitigated through the use of an orchestrator like Chef, Puppet or Saltstack to provision and connect the application components.

Installing the platform as single packaged machine offers simplicity and convenience during deployment, but does not offer many scaling possibilities other than those provided by the underlying cloud platform.

Installing the platform as a series of packaged machines offers more possibility of scalability, which may very well be mandatory depending on the expected worlkloads, or redundancy/availability requirements.

## SLAs

To ensure the highest level of availability, the following would be required:
* an sufficient level of redundancy so that each component may be taken offline for planed operations
* a clear test plan by the maintainer of each component, that can be run on demand or periodically
* a mechanism that offers sufficient control of request routing within the platform

With these in place, we could offer not only the correct tooling for planned maintenance, but also implement automated corrective actions when faults are detected.

To be able to monitor and detect faults, the basic metrics and thresholds should be defined:
* primary memory and swap space
* load average
* disk usage
* network usage
* pools usages (database, threads, http clients, etc...)
* endpoint availability (layer 7 availability when possible, layer 4 otherwise)
* service readiness (up and running and ready to respond)

Prometheus can be used to gather these metrics from prometheus enabled systems and applications. Graphana can be used to build dashboards to help visualize trends, planning future needs and diagnose issues.

The ELK stack can also be use to gather and mine logs for information, and centralize log management. Structured logging is a must when diagnosing complex issues. There is also a strong case to be made for auditing through ELK, altough that depends on having sufficient information available in the logs.

## Coding and Packagin

Refer to [this page](RUNNING.md) for information on how to run and package the project.

