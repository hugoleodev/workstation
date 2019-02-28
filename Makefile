bootstrap:
	@bash scripts/bootstrap.sh

run: bootstrap
	@ansible-playbook playbook.yml -i hosts
