//  MainStoreViewController.swift
//  StoreProtocols
//  Created by Moises Abraham Vazquez Perez on 22/06/23.
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MainStoreViewController: UIViewController {
    //MARK: - O U T L E T S
    @IBOutlet weak var tblStore: UITableView!{
        didSet { self.tblStore.dataSource = self }
    }
    @IBOutlet weak var cvStore: UICollectionView!{
        didSet { self.cvStore.dataSource = self }
    }
    

    var presenter: MainStore_ViewToPresenterProtocol?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - P R E S E N T E R · T O · V I E W
extension MainStoreViewController: MainStore_PresenterToViewProtocol {
}


extension MainStoreViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}


extension MainStoreViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: <#T##String#>, for: <#T##IndexPath#>)
    }
    
    
}
