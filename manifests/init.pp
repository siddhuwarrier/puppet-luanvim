
class luanvim {
	include boxen::config
	$home_dir="/Users/${::boxen_user}/.vim"
	repository {
	  $home_dir:
	    source   => 'luan/vimfiles', 
	    provider => 'git';
	} ->
	exec { 'install luan vimfiles':
		command => "$home_dir/install"
	}
}
