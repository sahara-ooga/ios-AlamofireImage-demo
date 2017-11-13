# ios-AlamofireImage-demo
iOS AlamofireImage3.2.0を利用したサンプル

## 1. PodFile

```
pod 'AlamofireImage', '~> 3.3'
```

## 2. import する
```
import Alamofire
import AlamofireImage
```

## 3.1 URLを指定して、非同期で画像を取得する
```swift

if let url = URL.init(string: imageUrlString) {

    // URLを指定して、非同期で画像を取得する。
    // キャッシュが保存されるため、次回以降はURLからダウンロードしない。
    imageView.af_setImage(withURL: url)
} else {

    // urlがnilの場合は、noImageをセットする
    imageView.image = #imageLiteral(resourceName: "noImage")
}

```
## 3.2 URLを指定して、非同期で画像を取得する(placeholderImage有)
```swift

if let url = URL.init(string: imageUrlString) {

    // URLを指定して、非同期で画像を取得する。 画像未ダウンロード時に表示するplaceholderImageも指定する。
    // キャッシュが保存されるため、次回以降はURLからダウンロードしない。
    imageView.af_setImage(withURL: url, placeholderImage: #imageLiteral(resourceName: "noImage"))
} else {

    // urlがnilの場合は、noImageをセットする
    imageView.image = #imageLiteral(resourceName: "noImage")
}

```


## 環境

|category | Version| 
|---|---|
| Swift | 3.0 |
| XCode | 8.2.1 |
| Cocoa Pods | 1.2.0 |
| iOS | 10.0〜 |

## OSS

|OSS name | Version| 
|---|---|
| AlamofireImage | 3.2.0~ |

## 参照
https://github.com/Alamofire/AlamofireImage