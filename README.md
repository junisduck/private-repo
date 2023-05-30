# github push
1. write code & change code
2. git add .
3. git commit -m ${comment}
4. git tag v1.0.11
5. git push origin v1.0.11
6. git checkout main
7. git merge v1.0.11
8. git push origin main

# image build 
1. git push
2. git action (trigger)
3. docker iamge build (docker buildx)
4. docker image save to docker hub
