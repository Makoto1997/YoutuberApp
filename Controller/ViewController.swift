//
//  ViewController.swift
//  YoutuberApp
//
//  Created by 田中誠 on 2020/09/01.
//  Copyright © 2020 田中誠. All rights reserved.
//

import UIKit
import SegementSlide

class ViewController: SegementSlideDefaultViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadData()
        defaultSelectedIndex = 0
        
    }

    override func segementSlideHeaderView() -> UIView {

    let headerView = UIImageView()

    headerView.isUserInteractionEnabled = true

    headerView.contentMode = .scaleAspectFill

    headerView.image = UIImage(named: "header")

    headerView.translatesAutoresizingMaskIntoConstraints = false

    let headerHeight: CGFloat

    if #available(iOS 11.0, *) {

    headerHeight = view.bounds.height/4+view.safeAreaInsets.top

    } else {

    headerHeight = view.bounds.height/4+topLayoutGuide.length

    }

    headerView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true

    return headerView

    }

    override var titlesInSwitcher: [String] {

    return ["ヒカキン", "柴犬小春", "気まぐれクック", "谷やん", "大蛇丸", "ニュース"]

    }
    
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {



    switch index {

    case 0:

    return Page1ViewController()

    case 1:

    return Page2ViewController()

    case 2:

    return Page3ViewController()

    case 3:

    return Page4ViewController()

    case 4:

    return Page5ViewController()

    case 5:

    return Page6ViewController()

    default:

    return Page1ViewController()

    }





    }
}

