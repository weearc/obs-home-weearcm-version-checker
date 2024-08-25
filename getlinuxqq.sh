#!/bin/bash

URL="https://im.qq.com/linuxqq/index.shtml"

curl -o downloaded_file.txt "$URL"

if grep -q "LINUX_QQ_DOWNLOAD_CONFIG_URL" downloaded_file.txt && grep -q "var rainbowConfigUrl = \"[^\"]*\"" downloaded_file.txt; then
    matched_line=$(grep "var rainbowConfigUrl = \"[^\"]*\"" downloaded_file.txt)
    matched_content=$(echo "$matched_line" | sed -n 's/var rainbowConfigUrl = "\(.*\)"/\1/p')
    echo "$matched_content"
else
    echo "未找到匹配的内容。"
fi

rm downloaded_file.txt
