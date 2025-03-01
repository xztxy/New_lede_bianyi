#!/bin/bash
# 文件名: diy-part1.sh
# 清理残留目录
rm -rf feeds/peditx 2>/dev/null
# 添加 Feed 源 (仅标准语法)
echo 'src-git peditx https://github.com/peditx/luci-theme-peditx.git;main' >> feeds.conf.default
echo 'src-git kwrt-packages https://github.com/kiddin9/kwrt-packages.git;main' >> feeds.conf.default
# 生成修正脚本到仓库根目录
cat > ../fix_dirs.sh << 'EOF'
#!/bin/bash
# 自动修正目录结构
echo "[DEBUG] 开始执行目录修正"
mkdir -p feeds/peditx/luci-theme-peditx
mv -f feeds/peditx/* feeds/peditx/luci-theme-peditx/ 2>/dev/null || true
echo "[DEBUG] 文件移动完成，当前目录结构："
ls -l feeds/peditx/luci-theme-peditx 2>/dev/null
EOF
# 设置执行权限
chmod +x ../fix_dirs.sh
