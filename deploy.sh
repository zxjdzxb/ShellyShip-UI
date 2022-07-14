rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M main &&
git remote add origin git@github.com:zxjdzxb/ShellyShip-website.git &&
git push -f -u origin main &&
cd -
echo https://zxjdzxb.github.io/ShellyShip-website/index.html#/