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
	
}
