//  MainStoreViewController.swift
//  StoreProtocols
//  Created by Moises Abraham Vazquez Perez on 22/06/23.
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class MainStoreViewController: UIViewController {
    //MARK: - O U T L E T S
    @IBOutlet weak var tblStore: UITableView!
    @IBOutlet weak var cvStore: UICollectionView!
    

    var presenter: MainStore_ViewToPresenterProtocol?
    
    var arrCategories: [setDiscoverItemsProtocol]?

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTblAndCV()
    }
    
    private func setUpTblAndCV(){
        self.cvStore.dataSource = self
        self.cvStore.register(DiscoverCollectionViewCell.nib, forCellWithReuseIdentifier: DiscoverCollectionViewCell.identifier)
        
        self.tblStore.dataSource = self
        self.tblStore.register(MicsItemTableViewCell.nib, forCellReuseIdentifier: MicsItemTableViewCell.identifier)
        
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
        return arrCategories?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: DiscoverCollectionViewCell.identifier, for: indexPath) as? DiscoverCollectionViewCell, let category = arrCategories?[indexPath.row] {
            cCell.setUpDiscoverCell(with: category)
            return cCell
        }else {
            let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: DiscoverCollectionViewCell.identifier, for: indexPath) as? DiscoverCollectionViewCell ?? DiscoverCollectionViewCell()
            return cCell
        }
    }
    
}

extension MainStoreViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120.0, height: 120.0)
    }
    
    //Space Needed
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 8
        }
    
}
