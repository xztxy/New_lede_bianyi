# 文件名: diy-part1.sh
# 描述: OpenWrt DIY script part 1 (放在更新feeds之前)
#!/bin/bash

# 修改feeds源
# curl -fsSL https://raw.githubusercontent.com/ywt114/diy/main/feeds > feeds.conf.default
# #sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# sed -i "s/src-git/src-git-full/g" feeds.conf.default
# sed -i "s/src-git-full-full/src-git-full/g" feeds.conf.default
#修改管理地址
sed -i 's/192.168.1.1/192.168.15.1/g' package/base-files/files/bin/config_generate
# 添加feeds源
# echo 'src-git-full helloworld https://github.com/fw876/helloworld.git;main' >> feeds.conf.default
#echo 'src-git-full lucky https://github.com/gdy666/luci-app-lucky.git;main' >> feeds.conf.default
#echo 'src-git op_soft https://github.com/xztxy/op_soft.git;main' >> feeds.conf.default
echo 'src-git kwrt_packages https://github.com/kiddin9/kwrt-packages.git;main' >> feeds.conf.default
