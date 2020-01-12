//
//  CollectionViewUtilities.swift
//  Maestro
//
//  Created by Swipe Studio on 23/11/2019.
//  Copyright © 2019 Swipe Studio. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func registerCell<T: NibLoadableView & ReuseableCell>(ofType type: T.Type) {
        let cellNib = UINib(nibName: type.nibName, bundle: nil)
        register(cellNib, forCellWithReuseIdentifier: type.defaultReuseIdentifier)
    }
}
