# README

## usage
```
bundle install
bin/rails s
```

## chapter2
### railsがinstallできない
#### エラーメッセージ

```

```

#### 原因
- nokogiriがインストールできない
  - ディレクトリに権限がない（sierraからの仕様変更）
  - nokogiriをインストールするモジュールが旧い
  - xcodeが旧い

#### 対応
1. モジュールを入れる（はいらず）
2. 権限を付与する（実行できず）
2. xcodeを新しくする（AppStore経由）

1. 
```
# これができれば良いが、2のためインストールやリンクができない
brew install libxml2
brew link --force libxml2
```

2. 
```
# 例：他に言われたとおりに修正する
sudo chown -R ${whoami} /usr/opt/opt
```

3. 
xcodeを最新に

### railsがinstallできない（その2）
```
# ☓
rails new .
# ◯
bundle exec rails new .
```

理由は、bundleで/vendor/bundleにインストールしたライブラリを参照する必要があるから。