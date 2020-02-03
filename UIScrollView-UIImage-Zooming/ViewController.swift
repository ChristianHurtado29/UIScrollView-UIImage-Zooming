//
//  ViewController.swift
//  UIScrollView-UIImage-Zooming
//
//  Created by Christian Hurtado on 2/3/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var subwayMap: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        
        // provide a maximumZoomScale of greater than 1
        // 1 is the default value, if not set won't zoom
       
       
       // step 2: set the maximumZoomScale greater than the default of 1
        // provide a maximumZoomDcale of greater than 1
        // 1 is the default value, if not set won't zoom
        scrollView.maximumZoomScale = 5.0
    }


}
// step 1: return the view for zooming
extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return subwayMap
    }
}
