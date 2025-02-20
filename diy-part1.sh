#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# git clone https://github.com/vernesong/OpenClash.git package/lean/OpenClash
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# mv package/lean/OpenClash/luci-app-openclash package/lean/luci-app-openclash
# rm -rf package/lean/OpenClash
git clone https://github.com/jerrykuku/lua-maxminddb.git  package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git  package/lean/luci-app-vssr
