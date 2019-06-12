tippecanoneコンパイル済みDocker環境

## docker build(再ビルド)
```
 docker build -t tippecanoe --no-cache .
```

## docker container起動
```
 docker run --name tippecanoe -itd --rm tippecanoe
```

## docker container内にファイルコピー
```
 docker cp data/N03-19_01_190101.geojson tippecanoe:/tmp 
```
