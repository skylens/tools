# 常用工具集

### 文件校验

+ md5

```
openssl md5 README
MD5(README)= f21a8a1e9df9a5e2144df5cb3bb4ea14
md5sum README
f21a8a1e9df9a5e2144df5cb3bb4ea14  README
```

+ sha1

```
openssl sha1 README
SHA1(README)= 1906ad334d6e70bf1bf7852b7cdc0007d6513f8f
sha1sum README
1906ad334d6e70bf1bf7852b7cdc0007d6513f8f  README
```

+ sha256

```
openssl dgst -sha256 README
SHA256(README)= 4bd9e18c752f94f98a4c9d0661a67ce09bdb426c108d26358b96907726f68100
sha256sum README
4bd9e18c752f94f98a4c9d0661a67ce09bdb426c108d26358b96907726f68100  README
```

### dropbearssh

d9543383e93135bc2369feb69ed9bd8b7bfc91ea4c057ea0632b50e8793b8e93  dropbear.tar.gz

```
wget -c https://github.com/skylens/tools/raw/master/dropbear.tar.gz
tar -xvf dropbear.tar.gz && cd dropbear
./dropbearinit.sh
```

### lrzsz

e875918de77fb1f1980efc24e61fb49b16c35444c06ecf56ce7335563737b435  lrzsz.tar.gz

```
tar -xvf lrzsz.tar.gz
cd lrzsz/bin
lrz 或者 lsz 文件名
```

### Python3/Python2

```
sudo python3 -m http.server 80
sudo python -m SimpleHTTPServer 80 
```

