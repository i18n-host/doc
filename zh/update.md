# 自动更新系统设计

~/.config/xxx/update.yml

channel = xxx

更新频道

1. nightly
2. beta
3. stable

更新的内容

i18-nightly.u-01.eu.org 的 txt记录

curl -s 'https://doh.360.cn/resolve?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -s 'https://doh.pub/resolve?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -s 'https://dns.google/resolve?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -s 'https://dns.alidns.com/resolve?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -H 'Accept: application/dns-json' -s 'https://cloudflare-dns.com/dns-query?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -H 'Accept: application/dns-json' -s 'https://doh.opendns.com/dns-query?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -H 'Accept: application/dns-json' -s 'https://doh.sb/dns-query?name=i18-nightly.u-01.eu.org&type=TXT'  -L|jq

返回响应Answer中type为16的值

版本号 hash 签名

ed25519_dalek
