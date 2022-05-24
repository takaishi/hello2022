
## Linux

```
docker build -t investigate_nokogiri .
docker run --volume $PWD:/investigate_nokogiri -it investigate_nokogiri bash
```

```
bash ./gem_enable_to_use_system_libraries.sh
bash ./gem_disable_to_use_system_libraries.sh
```


## Darwin

```
bash ./gem_enable_to_use_system_libraries.sh
bash ./gem_disable_to_use_system_libraries.sh
```
