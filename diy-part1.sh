# 文件名: diy-part1.sh
# 描述: OpenWrt DIY script part 1 (放在更新feeds之前)
#!/bin/bash

# 修改feeds源
# curl -fsSL https://raw.githubusercontent.com/ywt114/diy/main/feeds > feeds.conf.default
# #sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# sed -i "s/src-git/src-git-full/g" feeds.conf.default
# sed -i "s/src-git-full-full/src-git-full/g" feeds.conf.default
# 删除默认软件包源
sed -i '/src-git packages/d' feeds.conf.default
# 添加自定义源并锁定版本
echo 'src-git kwrt_pkg https://github.com/kiddin9/kwrt-packages.git' >> feeds.conf.default
# 创建优先级覆盖文件
echo 'src-link kwrt_override package/kwrt_pkg' > feeds.conf.override

#修改管理地址
sed -i 's/192.168.1.1/192.168.15.1/g' package/base-files/files/bin/config_generate

#增加主题
git clone https://github.com/peditx/luci-theme-peditx.git feeds/luci/themes/luci-theme-peditx
# 添加feeds源

# echo 'src-git-full helloworld https://github.com/fw876/helloworld.git;main' >> feeds.conf.default
#echo 'src-git-full lucky https://github.com/gdy666/luci-app-lucky.git;main' >> feeds.conf.default
#echo 'src-git op_soft https://github.com/xztxy/op_soft.git;main' >> feeds.conf.default
