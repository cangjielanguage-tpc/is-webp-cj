<div align="center">
<h1>is-webp-cj</h1>
</div>

<p align="center">
<img alt="" src="https://img.shields.io/badge/release-v0.1.1-brightgreen" style="display: inline-block;" />
<img alt="" src="https://img.shields.io/badge/cjc-v0.55.3-brightgreen" style="display: inline-block;" />
<img alt="" src="https://img.shields.io/badge/cjcov-100.0%25-brightgreen" style="display: inline-block;" />
<img alt="" src="https://img.shields.io/badge/state-孵化-brightgreen" style="display: inline-block;" />
<img alt="" src="https://img.shields.io/badge/domain-HOS/Cloud-brightgreen" style="display: inline-block;" />
</p>

## 1 介绍

### 1.1 项目特性

1. 判断文件类型是否为 WEBP 图片。
2. 支持字节数组。


### 1.2 项目计划

1. 2024 年 9 月发布 0.1.0 版本。
2. 2024 年 10 月发布 0.1.1 版本。 

## 2 架构

### 2.1 项目结构

```shell
.
├── README.md
├── LICENSE
├── CHANGELOG.md
├── cjpm.toml
├── fixture.webp
├── fixture.png
|
└── src
    ├── is_webp.cj           # 核心代码
    ├── is_webp_test.cj      # 测试代码
    └── util.cj      		 # 工具代码
```

### 2.2 接口说明

##  3 使用说明

### 3.1 编译构建（Win/Linux/Mac）

```shell
cjpm build
```

### 3.2 功能示例

#### 3.2.1 判断字节数组是否为 WEBP
```cangjie
import is_webp_cj
import std.fs.*

main() {
	let  bytes : Array<Byte> = File.readFrom("fixture.webp")
	if (isWebp(bytes)) {
		println("是WEBP文件")
	} else {
		println("不是WEBP文件")
	}
}
```

##  4 参与贡献

本项目由 [SIGCANGJIE / 仓颉兴趣组](https://gitcode.com/SIGCANGJIE) 实现并维护。技术支持和意见反馈请提Issue。

本项目基于 MIT License，欢迎给我们提交PR，欢迎参与任何形式的贡献。

本项目committer：[@ZIYAN137](https://gitcode.com/ZIYAN137)

This project is supervised by [@zhangyin-gitcode](https://gitcode.com/zhangyin_gitcode).