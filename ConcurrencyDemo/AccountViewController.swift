//
//  AccountViewController.swift
//  ConcurrencyDemo
//
//  Created by 杜襄 on 2023/2/15.
//

import UIKit

class AccountViewController: UIViewController {
    
    private let accountLabel = UILabel(frame: .init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    
    private let model = AccountModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(accountLabel)
        accountLabel.numberOfLines = 10
        model.getAccountMemberData { [weak self] data in
            self?.accountLabel.text = "\(data)"
        }
    }
    
}
