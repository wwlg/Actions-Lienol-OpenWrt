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
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.1.1/192.168.6.5/g' package/base-files/files/bin/config_generate

# 删除原smartdns核心
#rm -rf package/feeds/packages/smartdns

# 拉取smartdns核心
#svn co https://github.com/coolsnowwolf/packages/trunk/net/smartdns package/feeds/packages/smartdns

# 删除原版softethervpn5插件
rm -rf feeds/packages/net/softethervpn5

# 拉取Lean大softethervpn5插件
svn co https://github.com/coolsnowwolf/packages/trunk/net/softethervpn5 feeds/packages/net/softethervpn5

# 删除原版luci-app-softethervpn插件
#rm -rf feeds/lienol/luci-app-softethervpn

# 拉取修改后的luci-app-softethervpn插件
#svn co https://github.com/lxhao61/openwrt-package/trunk/luci-app-softethervpn feeds/lienol/luci-app-softethervpn

# 删除自带xray-core核心
rm -rf package/feeds/packages/xray-core

# 拉取passwall源码
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
#git clone https://github.com/lxhao61/openwrt-passwall.git package/passwall

# 删除passwall中xray-core核心
#rm -rf package/passwall/xray-core

# 拉取ipsec-vpnd LuCI
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-ipsec-vpnd package/lean/luci-app-ipsec-vpnd
