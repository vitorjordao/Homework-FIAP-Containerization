# Work tutorial

## How to run manually

First point you need a openshift cluster and a "fiap" project create into.

`oc new-project fiap`

Second you can run the deployment whith contains the django app.

`oc apply -f 1/deployment.yaml`

Can you list the deployment? Try this:

`oc get deployments`

Now you are able to run postgree database.

`oc apply -f 2/deploymentconfig.yaml`

For you verify if the database is up you can run this command:

`oc get deploymentconfigs`

You also can run the pvc to alocate a space for the database

`oc apply -f 2/pvc.yaml`

To list the pvc you can run this command:

`oc get pvc`

Now you also can create the services and route to expose the application on the internet.

`oc apply -f 2/service.yaml`
`oc apply -f 2/route.yaml`

And than you can see if the services and route was be created.

`oc get services`
`oc get routes`

Now you can create the hpa to make the django blog scale up and scale down.

`oc apply -f 3/hpa.yml`

Now you can verify if the hpa was be created.

`oc get hpa`

And finaly you can create the secrets to store the database credentials.

`oc apply -f 3/secret.yml`

And you can see the secrets with this command:

`oc get secrets`
