# TP 4 - Docker/Kubernetes

Ce TP a été réalisé dans le cadre de la formation "Ingénieur devops" d'AJC ingénieurie.
Le sujet a été réalisé par Vanessa David, Ingénieure DevOps.

## Prérequis

- Docker
- Minikube
- Kubectl


## Démarer minikube

```
minikube start
```

Vérifier le statut de minikube

```
minikube status
```

## Déployer et tester l'application


1) Créer les volumes persistents:
```
kubectl create -f pvc-mariadb.yml
```

2) Déployer les containers mysql et python:
```
kubectl create -f manifest.yaml
```

3) Récupérer le nom du pod:

```
kubectl get pod
```

4) Accéder au container python:

```
kubectl exec -it <name_pod> -c app bash
```

5) Lancer l'application python:
```
python /usr/src/app/main.py
```

---------------------------------------

On peut tester que les volumes sont bien persistent en supprimant le pod à l'aide la commande suivante:
```
kubectl delete -f manifest.yaml
```
Puis en répétant les étapes 2 à 4.


