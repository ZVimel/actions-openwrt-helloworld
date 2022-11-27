#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile
# rm -rf feeds/packages/lang &&  svn co https://github.com/openwrt/packages/branches/openwrt-22.03/lang/golang feeds/packages/lang
# curl -sL -m 30 --retry 2 https://github.com/vernesong/OpenClash/releases/download/Clash/clash-linux-mipsle-softfloat.tar.gz -o /tmp/clash.tar.gz
# tar zxvf /tmp/clash.tar.gz -C /tmp >/dev/null 2>&1
# chmod +x /tmp/clash >/dev/null 2>&1
# mkdir -p ./package/luci-app-openclash/files/etc/openclash/core
# mv /tmp/clash ./package/luci-app-openclash/files/etc/openclash/core/clash >/dev/null 2>&1
# rm -rf /tmp/clash.tar.gz >/dev/null 2>&1
