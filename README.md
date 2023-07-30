# github push
1. git checkout dev
2. write code & change code
3. git add .
4. git commit -m ${comment}
5. git tag v1.x.x
6. git push origin dev:main
7. git checkout main
8. git merge dev
9. git push origin ${tag}

# image build 
1. git push
2. git action (trigger)
3. docker iamge build (docker buildx)
4. docker image save to docker hub

# EKS
1. kubectl apply -f ./eks/ingress/ingress-nginx/ingress.yaml
2. kubectl apply -f ./eks/ingress/ingress-nginx/deploy.yaml
3. kubectl apply -f ./eks/ingress/ingress-nginx/jun-service,deploy1.yaml
4. kubectl apply -f ./eks/ingress/ingress-nginx/jun-service,deploy2.yaml
5. kubectl get ingress --all-namespaces
6. curl http://192.168.49.2/jun1
