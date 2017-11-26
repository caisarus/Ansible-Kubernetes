# Ansible-Kubernetes
# Developed and created by Cezar Alexandru Vasilescu (cezar.alexandru.vasilescu@gmail.com)
Steps:
1. Clone repo to root home directory of the ansible master
2. Run prepare_ansible_master.sh in order to set up the ansible master
3. Update "Inventory" and "group_vars/all" file with the needed nodes for the cluster
4. Run one_touch_kubernetes_cluster.sh

Obs
 - To test that the cluster is up and running run "ansible -a "kubectl get nodes" kubernetes-master" (change kubernetes-master to which you are using)
 - When adding new nodes update files as in step 3 and run step 4 again.  
 - For updates and modifications on existing kubernetes cluster just run "ansible-playbook kubernetes.yml"
