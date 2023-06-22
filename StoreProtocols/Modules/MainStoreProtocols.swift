//  MainStoreProtocols.swift
//  StoreProtocols
//
//  Created by Moises Abraham Vazquez Perez on 22/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

// MARK: VIEW -> PRESENTER
protocol MainStore_ViewToPresenterProtocol: AnyObject {
	var view: MainStore_PresenterToViewProtocol? { get set }
	var interactor: MainStore_PresenterToInteractorProtocol? { get set }
	var router: MainStore_PresenterToRouterProtocol? { get set }
}

// MARK: PRESENTER -> INTERACTOR
protocol MainStore_PresenterToInteractorProtocol: AnyObject {
    var presenter: MainStore_InteractorToPresenterProtocol? { get set }
}

// MARK: INTERACTOR -> PRESENTER
protocol MainStore_InteractorToPresenterProtocol: AnyObject {
}

// MARK: PRESENTER -> VIEW
protocol MainStore_PresenterToViewProtocol: AnyObject {
    var presenter: MainStore_ViewToPresenterProtocol? { get set }
}

// MARK: PRESENTER -> ROUTER
protocol MainStore_PresenterToRouterProtocol: AnyObject {
}
