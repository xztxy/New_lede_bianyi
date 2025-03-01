#!/bin/bash
# 文件名: fix_dirs.sh
# 功能: 修正 peditx 主题的目录结构
# 创建目标目录（强制递归创建）
mkdir -p feeds/peditx/luci-theme-peditx
# 移动文件并忽略错误（关键指令）
mv -f feeds/peditx/* feeds/peditx/luci-theme-peditx/ 2>/dev/null || true
# 验证操作（调试用）
echo "[fix_dirs] Moved peditx files to subdirectory"
ls -l feeds/peditx/luci-theme-peditx 2>/dev/null
