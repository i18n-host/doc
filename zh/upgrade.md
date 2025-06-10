# 自动更新系统设计

## 客户端

~/.config/xxx/update.yml

channel = xxx

更新频道

1. nightly
2. beta
3. stable


## 服务器

通过域名的 txt 记录分发的最新版本

域名前缀为 `项目名-版本号`。

比如 `i18-nightly.u-01.eu.org` 的 TXT 记录，格式为

`版本号 网址 网站`


拼接 网站/项目名/版本号/平台.tar

g:组织名/项目名
n:项目名
域名路径


cloudflare r2

更新的内容


```
curl -s 'https://doh.360.cn/resolve?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -s 'https://doh.pub/resolve?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -s 'https://dns.google/resolve?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -s 'https://dns.alidns.com/resolve?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -H 'Accept: application/dns-json' -s 'https://cloudflare-dns.com/dns-query?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -H 'Accept: application/dns-json' -s 'https://doh.opendns.com/dns-query?name=i18-nightly.u-01.eu.org&type=TXT' | jq

curl -H 'Accept: application/dns-json' -s 'https://doh.sb/dns-query?name=i18-nightly.u-01.eu.org&type=TXT'  -L|jq
```

返回响应Answer中type为16的值

版本号 hash 签名

ed25519_dalek
