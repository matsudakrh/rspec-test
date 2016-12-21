テストコマンド

```
# 全部実行
bundle exec rake spec
# 特定のディレクトリだけのときなど
bundle exec rspec spec/models/
```

```
gem 'hirb'
gem 'hirb-unicode'
# Rails consoleでmodelを出力した時など整形して出力してくれる
# $ rails c
# $ Hirb.enable
```
