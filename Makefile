include pandoc-man.mk
# include ronn-man.mk

index: index.html

section1: maven_verify_multi_module.1 \
	maven_verify_multi_module.1.html \
	darwin_ramfs_mount.1 \
	darwin_ramfs_mount.1.html \
	darwin_ramfs_umount.1 \
	darwin_ramfs_umount.1.html \
	docker_scp_deploy.1 \
	docker_scp_deploy.1.html \
	fif.1 \
	fif.1.html \
	ssh_key_discovery.1 \
	ssh_key_discovery.1.html \
	dotfiles_install.1 \
	dotfiles_install.1.html \
	pdb_diff.1 \
	pdb_diff.1.html

section7: dotfiles_commands.7 \
	dotfiles_commands.7.html \
	dotfiles_aliases.7 \
    dotfiles_aliases.7.html \
	dreadwarrior_dotfiles.7 \
	dreadwarrior_dotfiles.7.html
	
.PHONY: section1
