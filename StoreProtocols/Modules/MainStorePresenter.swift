//  MainStorePresenter.swift
//  StoreProtocols
//
//  Created by Moises Abraham Vazquez Perez on 22/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MainStorePresenter: MainStore_ViewToPresenterProtocol {
    
    weak var view: MainStore_PresenterToViewProtocol?
    var interactor: MainStore_PresenterToInteractorProtocol?
    var router: MainStore_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension MainStorePresenter: MainStore_InteractorToPresenterProtocol {

}
