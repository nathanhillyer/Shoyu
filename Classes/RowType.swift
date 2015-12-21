//
//  RowType.swift
//  Shoyu
//
//  Created by asai.yuki on 2015/12/17.
//  Copyright © 2015年 yukiasai. All rights reserved.
//

import UIKit

public protocol RowType {
    var reuseIdentifier: String { get set }
    var height: CGFloat? { get }
}

protocol RowDelegateType {
    func configureCell(cell: UITableViewCell, indexPath: NSIndexPath)
    func heightFor(indexPath: NSIndexPath) -> CGFloat?
    func canEdit(indexPath: NSIndexPath) -> Bool
    func canRemove(indexPath: NSIndexPath) -> Bool
    func canMove(indexPath: NSIndexPath) -> Bool
    func canMoveTo(indexPath: NSIndexPath, destinationIndexPath: NSIndexPath) -> Bool
    func didSelect(indexPath: NSIndexPath)
    func didDeselect(indexPath: NSIndexPath)
    func willDisplayCell(cell: UITableViewCell, indexPath: NSIndexPath)
    func didEndDisplayCell(cell: UITableViewCell, indexPath: NSIndexPath)
    func willRemove(indexPath: NSIndexPath) -> UITableViewRowAnimation
    func didRemove(indexPath: NSIndexPath)
}
