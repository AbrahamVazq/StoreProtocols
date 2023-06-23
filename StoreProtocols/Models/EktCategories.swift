//
//  EktCategories.swift
//  StoreProtocols
//
//  Created by Moises Abraham Vazquez Perez on 22/06/23.
//

import UIKit

class EktCategory: setDiscoverItemsProtocol {
    var strName: String?
    var imgItem: UIImage?
    
    init(strName: String, imgItem: UIImage?) {
        self.strName = strName
        self.imgItem = imgItem
    }
}

