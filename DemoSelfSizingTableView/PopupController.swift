//
//  PopupController.swift
//  DemoSelfSizingTableView
//
//  Created by Jahid Hasan Polash on 10/6/18.
//  Copyright © 2018 Jahid Hasan Polash. All rights reserved.
//

import UIKit

class PopupController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: SelfSizedTableView!
    @IBOutlet weak var btnClose: UIButton!
    
    var inputs = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.maxHeight = 375
        tableView.reloadData()
    }
    
    @IBAction func btnCloseTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Input \(indexPath.row + 1)"
        cell.detailTextLabel?.text = inputs[indexPath.row]
        return cell
    }
}
