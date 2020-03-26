Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network", ip: "192.168.33.10"
  # centos/7ではconfig.vm.synced_folder "./", "/vagrant"がtype:"rsync"で実行される
  # しかし、Windows環境ではrsyncが使えないため、エラーが発生する
  # 対応策1：コマンドの上書き
  # config.vm.synced_folder "./", "/vagrant", type: "virtualbox"
  # 対応策2：共有ディレクトリの無効化
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./data", "/home/vagrant/vagrant_data",create: true, owner: "vagrant", group: "vagrant"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
  end

  config.vm.provision "shell", path:"./provisionscript.sh"
  config.vm.provision "docker"
end
