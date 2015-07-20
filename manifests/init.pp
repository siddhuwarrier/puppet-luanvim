
class luanvim {
	include boxen::config

	repository {
	  '/Users/${::boxen_user}/.vim':
	    source   => 'luan/vimfiles', 
	    provider => 'git';
	} ->
	exec { 'install luan vimfiles':
		command => '/Users/${::boxen_user}/.vim/install'
	}
}
