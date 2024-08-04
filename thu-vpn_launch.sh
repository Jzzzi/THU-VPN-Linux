#!/usr/bin/expect -f

# 设置超时时间
set timeout -1

# 设置sudo密码
set sudo_password "your sudo password"
set vpn_username "your thu vpn username"
set vpn_password "your vpn passward"
# 启动sudo openconnect命令
spawn sudo openconnect --juniper https://sslvpn.tsinghua.edu.cn

# 匹配sudo提示并发送密码
expect "sudo" {
    send "$sudo_password\r"
}
expect "username" {
    send "$vpn_username\r"
}
expect "password" {
    send "$vpn_password\r"
}

# 保持交互状态
interact
