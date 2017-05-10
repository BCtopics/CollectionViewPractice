//
//  StateCollectionViewController.swift
//  CollectionViews
//
//  Created by Bradley GIlmore on 5/10/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class StateCollectionViewController: UICollectionViewController {

    let stateController = StateController()
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stateController.states.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StateCell", for: indexPath) as? StateCollectionViewCell else { return UICollectionViewCell() }
        
        let state = stateController.states[indexPath.row]
        cell.updateViews(withState: state)
        
        return cell
    }
    
}
