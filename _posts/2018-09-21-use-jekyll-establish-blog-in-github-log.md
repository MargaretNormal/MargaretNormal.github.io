---
layout: post
title: '使用Jekyll建立个人博客的记录'
date: 2018-09-21
author: Margaret
color: rgb(185,92,65)
cover: '../assets/image/titlepage/luxstar.png'
tags: blog
---

> 关于建立这个博客的一点小记录

# Set UP

## Create Dev Enviroment :Install Ruby(Gem) &  Jekyll
- [Windows Ruby Installer Download](https://rubyinstaller.org/downloads/)
- [Jekyll Install Document](https://jekyllrb.com/docs/installation/windows/)
- [Jekyll Themes](http://jekyllthemes.org/)
- [Jekyll 中文文档](http://jekyllcn.com/docs/frontmatter/)
- [Jekyll 官方网站](https://jekyllrb.com/)

#### Install Ruby with Windows Installer
- 安装的常规操作

#### Install Jekyll 
- Notice:Ruby NEED **Divkit** version
```
gem install jekyll bundler
jekyll -v
```

#### Create an Empty Jekyll Project
```
jekyll new [Project Name]
# 切换到项目目录的根目录，运行Jekyll生成 _Site
cd [Project Name]

```

#### Launch the Local Server
- 运行本地服务器，默认地址为：`http://localhost:4000`
```
jekyll serve --watch
# 启动方法2
bundle exec jekyll serve
```

#### Themes
- [HardCandy-Jekyll](https://github.com/xukimseven/HardCandy-Jekyll)
- 安装Jekyll分页插件
```
# Windows
gem install jekyll-paginate
# Unixlike
sudo gem install jekyll-paginate
```
- (非必须)安装Bundle
```
bundle install
```
- 修改项目
> _config.yaml
> index.html(首页)
> About.html
> "查看元素"所有需要修改的项目

#### POST 格式
- 必须放在开头，cover可以留空，tags需要使用空格分开。
- 每个冒号后面都有一个空格
```
---
layout: post
title: 'Hello Jekyll'
date: 2017-04-18
author: Jekyll
color: rgb(255,210,32)
cover: 'http://on2171g4d.bkt.clouddn.com/jekyll-banner.png'
tags: jekyll
---
> 首页展示时填写的介绍，没有则需要删除
```

#### 代码高亮
- 中间为代码体
```
{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}
```


# Question

#### Permission denied - bind(2) for 127.0.0.1:4000
- 端口被占用，打开_config.yml 在最后加上一行 `port: 5000` (其他端口也可)。注意冒号和5000之间有空格

#### in `block in verify_gemfile_dependencies_are_found!': Could not find gem 'tzinfo-data x64-mingw32' in any of the gem sources listed in your Gemfile. (Bundler::GemNotFound)
- 在根目录下安装bundle
```
cd [Project Root]
bundle install
```




# 参考资料

1. [一步步在GitHub上创建博客主页](http://www.pchou.info/ssgithubPage/2013-01-03-build-github-blog-page-01.html)
2. [使用Github Pages建独立博客](http://beiyuu.com/github-pages)
3. [Blog模板](https://github.com/swanson/lagom)
4. [相关主题](https://github.com/xukimseven/HardCandy-Jekyll)