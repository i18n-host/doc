# 克隆项目

```
bash <(curl -sS https://raw.githubusercontent.com/i18n-host/doc/refs/heads/dev/init.sh)
```

# 前端

[i18n-host/css](https://github.com/i18n-host/css) 基础样式，手动全局引用

```
<link href="//127.0.0.1:7771/_.css" rel="stylesheet">
```

[i18n-host/com](https://github.com/i18n-host/com) 前端组件

运行 `./com/build.sh` 会构建到 `dist` 目录前下

组件有两种

1. `com` 目录下为页面内组件，组件都是标准的[网页组件](https://developer.mozilla.org/docs/Web/API/Web_components) ，每个svelte文件都是一个独立的`vite`打包入口
2. `dom` 目录下为弹出框组件，通常就是一个简单的弹出框，加一个页面内组件

`com`下的组件样式会生成一个单独的`css`文件，在 `dist/css` 目录下。

比如 `css/auth.css`，但实际引用的是 `css/auth.js`。

这样是为了方便通过修改网页的`importmap`，来自定义单个组件的样式。

而组件的`js`中的`css`字符串，会在发布时摇树优化掉。

## dom组件

`Err.js` 表单报错
`Focus.js` 自动设置焦点

## 工具库

`lib` 目录下是一些与网页无关的工具库，比如网络请求、防抖、时间等等。


