//
//  ViewController.swift
//  ViewRotation
//
//  Created by Admin on 17.02.17.
//  Copyright © 2017 Intehno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showActivity(self.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews()
    {
        for i in 0 ... self.view.subviews.count - 1
        {
            self.view.subviews[i].setNeedsUpdateConstraints()
        }
    }
    
    func showActivity(_ view: UIView)
    {
        let testView = UIView()
        testView.backgroundColor = UIColor.green
        testView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(testView)
        
        let topConstraint = NSLayoutConstraint(item: testView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: testView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
        let leadindConstraint = NSLayoutConstraint(item: testView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let trailingConstraint = NSLayoutConstraint(item: testView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        testView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([topConstraint, bottomConstraint, leadindConstraint, trailingConstraint])
        
        showSecondActivity(testView)
    }
    
    func showSecondActivity(_ view: UIView)
    {
        let testView2 = UIView()
        testView2.backgroundColor = UIColor.gray
        view.addSubview(testView2)
        
        let heightConstraint = NSLayoutConstraint(item: testView2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        let widthConstraint = NSLayoutConstraint(item: testView2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        
        let xConstraint = NSLayoutConstraint(item: testView2, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let yConstraint = NSLayoutConstraint(item: testView2, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        
        testView2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([xConstraint, yConstraint, heightConstraint, widthConstraint])
    }



}

