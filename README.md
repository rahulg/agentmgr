# agentmgr

Having all your SSH keys in one agent is convenient, but if you SSH to servers
with shared users, or with users who have root/sudo access, you're sharing
the keys to your personal server with everyone else. Don't do that.
Keep your many identities separate.

`agentmgr` tries to be a middle-ground, where you don't give up the convenience
of having your agents forwarded, but neither do you share all your keys with the
world.

## Installation

* To install everything: `make`
* To install only bash support: `make bash`
* To install only fish support: `make fish`

If you want to install `agentmgr` to any other path, run `make DESTDIR=/some/other/path`

If you use a more traditional, non-`XDG_CONFIG_HOME`-conforming `bash`/`zsh` setup, source `shell-support/bash/functions/agent.bash` from your `.{ba,z,}shrc` or `.profile`

## Setup

* Each agent's config goes into `~/.ssh/agents`
* Here's a sample config, `~/.ssh/agent/personal`:
```ini
; Base agent config
[agent]
; this sets default ttl for keys
;ttl = 10800

; Keys to add on spawn
[keys]
; format: keyfile = ttl
; a ttl of 0 sets it to the default above, if any
; otherwise, the keys last indefinitely
~/.ssh/id_ed25519 = 0
~/.ssh/id_ecdsa = 0
~/.ssh/id_rsa = 0
```
