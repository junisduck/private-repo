# github push
1. git checkout dev
2. write code & change code
3. git add .
4. git commit -m ${comment}
5. git tag v1.x.x
6. git push origin dev:main

5. git tag v1.0.11
5. git push origin v1.0.11
6. git checkout main
7. git merge v1.0.11
8. git push origin main

# image build 
1. git push
2. git action (trigger)
3. docker iamge build (docker buildx)
4. docker image save to docker hub
