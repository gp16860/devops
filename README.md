# devops
kubernets 集群安装步骤，使用阿里云加速器，镜像等，无需科学上网，完成安装。

安装步骤和详细命令在 k8s_install 文件中



相关的sh脚本执行：

1.三台机器下载文件 

master机器：
hosts_master.sh
kubernets-cluster.sh
kubeadm.sh
master-init.sh

node1机器：
hosts_node1.sh	
kubernets-cluster.sh
kubeadm.sh

node2机器：
hosts_node2.sh	
kubernets-cluster.sh
kubeadm.sh


脚本执行顺序：
1.三台机器上执行hosts 设置。
2.执行 kubernets-cluster.sh
3.在master机器上执行 master-init.sh

执行完成监听master机器节点加入信息。执行是输出  kubeadm join 拷贝出来
kubectl get nodes -w  监听master加入节点信息

在node1 执行 拷贝命令，知道master节点看到node1节点是ready状态再在node2节点执行。

需要修改ip地址的文件有:
hosts_*.sh
master-init.sh

确保每一步执行成功。




