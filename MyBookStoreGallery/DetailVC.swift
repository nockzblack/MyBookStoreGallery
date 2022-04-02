//
//  DetailVC.swift
//  MyBookStoreGallery
//
//  Created by Fernando's Mac on 01/04/22.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var frontCoverImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var detailName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = detailName
        
        frontCoverImage.image = UIImage(named: detailName!)
        titleLabel.text = detailName
    }


}
 
