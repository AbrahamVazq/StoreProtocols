//  MainStoreRouter.swift
//  StoreProtocols
//
//  Created by Moises Abraham Vazquez Perez on 22/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MainStoreRouter {
	
    static func createModule() -> UIViewController {
        
        let view = MainStoreViewController()
        let presenter = MainStorePresenter()
        let interactor = MainStoreInteractor()
        let router = MainStoreRouter()
        
        let arrCategories: [setDiscoverItemsProtocol] = [
            EktCategory(strName: "Comedores y Antecomedores", imgItem: nil),
            EktCategory(strName: "Videojuegos", imgItem: nil),
            EktCategory(strName: "Cómputo", imgItem: nil),
            EktCategory(strName: "Perfumes", imgItem: nil),
            EktCategory(strName: "Llantas", imgItem: nil),
            EktCategory(strName: "Ropa", imgItem: nil),
            EktCategory(strName: "Tenis", imgItem: nil),
            EktCategory(strName: "Moda y accesorios", imgItem: nil),
        ]
        
        view.presenter = presenter
        view.arrCategories = arrCategories
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension MainStoreRouter: MainStore_PresenterToRouterProtocol {
    
}
