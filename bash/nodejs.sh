#! /bin/bash

# node version manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
source ~/.zshrc

export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node/

# install node
nvm install 8

npm set registry https://registry.npm.taobao.org  # npm 镜像源
npm set disturl https://npm.taobao.org/dist  # node-gyp 编译依赖的 node 源码镜像
npm set sass_binary_site https://npm.taobao.org/mirrors/node-sass  # node-sass 二进制包镜像
npm set phantomjs_cdnurl https://npm.taobao.org/mirrors/phantomjs  # phantomjs 二进制包镜像
npm set electron_mirror https://npm.taobao.org/mirrors/electron  # electron 二进制包镜像

npm i -g yrm
npm i -g yarn
npm i -g babel-cli

yarn config set registry https://registry.npm.taobao.org