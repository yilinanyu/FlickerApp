//
//  PhotoViewController.swift
//  FlickerApp
//
//  Created by Lina on 3/27/16.
//  Copyright © 2016 Lina. All rights reserved.
//


import UIKit

class PhotoViewController: UIViewController {
    
    var photoInfo : Dictionary<String, String>!
    @IBOutlet var photoImageView : UIImageView?
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.photoInfo = ["title" : ""]
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = self.photoInfo["title"]
        self.photoImageView!.setImageWithURL(NSURL(string: self.photoInfo["url_z"]!))
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

}
