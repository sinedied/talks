#/bin/sh

# Clean old repo
hub delete gha-demo
hub create gha-demo

# Init new repo for GHA demo
#npx create-react-app gha-demo
cd gha-demo
rm -rf .git
git init
git remote add origin git@github.com:sinedied/gha-demo.git
git add .
git commit -m "Initial commit"
git branch -M main
git push --set-upstream origin main
cd ..
#rm -rf gha-demo
