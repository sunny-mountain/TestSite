# TestSite
Test Site(with Docker) on Windows

## これは何？
Windows環境でDockerを動かせなかったとき用の仮想マシン

Vagrantを使ってCentOSを起動し、その中でDockerを使うことができます。

## 使い方
### 事前準備
まずVagrantを使える状態にしておいてください。

次に、`docker-compose`の最新バージョンを確認し、`provisionscript.sh`に書き込んでおいてください。

参考：[https://github.com/docker/compose/releases](https://github.com/docker/compose/releases)

### dockerfileまたはdocker-compose.yamlを用意する
`Docker`フォルダの中にdockerfileまたはdocker-compose.yamlを入れていきます。
コンテナごとにディレクトリを切って、必要なものをまとめておくと扱いやすいかなと思います。

なお、共有ディレクトリですので、Windowsからファイルを放り込むと仮想マシンからも見えますし、仮想マシンからファイルを放り込むとWindowsからも見えるようになっています。

### 仮想マシン起動
`vagrant up`するとCentOSが起動します。

Dockerを使う上で必要そうな処理を一通り行っているので、すぐにお使いいただけます。

- `yum update`の実行
- `git`導入
- `wget`導入
- `docker`導入
- `docker-compose`導入
- タイムゾーン設定
- ロケール設定
- 共有ディレクトリの設定

### Dockerコンテナの起動
`vagrant ssh`でログインしてdocker弄りをしてください。

### 使い終わったら
`vagrant halt`

### 次使うとき
再度`vagrant up`すると、Dockerコンテナたちも(止めていなければ)動き出します(動き出すはずです)。
念の為、`docker ps -a`で確認してください。

### gitディレクトリはなんですか？
何らかのパッケージを`git crone`するときに使うために設けています。
共有ディレクトリ内なので、他に横流ししたりバックアップ取ったりするのに便利です。

## 免責事項
ご利用の際は自己責任で。
足りない処理があれば適宜追記して使ってください。

それと何か感想のようなものもいただければ嬉しかったりします。
