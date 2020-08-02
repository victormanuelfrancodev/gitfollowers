//
//  UIHelper.swift
//  githubfollowers
//
//  Created by Victor Manuel Lagunas Franco on 22/07/20.
//  Copyright © 2020 Victor Manuel Lagunas Franco. All rights reserved.
//

import Foundation
import UIKit

struct UIHelper{
    
    static func createThreeColumnFlowLayout(in view:UIView) -> UICollectionViewFlowLayout{
        let width = view.bounds.width
        let padding:CGFloat = 12
        let minimumItemSpacing:CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        return flowLayout
    }
}

