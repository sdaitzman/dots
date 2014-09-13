function iTerm2_integration
	if not set -q iTerm2_shell_integration
		set -g __iT2_meta \e\]1337\;
		set -g __iT2_mark \e\]133\;
		set -g __iT2_end \7
		# Uncomment the following lines for visual confirmation of control strings
		# set -g __iT2_meta \<META\>
		# set -g __iT2_mark \<MARK\>
		# set -g __iT2_end \<BEL\>
		set -g iTerm2_shell_integration {$__iT2_meta}ShellIntegrationVersion=1{$__iT2_end}
 
		function __iTerm2_preexec_ish --on-variable _
			if test "$_" != "fish"
				set -g __iT2_command $_
				echo -ne {$__iT2_mark}C{$__iT2_end}
			end
		end
 
		function __iTerm2_remote_host_dir
			echo -ne {$__iT2_meta}RemoteHost=$USER@(hostname -f){$__iT2_end}
			echo -ne {$__iT2_meta}CurrentDir=$PWD{$__iT2_end}
		end
 
		function __iTerm2_pre_prompt --on-event fish_prompt
			# capture exit status now, it's overwritten in local scope otherwise
			set -g __iT2_exit_status $status
			if set -q __iT2_command
				set -e __iT2_command
			else
				echo -ne {$__iT2_mark}C{$__iT2_end}
			end
			echo -ne {$__iT2_mark}D\;{$__iT2_exit_status}{$__iT2_end}
			__iTerm2_remote_host_dir
		end
	end
 
	__iTerm2_remote_host_dir
	echo -ne $iTerm2_shell_integration
end