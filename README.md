Create the managed package
```shell
sfdx force:org:create -f config\project-scratch-def.json --setdefaultusername
sfdx force:source:push



One Time Steps:
sfdx force:package:create -t Managed -n W23VFRemoteRegression -r force-app

Create new package version:
sfdx force:package:version:create -p W23VFRemoteRegression -w 15 --codecoverage -x
sfdx force:package:version:promote -p 04t1S000000262WQAQ
```
Install the package into a W23 Scratch Org
```shell
sfdx force:org:create -n -a w23-vfremote-subscriber edition=Developer release=Preview
sfdx force:package:install -u w23-vfremote-subscriber -p  04t1S000000262WQAQ -w 10
sfdx force:org:open -u w23-vfremote-subscriber

Visit the following path in your org with your browser:

/apex/PMGR__W23VFRemote

Go into Setup -> Release Updates -> Enable JsonAccess Annotation Validation for the Visualforce JavaScript Remoting API

Enable the Test Run of that Release Update

Reload the Visualforce page above. The error is displayed:

The concrete implementation 'PMGR.W23VFRemote.SampleDTO' in namespace 'PMGR' has a JsonAccess annotation serializable attribute defined that prevents serialization. The Apex object cannot be serialized. The VFJSRemotingEnforcePref value is 'true'

```
