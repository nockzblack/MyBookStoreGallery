//
//  ViewController.swift
//  MyBookStoreGallery
//
//  Created by Fernando's Mac on 01/04/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var BookCollection: UICollectionView!
    
    let bookNames = ["Amar es para valientes","Bajo un cielo escarlata", "Breve historia del tiempo", "Cerebro de pan","Despues el anochecer","El apartamento","El murmullo de las abejas", "El nombre de la rosa","El nuevo vivir del trading","El Palacio de la Luna","El ruisenor","Forex", "Hija de la fortuna", "Investor Coach","La emperatriz de la luna","La niebla","La niña alemana","La teoria del todo","La viajera del tiempo","Los cuatro acuerdos","Nocturno de la democracia mexicana","Peregrinos","Sapiens","Siempre amigos","Star Wars"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "item"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! BookCollectionViewCell
        
        cell.bookCoverImageView.image = UIImage(named: bookNames[indexPath.row])
         
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let item = sender as? UICollectionViewCell
        let indexPath = BookCollection.indexPath(for: item!)
        let detailVC = segue.destination as! DetailVC
        
        detailVC.detailName = bookNames[(indexPath?.row)!]
        
        
        
    }
    


}

 
