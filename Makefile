all: clean install

install:
	@echo "Linking dotfiles"
	[ -f ~/.bashrc ]    || ln -sf $(realpath .bashrc) ~/.bashrc
	[ -f ~/.gitconfig ] || ln -sf $(realpath .gitconfig) ~/.gitconfig
	[ -f ~/.gitignore ] || ln -sf $(realpath .gitignore) ~/.gitignore
	[ -f ~/.vimrc ]     || ln -sf $(realpath .vimrc) ~/.vimrc

clean:
	@echo "Removing existing dotfiles"
	rm -f ~/.bashrc
	rm -f ~/.gitconfig 
	rm -f ~/.gitignore
	rm -f ~/.vimrc 

.PHONY: all install clean
