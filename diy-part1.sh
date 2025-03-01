# 文件名: diy-part1.sh
#!/bin/bash
# 清理历史残留（关键步骤）
rm -rf feeds/peditx 2>/dev/null
# 标准 Feed 声明（不带 post-install）
echo 'src-git peditx https://github.com/peditx/luci-theme-peditx.git;main' >> feeds.conf.default
echo 'src-git kwrt-packages https://github.com/kiddin9/kwrt-packages.git;main' >> feeds.conf.default
# 新增目录修正步骤（在 feeds update 前执行）
cat << EOF >> feeds.conf.default
post_install() {
    mkdir -p feeds/peditx/luci-theme-peditx
    mv -f feeds/peditx/* feeds/peditx/luci-theme-peditx/ 2>/dev/null || true
}
EOF
