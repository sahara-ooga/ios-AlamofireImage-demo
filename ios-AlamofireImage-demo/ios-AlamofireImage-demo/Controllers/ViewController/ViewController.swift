//
//  ViewController.swift
//  ios-AlamofireImage-demo
//
//  Created by OkuderaYuki on 2017/03/15.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    // サンプルデータ
    let imageUrls = ["https://cdn.pixabay.com/photo/2016/05/01/18/29/gerbera-1365459_150.jpg",
                     "https://cdn.pixabay.com/photo/2015/04/10/00/41/yellow-715540_150.jpg",
                     "https://cdn.pixabay.com/photo/2016/10/19/11/47/dew-drop-1752801_150.jpg",
                     "https://cdn.pixabay.com/photo/2016/07/12/18/54/lily-1512813_150.jpg",
                     "https://cdn.pixabay.com/photo/2014/06/17/07/21/yellow-370256_150.jpg",
                     "https://cdn.pixabay.com/photo/2013/07/10/18/13/flower-144486_150.jpg",
                     "https://cdn.pixabay.com/photo/2013/07/05/15/15/flower-143487_150.jpg",
                     "https://cdn.pixabay.com/photo/2016/08/26/12/03/sun-flower-1621990_150.jpg",
                     "https://cdn.pixabay.com/photo/2014/04/10/10/00/tulip-320774_150.jpg",
                     "https://cdn.pixabay.com/photo/2013/10/16/16/59/yellow-rose-196393_150.jpg",
                     "https://cdn.pixabay.com/photo/2014/10/09/19/36/dahlia-482337_150.jpg",
                     "https://cdn.pixabay.com/photo/2014/04/02/00/30/flower-302869_150.jpg",
                     "https://cdn.pixabay.com/photo/2013/10/15/09/12/flower-195893_150.jpg",
                     "https://cdn.pixabay.com/photo/2013/10/15/09/20/flower-195897_150.jpg",
                     "https://cdn.pixabay.com/photo/2013/10/17/04/43/flower-196722_150.jpg",
                     "https://cdn.pixabay.com/photo/2015/04/05/19/28/tulips-708410_150.jpg",
                     "https://cdn.pixabay.com/photo/2016/06/07/19/57/yellow-1442446_150.jpg",
                     "https://cdn.pixabay.com/photo/2016/07/23/00/12/sun-flower-1536088_150.jpg",
                     "https://cdn.pixabay.com/photo/2017/03/05/22/33/garden-2120125_150.jpg",
                     "https://cdn.pixabay.com/photo/2014/12/03/20/53/marigold-555811_150.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        collectionView.dataSource = self
    }
}

// MARK:- UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return imageUrls.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.identifier,
                                                      for: indexPath) as! PhotosCollectionViewCell
        
        if let url = URL.init(string: imageUrls[indexPath.row]) {
            
            // URLを指定して、非同期で画像を取得する。 画像未ダウンロード時に表示するplaceholderImageも指定する。
            // キャッシュが保存されるため、次回以降はURLからダウンロードしない。
            cell.photosCollectionImage.af_setImage(withURL: url, placeholderImage: #imageLiteral(resourceName: "noImage"))
            
            
            // placeholderImage不要の場合は、こちら
//            cell.photosCollectionImage.af_setImage(withURL: url)

        } else {
            // urlがnilの場合は、noImageをセットする
            cell.photosCollectionImage.image = #imageLiteral(resourceName: "noImage")
        }
        
        return cell
    }
}
