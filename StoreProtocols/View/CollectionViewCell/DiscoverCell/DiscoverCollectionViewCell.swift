//
//  DiscoverCollectionViewCell.swift
//  StoreProtocols
//
//  Created by Moises Abraham Vazquez Perez on 22/06/23.
//

import UIKit

class DiscoverCollectionViewCell: UICollectionViewCell {
    //MARK: - O U T L E T S
    @IBOutlet weak var imgDiscover: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    public func setUpDiscoverCell(with proto: setDiscoverItemsProtocol){
        self.imgDiscover.image = proto.imgItem
        self.lblTitle.text = proto.strName
        
    }
    
}
