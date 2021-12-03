#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
echo '### Updates default IP gate ###'
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate
echo '###  ###'

echo '### Updates Theme Argon ###'
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
echo '###  ###'

echo '### 添加 mt7621 支持 ###'
wget -P target/linux/ramips/images/ https://github.com/BenjaminX/OpenWrt-HiWiFi-HC5962-MT7621/blob/aab568a09abaa05df2559477ba9a6d7a316946fd/mt7621.mk
echo '###  ###'
