oc new-project fiap

oc apply -f ../1/deployment.yaml

oc get deployments

oc apply -f ../2/deploymentconfig.yaml

oc get deploymentconfigs

oc apply -f ../2/pvc.yaml

oc get pvc

oc apply -f ../2/service.yaml
oc apply -f ../2/route.yaml

oc get services
oc get routes

oc apply -f ../3/hpa.yml

oc get hpa

oc apply -f ../3/secret.yml

oc get secrets
