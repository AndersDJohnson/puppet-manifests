node 'debian-605-webdev' inherits webdev {
	
	include dotfiles_github
	
	dotfiles_github_user {
		"root":
			user		=> "root",
			home_dir	=> "/root";
	}
	
	dotfiles_github_user {
		"anders":
			user		=> "anders",
			home_dir	=> "/home/anders";
	}
	
}

node 'strib-vbox-debian6' inherits webdev {
	
	include dotfiles_github
	
	dotfiles_github_user {
		"root":
			user		=> "root",
			home_dir	=> "/root";
	}
	
	dotfiles_github_user {
		"anders":
			user		=> "johnsad",
			home_dir	=> "/home/johnsad";
	}
	
	package {
		mongodb:
			ensure	=> present;

		# lib32stdc++6 (for 64-bit OS)

		python:
			ensure	=> present;
		
		python-cairo:
			ensure	=> present;
		
		python-rsvg:
			ensure	=> present;
		
		python-setuptools:
			ensure	=> present;
		
	}
}
