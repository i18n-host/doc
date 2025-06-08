# 自动更新系统设计

~/.config/xxx/update.yml

channel = xxx

更新频道

1. nightly
2. beta
3. stable

更新的内容

i18-nightly.u-01.eu.org 的 txt记录

curl -s -H 'accept:application/dns-json' 'https://doh.pub/dns-query?name=i18-nightly.u-01.eu.org&type=TXT' | jq .

版本号 hash 签名
