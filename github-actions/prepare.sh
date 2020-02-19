#/bin/sh

# Clean old repo
hub delete gha-demo
hub create gha-demo

# Init new repo for GHA demo
#npx create-react-app gha-demo
cd gha-demo
git init
git remote add origin git@github.com:sinedied/gha-demo.git
git add .
git commit -m "Initial commit"
git push --set-upstream origin master
cd ..
#rm -rf gha-demo
