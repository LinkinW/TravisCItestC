# TravisCItestC
[![Build Status](https://www.travis-ci.org/LinkinW/TravisCItestC.svg?branch=master)](https://www.travis-ci.org/LinkinW/TravisCItestC)[![codecov](https://codecov.io/gh/LinkinW/TravisCItestC/branch/master/graph/badge.svg)](https://codecov.io/gh/LinkinW/TravisCItestC)

学习Travis CI C语言项目的编译打包过程

用.travis.yml文件控制Travis CI持续集成

例子：

```yaml
language: c

compiler:
    - gcc
    - clang

script:
    - make && make test
    - ./example
```
一个编译C的例子

指定编译器gcc和clang，两个编译器都会编译，并显示各自编译的结果，如图：

![](./pic/compiler_result.png)

注意YAML语法:后要加上空格

## 增加TravisCI编译通过标签

在github主页增加一个编译通过的标签。



## 增加代码覆盖率测试

C语言可以使用gcov来测试代码覆盖率，网上找到一篇[gcov测试原理讲解](https://blog.csdn.net/yanxiangyfg/article/details/80989680)

