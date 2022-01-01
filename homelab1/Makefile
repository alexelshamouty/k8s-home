.DEFAULT:
	echo "Specify what you want to make"

.master:
	cd k8s-controllers/ ; terragrunt init ; terragrunt apply -auto-approve

.node:
	cd k8s-nodes/ ; terragrunt init ; terragrunt apply -auto-approve

.provision_master:
	ansible -i ../inventory --limit "k8s-controller-*" -e "master=true" scripts/install-k8s.yaml

.provision_node:
	ansible -i ../inventory --limit "k8s-node-*" -a "slave=true" scripts/install-k8s.yaml

.all:


