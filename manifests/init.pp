
class luanvim {
	include boxen::config

	repository {
	  '~/.vim':
	    source   => 'luan/vimfiles', 
	    provider => 'git';
	} ->
	exec { 'install luan vimfiles':
		command => '~/.vim/install'
	}
}
