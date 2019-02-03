//
//  WeatherTableViewCell.swift
//  weatherapp2
//
//  Created by Ahmed abu elregal on 11/16/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var dtLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var temp_minLabel: UILabel!
    @IBOutlet weak var temp_maxLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var sea_levelLabel: UILabel!
    @IBOutlet weak var grnd_levelLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temp_kfLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
