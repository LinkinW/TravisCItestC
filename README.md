# TravisCItestC
学习Travis CI C语言项目的编译打包过程

用.travis.yml文件控制Travis CI持续集成

例子：

```yaml
language:c

compiler:
    - gcc
    - clang

script:
    - make && make test
    -./example
```



## 增加TravisCI编译通过标签

在github主页增加一个编译通过的标签。