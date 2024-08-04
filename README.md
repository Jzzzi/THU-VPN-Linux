# THU VPN

This code is used to launch `THU SSLVPN` quickly in a script, skiping the process of typing the password.

## Install

To install the script, you need to install `openconnect` and `expect` first.

```bash
sudo apt install openconnect expect
```

Replace the sudo password, thu username and thu password in the script `thu-vpn_launch.sh`.

```expect
set sudo_password "your sudo password"
set vpn_username "your thu username"
set vpn_password "your thu password"
```

Then you can run the script to launch the THU SSLVPN.

```bash
./thu-vpn_launch.sh
```

## Quick Start

You can also modify your `~/.bashrc` to add an alias to launch the script. Add the following line to the end of the file.

```bash
alias thu-vpn="~/path/to/thu-vpn_launch.sh"
```

Then you can launch the `THU SSLVPN` by typing `thu-vpn` in the terminal.
