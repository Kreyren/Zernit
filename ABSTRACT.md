# Abstract of RXT0112 (Zernit)

This file is designed to define the expected features and direction of the development of this project to hopefully avoid wrong and/or inefficient implementation

## Vision

RXT0112 is expected to be system manager to provide frontend and backend for hardware including the management through desired:
- kernel
	- open-source kernels are expected to be built using logic based on informations gathered about hardware and supported features -> If kernel supports it then we have to have logic for it
- userland
- bios (mobo,gpu,cpu,etc..)
- system features
- packages

While respecting privacy and freedom of the end-users on sustainable for-profit business plan

We are also expecting blockchain implementation to:
- Allow anyone to use processing power of the blockchain in exchange of set price or for free depending on the node provider
- Allow purchases of packaged applications
- Reward contributors/developers
- Support development of other software
- Reward for end-users who educate themself in set subject
- Establish stable economy for the project runtime

### Freedom of everyone involved

Concept inspired by anarcho-monorchism: None should be restricted in doing anything with this software unless:
- It destabilizes the project or it's economy
- Project is legally forced to intervene per country that requires the intervention
- It is used to cause any kind of harm to sentient life-forms that may or may not cause extiction of the specie which includes it's use in systems designed for defense.

None should be also prevented from merging anything that fits this abstract and passes quality assurance which includes legal.

### Privacy policy

Everyone involved has to have full control over their personal informations and about what are they doing on their system that can be changed on demand within one day max.

None should be forced to provide their personal informations unless the runtime can't work without them.

### Security policy 

Security of this project is the most important and the code is adapted for this.

The code sanitization by design is likely to make the software less efficient in which case the software should be designed to allow runtime without sanitization if end-user desires it.

### Supported platforms

To respect the freedom that we grant to everyone involve this project is expected to support all platforms which includes:
- tempfs-based systems (systems that are mounting `/` in tmpfs with persistent storage)
- game consoles
	- xbox360
	- nintendo switch
	- etc..
- Anything that the backend is capable of running which may include a toaster, kettle or even tamagochi which we expect to deploy painlessly.

### Legality

Project is expected to have assigned representative of the law that represents it's juristiction with absolute power to moderate their juristiction which is namely:
- Restrict or limit usage of a function
- Add patches to the software (as long as they pass quality assurance)
- Decide on the distribution of the software
- Overwrite project's philosophy

Legal representatives should have an environment to make their job easier for example having a Graphical User Environment to ban various applications from being installed by the end-user in their juristiction.

### How the packages are handled


#### Packages compiled from source

Packages are expected to be scripted into a standardized phases with ability to add custom phases which are namely:

##### Fetch

Phase designed to fetch the tarbal on end-user's system with ability to cache it for set amount of tim

##### Configure

Phase for various configuration of the package alike applying patches or backend optimization

##### Compile

For compilation of the package

##### Sandbox

Phase designed to install the package in temporary environment

##### Test (optional)

To perform various tests to make sure that the compiled target works as expected and that it is secure

##### Bench (optional)

To perform benchmarks of the compiled target to ensure that it's runtime efficiency is in expected values

##### Index

The changes of the package made to the target system tracked in a database.

This is done to ensure clean removal and ability for the end-user to utilize the database

##### Export (optional)

Phase designed to generate an archive used for binary redistribution of the compiled target

This phase is expected to set compatibility and provide informations about how the source code was compiled to ensure that it's going to work on end-user's system without runtime, security and efficiency issues

This phase is expected to be executed based on provided arguments or configuration by the end-user

##### Merge

Merge the changes in target userland/system

### Packages installed using prebuilt binaries

#### Import

Phase designed for importing of the archive with compiled or uncompiled target

#### Configure (optional)

In case the archive is provided without compiled target this phase is used for configuration of the package i.e installing patches

#### Sandbox

Extract the content of the archive in sandboxed environment

#### Test (option)

Perform various tests to ensure that the package works as expected i.e 

#### Bench (option)

#### Index

#### Merge