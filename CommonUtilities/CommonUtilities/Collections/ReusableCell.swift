//
//  CellIdentifier.swift
//  Megabooth
//
//  Created by Swipe Studio on 27/03/2018.
//  Copyright © 2018 Swipe Studio. All rights reserved.
//

import Foundation
import UIKit

protocol ReuseableCell: class {
    static var defaultReuseIdentifier: String { get }
}

extension ReuseableCell where Self: UIView {
    static var defaultReuseIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}

extension UITableViewCell: ReuseableCell { }

extension UICollectionReusableView: ReuseableCell { }
