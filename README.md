# agentmgr

Having all your SSH keys in one agent is convenient, but if you SSH to servers
with shared users, or with users who have root/sudo access, you're sharing
the keys to your personal server with everyone else. Don't do that.
Keep your many identities separate.

agentmgr tries to be a middle-ground, where you don't give up the convenience
of having your agents forwarded, but neither do you share your keys with the
world.

## Installation

* If you are using fish, please use the fish-compat branch until fish-shell/fish-shell#1362 is fixed

* Copy agentmgr to any directory in your $PATH.
* mkdir -p ~/.ssh/agents
* {ba,z,}sh users: source agent.sh from your .{ba,z,}shrc or .profile
* fish users: copy agent.fish to ~/.config/fish/functions/

## Setup

* Each agent's config goes into ~/.ssh/agents
* Here's a sample config, ~/.ssh/agent/personal:
```
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
