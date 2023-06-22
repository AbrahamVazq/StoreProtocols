//  MiscelaneousItem.swift
//  StoreProtocols
//  Created by Moises Abraham Vazquez Perez on 22/06/23.

import UIKit
 
class MiscelaneousItem: SetItemsInfoProtocol  {
    var strName: String?
    var imgItem: UIImage?
    var strDesc: String?
    var strLocation: String?
        
    init(strName: String, imgItem: UIImage, strDesc: String, strLocation: String) {
        self.strName = strName
        self.imgItem = imgItem
        self.strDesc = strDesc
        self.strLocation = strLocation
    }
    
}
