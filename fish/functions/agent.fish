function agent -d 'ssh-agent manager'
	set evalfn /tmp/ssh-agent-eval-(date +%s)
	agentmgr --fish $argv >$evalfn
	eval (cat $evalfn)
	rm $evalfn
end
