//
//  StateCollectionViewCell.swift
//  CollectionViews
//
//  Created by Bradley GIlmore on 5/10/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var stateFlagImageCell: UIImageView!
    @IBOutlet weak var stateNameLabel: UILabel!
    
    func updateViews(withState state: State) {
        stateFlagImageCell.image = UIImage(named: state.abbreviation)
        stateNameLabel.text = state.name
    }
}
