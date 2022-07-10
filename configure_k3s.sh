echo "====== Configure k3s "
export INSTALL_K3S_EXEC="--docker --write-kubeconfig ~/.kube/config --write-kubeconfig-mode 666"
curl -sfL http://rancher-mirror.cnrancher.com/k3s/k3s-install.sh | INSTALL_K3S_MIRROR=cn sh -
sudo chmod 755 /etc/rancher/k3s/k3s.yaml
echo "==== Configure bash-completion ==== "
sudo apt-get install bash-completion
source /usr/share/bash-completion/bash_completion
kubectl completion bash >/etc/bash_completion.d/kubectl
echo "==== Configure alias env ==== "
echo 'alias k=kubectl' >>/home/vagrant/.bashrc
echo 'complete -F __start_kubectl k' >>/home/vagrant/.bashrc
source /home/vagrant/.bashrc

