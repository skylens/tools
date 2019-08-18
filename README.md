# 常用工具集

### 文件校验

+ md5

````
openssl md5 README
MD5(README)= f21a8a1e9df9a5e2144df5cb3bb4ea14
md5sum README
```

+ sha1

```
openssl sha1 README
SHA1(README)= 1906ad334d6e70bf1bf7852b7cdc0007d6513f8f
sha1sum README
```

+ sha256

```
openssl dgst -sha256 README
SHA256(README)= 4bd9e18c752f94f98a4c9d0661a67ce09bdb426c108d26358b96907726f68100
sha256sum README

```

### dropbearssh

39eed9b67108e84d3c9a1a86857ef9315dc0032d9060145deffd6e8cc036b93c  dropbear.tar.gz

```
wget -c https://github.com/skylens/tools/raw/master/dropbear.tar.gz
tar -xvf dropbear.tar.gz && cd dropbear
./dropbearinit.sh
```

### lrzsz

### Python3/Python2

