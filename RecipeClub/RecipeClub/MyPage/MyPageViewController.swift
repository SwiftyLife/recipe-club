//
//  MyPageViewController.swift
//  RecipeClub
//
//  Created by pro on 2021/07/18.
//

import UIKit

class MyPageViewController: UIViewController {
    
//MARK: - Properties
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var bookmarkIconView: UIView!
    @IBOutlet weak var addIconView: UIView!
    @IBOutlet weak var mylistIconView: UIView!
    @IBOutlet weak var idk: UIView!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomView.makeSpecificCornerRounded(cornerRadius: 20, maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner])
        setupUI()
    }

    //MARK: - Helpers
    func setupUI() {
        bookmarkIconView.makeCircular()
        addIconView.makeCircular()
        mylistIconView.makeCircular()
        idk.makeCircular()
    }
}
