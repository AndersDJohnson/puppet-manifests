# node templates

node default {
	
}

node 'base' {
	notify {"welcome":
		message => "Welcome to puppetmaster!",
	}
	
	package {
		
		"sudo":
			ensure	=> present;
	}

}

node 'dev' inherits base {
	package {
		
		# editors
		
		"vim":
			ensure	=> present;
			
		# languages
		
		"gcc":
			ensure	=> present;


		# terminal
		
		"screen":
			ensure	=> present;
		
		"tmux":
			ensure	=> present;
		
		#

		# version control
		
		"git":
			ensure	=> present;
		
		"subversion":
			ensure	=> present;
		
		#
		
		# network files
		
		"sshfs":
			ensure	=> present;
		
		"curlftpfs":
			ensure	=> present;
		
		#

	}
}

node 'webdev' inherits dev {
	
	class { "nodejs":
		version	=> '0.6.19',
	}
	
	package {
		
		# languages
		
		"php5":
			ensure	=> present;
		
		#
		
		# databases
	
		"mysql-server":
			ensure	=> present;
		
		"phpmyadmin":
			ensure	=> present;
	
		"mongodb":
			ensure	=> present;
		
		#
		
		# servers
		
		"nginx":
			ensure	=> present;
			
		"apache2":
			ensure	=> present;
		
		#

		# apache mods
		
		"libapache2-mod-php5":
			ensure	=> present;
		
		"libapache2-mod-fastcgi":
			ensure	=> present;
		
		"libapache2-mod-python":
			ensure	=> present;
		
		#
	
	}
	
}


