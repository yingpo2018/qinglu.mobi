# 轻鹿轻应用

PWA是一种基于标准http协议的开放/不被大公司控制的移动小程序web标准。

**使用PWA，远离那些大公司的控制。**

## 创建PWA应用

我们很高兴大家能通过PR提交一些符合PWA标准的轻应用，需要满足

- 通过HTTPS提供服务
- 有一个 manifest文件，包含 `short_name`  `name`, `start_url`, 以及一个至少 144×144 像素的PNG文件
- 有一个 service worker (保证`start_url` 可以离线使用).

这三者就能保证标准浏览器可以在移动端增加一个“安装”按钮，同时，在你的手机上还需要给浏览器在桌面上添加小程序的权限

详见

- [Opera](https://dev.opera.com/blog/web-app-install-banners/)
- [Chrome](https://developers.google.com/web/updates/2015/03/increasing-engagement-with-app-install-banners-in-chrome-for-android)

## 怎么给这个网站添加应用

- Fork这个库
- 创建一个分支，用你的PWA的名字
- 在 `apps` 文件夹增加一个图标，最好是svg的
- 在[src/index.html](src/index.html) 里面增加几行:

```html
<a class="list__item app js-app"
		href="URL"
		data-app="ID"
		data-tags="TAGS">
	<div class="app__wrapper">
		<h2 class="app__title">
			TITLE
		</h2>
	</div>
	<style>
		[data-app='ID'] {
			color: COLOR;
			background: currentColor url(apps/ID.svg) 50% 50% / 50% auto no-repeat;
			}
	</style>
</a>
```

- 本地测试，在你的浏览器打开[src/index.html](src/index.html)
- 给这个库提交一个PR，PR通过5分钟后就能在网站上看到了！


