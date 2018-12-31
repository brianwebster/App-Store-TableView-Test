//
//  ViewController.swift
//  App Store TableView Test
//
//  Created by Brian Webster on 12/30/18.
//  Copyright © 2018 Brian Webster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
//    tableView.reloadData()
  }


}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
    
    return cell
  }
  
  
}

extension ViewController: UITableViewDelegate {
  
}

class CustomCell: UITableViewCell {
  @IBOutlet weak var cellView: UIView!
  @IBOutlet weak var cellImage: UIImageView!
  
  override func draw(_ rect: CGRect) {
    cellView.layer.shadowColor = UIColor.darkGray.cgColor
    cellView.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
    cellView.layer.shadowRadius = 5
    cellView.layer.shadowOpacity = 1
    
    cellImage.layer.cornerRadius = 10
  }
  
}

