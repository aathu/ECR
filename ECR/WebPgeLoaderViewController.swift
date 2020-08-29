//
//  WebPgeLoaderViewController.swift
//  ECR
//  Created by Athira on 20/08/20.
//  Copyright © 2020 Toadfly. All rights reserved.
//
//
import UIKit
import WebKit

class WebPgeLoaderViewController: UIViewController {
    
    var tapGestureAlphaView = UITapGestureRecognizer()
    var tapGestureaboutUsView = UITapGestureRecognizer()

    @IBOutlet weak var webPageView: WKWebView!
    @IBOutlet weak var alphaView: UIView!
    @IBOutlet weak var aboutUsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alphaView.isHidden      =   true
        aboutUsView.isHidden    =   true
        
        //TapGesture for alphaView
        tapGestureAlphaView = UITapGestureRecognizer(target: self, action: #selector(self.alphaViewTapped(_:)))
        tapGestureAlphaView.numberOfTapsRequired = 1
        tapGestureAlphaView.numberOfTouchesRequired = 1
        alphaView.addGestureRecognizer(tapGestureAlphaView)
        alphaView.isUserInteractionEnabled = true
        
        tapGestureaboutUsView = UITapGestureRecognizer(target: self, action: #selector(self.alphaViewTapped(_:)))
        tapGestureaboutUsView.numberOfTapsRequired = 1
        tapGestureaboutUsView.numberOfTouchesRequired = 1
        aboutUsView.addGestureRecognizer(tapGestureaboutUsView)
        aboutUsView.isUserInteractionEnabled = true
        
        let myURL = URL(string:"https://p66-scr.t2server.com/")
        let myRequest = URLRequest(url: myURL!)
        webPageView.load(myRequest)
    }
    
    @IBAction func didTapOnAboutUsButton(_ sender: Any) {
        alphaView.isHidden      =   false
        aboutUsView.isHidden    =   false
    }
    
    @objc func alphaViewTapped(_ sender: UITapGestureRecognizer) {
        alphaView.isHidden      =   true
        aboutUsView.isHidden    =   true
    }

}

