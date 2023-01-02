//
//  TableViewCell.swift
//  TableView
//
//  Created by Ömer Can Koç on 28.12.2022.
//

import UIKit

protocol TableViewCellProtocol {
    func learnAction(indexPath : IndexPath)
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelLanguage: UILabel!
    @IBOutlet weak var labelDeveloper: UILabel!
    @IBOutlet weak var imageViewLanguage: UIImageView!
    @IBOutlet weak var buttonLearn: UIButton!
    
    var tableViewCellProtocol : TableViewCellProtocol?
    var indexPath : IndexPath?
    
    var count : Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func learn(_ sender: Any) {
        tableViewCellProtocol?.learnAction(indexPath: indexPath!)
        
        if count == 0 {
            buttonLearn.setTitle("Added", for: .normal)
            buttonLearn.setTitleColor(.blue, for: .normal)
            count = 1
        } else if count == 1 {
            buttonLearn.setTitle("Add", for: .normal)
            buttonLearn.setTitleColor(.red, for: .normal)
            count = 0
        }
    }
}