host=192.168.33.101
private_key=${HOME}/.vagrant.d/insecure_private_key

init:
	vagrant up
	gem install bundler

install:
	bundler install

itamae:
	itamae ssh \
		-h ${host} \
		-p 22 \
		-u vagrant \
		-i ${private_key} recipe.rb
