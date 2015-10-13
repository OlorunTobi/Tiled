//
//  ViewController.swift
//  tiled
//
//  Created by Benjamin de Jager on 12/10/15.
//  Copyright © 2015 Benjamin de Jager. All rights reserved.
//

import UIKit
import Tiled

class ViewController: UIViewController, TilingScrollViewDataSource {
  
  @IBOutlet weak var tilingScrollView: TilingScrollView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tilingScrollView.dataSource = self
    tilingScrollView.imageView.image = UIImage(named: "CuriousFrog_Placeholder")
  }
  
  // MARK: TilingScrollView Datasource
  
  func tilingScrollView(tilingScrollView: TilingScrollView, imageForColumn column: Int, andRow row: Int, forScale scale: CGFloat) -> UIImage? {
    let scale = Int(scale * 1000)
    if let image = UIImage(named: "CuriousFrog_\(scale)_\(column)_\(row)") {
      return image
    }
    return nil
  }
  
  func numberOfDetailLevelsInTilingScrollView(tilingScrollView: TilingScrollView) -> Int {
    return 4
  }
  
  func fullSizeOfImageInTilingScrollView(tilingScrollView: TilingScrollView) -> CGSize {
    return CGSize(width: 3600, height: 2400)
  }
  
  func sizeOfTilesInTilingScrollView(tilingScrollView: TilingScrollView) -> CGSize {
    return CGSize(width: 256, height: 256)
  }
}
