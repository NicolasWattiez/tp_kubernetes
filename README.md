# TP 4 - Docker/Kubernetes

Ce TP a été réalisé dans le cadre de la formation "Ingénieur devops" d'AJC ingénieurie.
Le sujet a été réalisé par Vanessa David, Ingénieure DevOps.

1) Créer les volumes persistents:
```
kubectl create -f pvc-mariadb.yml
```

2) Déployer les containers mysql et python:
```
kubectl create -f manifest.yaml
```

3) Accéder au container python:

```
kubectl exec -it pythonapp-7c56d78666-8rkkk -c app bash
```

4) Lancer l'application python:
```
python /usr/src/app/main.py
```

---------------------------------------

On peut tester que les volumes sont bien persistent en supprimant le pod à l'aide la commande suivante:
```
kubectl delete -f manifest.yaml
```
Puis en répétant les étapes 2 à 4


