//
//  MainViewController.swift
//  Random_User
//
//  Created by Jervy Umandap on 7/18/24.
//

import UIKit

class MainViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // ViewModels
    var viewModel: MainViewModel = MainViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    func configView() {
        self.view.backgroundColor = .systemRed
        self.title = "Home"
        
        setupTableView()
    }

}
