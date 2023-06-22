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
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension MainStoreRouter: MainStore_PresenterToRouterProtocol {
    
}
