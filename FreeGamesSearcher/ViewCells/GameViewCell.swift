//
//  GameViewCell.swift
//  FreeGamesSearcher
//
//  Created by Mananas on 13/11/25.
//

import UIKit

class GameViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var cardView: UIView!
    
        
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
            
            cardView.layer.cornerRadius = 18
            cardView.layer.masksToBounds = true
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

        }

        func render(game: Game) {
            titleLabel.text = game.title
            detailLabel.text = game.genre + "  " + game.platform
            thumbnailImageView.loadFrom(url: game.thumbnail)
        }
    }
