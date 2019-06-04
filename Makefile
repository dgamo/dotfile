install:
	mkdir -p ~/.config/nvim/
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -sf $(PWD)/nvim/modules/ ~/.config/nvim/
	ln -sf $(PWD)/nvim/init.vim ~/.config/nvim/init.vim
