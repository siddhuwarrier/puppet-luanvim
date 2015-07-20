class luanvim {

	include boxen::config
  require homebrew
  $home_dir="/Users/${::boxen_user}/.vim"
	
  package { 'vim':
    provider => homebrew,
    install_options => ['--with-lua']
  } -> 
  repository {
	  $home_dir:
	    source   => 'luan/vimfiles', 
	    provider => 'git';
	} ~>
	exec { 'install luan vimfiles':
		command => "$home_dir/install"
	}
}
