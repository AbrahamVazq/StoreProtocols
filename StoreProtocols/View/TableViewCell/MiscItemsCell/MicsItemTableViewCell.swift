//
//  MicsItemTableViewCell.swift
//  StoreProtocols
//
//  Created by Moises Abraham Vazquez Perez on 22/06/23.
//

import UIKit

class MicsItemTableViewCell: UITableViewCell {
    //MARK: - O U T L E T S
    @IBOutlet weak var strTitle: UILabel!
    @IBOutlet weak var strDesc: UILabel!
    @IBOutlet weak var strPlace: UILabel!
    @IBOutlet weak var imgCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    public func setUpCell(with: SetItemsInfoProtocol ){
        self.strTitle.text = with.strName
        self.strDesc.text = with.strDesc
        self.strPlace.text = with.strLocation
    }
}
