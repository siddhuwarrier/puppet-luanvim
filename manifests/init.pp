
class luanvim {
	include boxen::config
	include vcsrepo

				vcsrepo { '~/.vim':
					ensure   => present,
					provider => git,
					source => 'https://github.com/luan/vimfiles.git',
					submodules => false,
				}	->
				exec { 'install luan vimfiles':
					command => '~/.vim/install'
				}
}
