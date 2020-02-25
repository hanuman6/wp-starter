# WordPress Starter

WordPressローカル環境

## 含まれるソフトウェア

- [Scotch Box](https://box.scotch.io/docs/)
- [WP-CLI](https://qiita.com/IK12_info/items/4a9190119be2a0f347a0)

## 構築時の作業フロー

- コマンドはターミナルで実行します。
  - ターミナルは、Mac の「アプリケーションフォルダ」内の「ユーティリティフォルダ」にインストールされています。

### 1. セットアップ

- VirtualBox と Vagrant、 WP-CLIをインストールした場合はスキップ。

#### VirtualBox のインストール:

- 公式サイトからインストーラをダウンロードして実行します。
  https://www.virtualbox.org/wiki/Downloads
- インストールできたかどうか VirtualBox のバージョンの確認
  ```
  VBoxManage -v
  ```

#### Vagrant のインストール

- 公式サイトからインストーラをダウンロードして実行します。
  https://www.vagrantup.com/downloads.html
- インストールできたかどうか、バージョンを確認します。
  ```
  vagrant --version
  ```
- vagrant-vbguest プラグインをインストール
  ```
  vagrant plugin install vagrant-vbguest
  ```

#### WP-CLI のインストール
- まずは wp-cli.phar ファイルをダウンロードします
  ```
  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  ```
- 動くかどうか確認後
  ```
  php wp-cli.phar --info
  ```
- 実行権限を付け、PATHに通します
  ```
  chmod +x wp-cli.phar
  sudo mv wp-cli.phar /usr/local/bin/wp
  ```
  ```
  wp cli version
  ```

### 2. vagrant 立ち上げ

- プロジェクトをクローン(もしくは SourceTree でクローン)

```
git clone https://github.com/hanuman6/wp-starter.git
```

- 以下のコマンドを実行
  ```
  cd wp-starter
  vagrant up
  ```
- vagrant を立ち上げる時に問題なければ、以下の手順を進めます

  - WordPress 初期設定

  ```
  sh bootstrap.sh
  ```

- ブラウザで以下のアドレスを確認します。
  - `192.168.33.34` → WordPress が表示されます

### 3. vagrant コマンド

- vagrant 起動

```
# 起動
vagrant up
```

- vagrant 停止

```
# 停止:
vagrant halt
```

### ローカル環境の基本情報

- IP アドレス:
  	- Wordpress: `192.168.33.34`
- データベース情報:
    - データベース名: scotchbox
    - ユーザ名: root
    - ユーザパスワード: root
- デフォルトユーザー情報:
    - メールアドレス: test@example.com
    - ユーザ名: admin
    - ユーザパスワード: admin
- Wordpress はカスタマイズテーマのみ git に管理します
