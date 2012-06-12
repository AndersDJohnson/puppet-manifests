
# exec defaults
Exec {
	# some unix path directories
	path		=> "/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin",
	logoutput	=> true,
}

# module imports
import "templates"
import "nodes"

filebucket { main:
	server => puppet,
}

