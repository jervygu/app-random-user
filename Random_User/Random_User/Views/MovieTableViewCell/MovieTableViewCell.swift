//
//  MovieTableViewCell.swift
//  Random_User
//
//  Created by Jervy Umandap on 7/18/24.
//

import UIKit
import SDWebImage


class MovieTableViewCell: UITableViewCell {
    
    public static var identifier: String {
        get {
            return "MovieTableViewCell"
        }
    }
    
    public static func register() -> UINib {
        return UINib(nibName: "MovieTableViewCell", bundle: nil)
    }
    
    // IBOutlets
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backView.addBorder(.label, width: 1)
        backView.round()
        backView.backgroundColor = .lightGray
        
        movieImageView.addBorder(.gray, width: 0.1)
        movieImageView.round(5)
        
        movieImageView.layer.masksToBounds = true
        movieImageView.clipsToBounds = true
    }
    
    func setupCell(viewModel: MovieTableViewCellViewModel) {
        self.titleLabel.text = viewModel.title
        self.dateLabel.text = viewModel.date
        self.rateLabel.text = viewModel.rate
        self.imageView?.sd_setImage(with: viewModel.imageUrl)
    }
    
}
