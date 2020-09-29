//
//  ViewController.swift
//  Multiscreen_app
//
//  Created by DDDD on 27/09/2020.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, UITextFieldDelegate, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaultTitle()
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWebView))
        let delete = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(deleteWebView))
        
        navigationItem.rightBarButtonItems = [delete, add]
    }
    
    @IBAction func adressBar(_ sender: Any) {
    }
    
    @IBOutlet var stackView: UIStackView!

    func setDefaultTitle() {
        title = "Multiscreen"
    }
    
    @objc func addWebView() {
        let webView = WKWebView()
        webView.navigationDelegate = self
        
        stackView.addArrangedSubview(webView)
        
        let url = URL(string: "https://www.apple.com")!
        webView.load(URLRequest(url: url))
    }
    
    @objc func deleteWebView() {
        
    }
    
    
}
