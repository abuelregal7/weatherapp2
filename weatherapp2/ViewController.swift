//
//  ViewController.swift
//  weatherapp2
//
//  Created by Ahmed abu elregal on 11/16/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var wetherTableView: UITableView!
    var wether = [Wether]()
    override func viewDidLoad() {
        wetherTableView.dataSource = self
        wetherTableView.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getWether()}
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wether.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = wetherTableView.dequeueReusableCell(withIdentifier: "WeatherTableViewCell") as! WeatherTableViewCell
        
        cell.dtLabel.text = "\(wether[indexPath.row].dt!)"
        cell.tempLabel.text = "\(wether[indexPath.row].temp!)"
        cell.temp_minLabel.text = "\(wether[indexPath.row].temp_min!)"
        cell.temp_maxLabel.text = "\(wether[indexPath.row].temp_max!)"
        cell.pressureLabel.text = "\(wether[indexPath.row].pressure!)"
        cell.sea_levelLabel.text = "\( wether[indexPath.row].sea_level!)"
        cell.grnd_levelLabel.text = "\( wether[indexPath.row].grnd_level!)"
        cell.humidityLabel.text = "\(wether[indexPath.row].humidity!)"
        cell.temp_kfLabel.text = "\(wether[indexPath.row].temp_kf!)"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200    }
    func getWether()
    {
        let wetherLink = "https://samples.openweathermap.org/data/2.5/forecast?id=524901&appid=b1b15e88fa797225412429c1c50c122a1"
        Alamofire.request(wetherLink).responseJSON { response in
             print ("the response is:\(response)")
            let result = response.result
             print ("the response is:\(response.value)")
            if let arrayOfDic = result.value as? Dictionary<String,AnyObject>{
                      print(arrayOfDic ["list"]as Any)
                let massagedata = arrayOfDic ["list"] as?[[String:Any]]
                
                print (massagedata!)
                for aDic in massagedata!{
                    let massagedata1 = massagedata! ["main"] as? [String:Any]
                    self.wether.append(Wether(
                        dt:5,
                        temp: massagedata1!["temp"]as! Double,
                        temp_min: massagedata1!["temp_min"]as! Double,
                        temp_max:  massagedata1!["temp_max"]as! Double,
                        pressure: massagedata1!["pressure"]as! Double,
                        sea_level: massagedata1!["sea_level"]as! Double,
                        grnd_level: massagedata1!["grnd_level"]as! Double,
                        humidity: massagedata1!["humidity"]as!Int,
                        temp_kf: massagedata1!["temp_kf"]as! Double
                    ))
                    self.wetherTableView.reloadData()
                    // print(self.wether.count)
                    
                }
                
            }
        }
    }
}



