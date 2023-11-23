#!/bin/bash

# 检查 $HOME/.config 是否存在
if [ -d "$HOME/.config" ]; then
    # 如果存在，则同步到当前目录下的 ./config
    rsync -avz "$HOME/.config/" ./.config
    echo "同步完成"
else
    echo "未找到 $HOME/.config 目录"
fi
