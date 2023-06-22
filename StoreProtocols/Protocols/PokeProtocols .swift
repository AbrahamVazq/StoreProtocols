//  PokeProtocols .swift
//  StoreProtocols
//  Created by Moises Abraham Vazquez Perez on 22/06/23.

import UIKit

public protocol SetItemsInfoProtocol: AnyObject {
    var strName: String? { get }
    var imgItem: UIImage? { get }
    var strDesc: String? { get }
    var strLocation: String? { get }
}

