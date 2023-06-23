//  EktExtension.swift
//  StoreProtocols
//  Created by Moises Abraham Vazquez Perez on 22/06/23.


import UIKit

//MARK: - UI · V I E W
extension UIView {
    
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: .main) }
}
