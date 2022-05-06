
folders=(
	/home/dlacreme/.vim
	/home/dlacreme/.vimrc
	/home/dlacreme/.emacs.d
	/home/dlacreme/.i3
	/home/dlacreme/.i3status.conf
	/home/dlacreme/.git-prompt.sh
	/home/dlacreme/.bashrc
)

for i in "${folders[@]}"; do cp -r $i . ; done

clean=(
	./.emacs.d/emacs-backup
	./.emacs.d/elpa
)

for i in "${clean[@]}"; do rm -rf $i ; done

