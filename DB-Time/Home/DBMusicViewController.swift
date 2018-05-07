//
//  DBMusicViewController.swift
//  DB-Time
//
//  Created by Mazy on 2018/5/4.
//  Copyright © 2018 Mazy. All rights reserved.
//

import UIKit

class DBMusicViewController: DBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.random()
        navigationItem.title = "音乐"
        
        
        let leftBarItemButton = UIButton(type: .system)
        leftBarItemButton.frame.size = CGSize(width: 50, height: 30)
        leftBarItemButton.setImage(#imageLiteral(resourceName: "Category"), for: .normal)
        leftBarItemButton.imageView?.contentMode = .scaleAspectFit
        leftBarItemButton.addTarget(self, action: #selector(leftBarButtonItemDidTap), for: .touchUpInside)
        leftBarItemButton.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftBarItemButton)
        
        let label = UILabel()
        label.text = "谁改我的代码给我买iPhoneX!!!"
        label.textColor = UIColor.blue
        view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
    
    @objc func leftBarButtonItemDidTap() {
        if self.menuContainerViewController.sideMenuState == .leftMenuOpen {
            self.menuContainerViewController.setSideMenuState(state: .closed)
        } else {
            self.menuContainerViewController.setSideMenuState(state: .leftMenuOpen)
        }
    }
}
