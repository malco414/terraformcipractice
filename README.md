# terraformcitest
using tfnotify test

## memo

以下の環境変数が必要

```
# terraform実行用
export TF_VAR_aws_account_id="xxxxx"
export AWS_ACCESS_KEY_ID="xxxxx"
export AWS_SECRET_ACCESS_KEY="xxxxx"

# tfnotify実行用(CircleCIのみ)
GITHUB_TOKEN="xxxxxx"
```