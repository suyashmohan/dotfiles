# My Setup on Windows

This is a tiny help doc to let me remember how I setup my windows machine.

### Install Oh-My-Posh

```pwsh
Install-Module oh-my-posh -Scope CurrentUser
```

### Install Scoop and use it install apps

```pwsh
iwr -useb get.scoop.sh | iex
```

```pwsh
scoop bucket add extras
scoop bucket add nerd-fonts
scoop install sudo git openssh curl aria2
scoop install bat fd fzf lsd ripgrep
scoop install python nodejs-lts gcc make
scoop install neovim neovide
scoop install Hack-NF
```

Remember to check notes section in console logs after installion.

### Configure Vim-Plug for NVim

```pwsh
md ~\AppData\Local\nvim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim\autoload\plug.vim"
  )
)
```

### Install OpenSSH on Windows

Shouldn't be required, openssh through scoop should be enough.

Based on https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse

```pwsh
Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd
Get-Service -Name sshd | Set-Service -StartupType Automatic
Get-Service -Name ssh-agent | Set-Service -StartupType Automatic
```

