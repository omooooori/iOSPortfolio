//
//  BrowserViewController.swift
//  VariousFunctionPlayGround
//
//  Created by ryosshim on 2024/03/26.
//

import UIKit
import WebKit

class BrowserViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "http://www.google.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        webView.navigationDelegate = self
    }
    
    @IBAction func onReloadTapped(sender: UIButton) {
        webView.reload()
    }
    
    @IBAction func onBackTapped(sender: UIButton) {
        webView.goBack()
    }
    
    @IBAction func onForwardTapped(sender: UIButton) {
        webView.goForward()
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Start")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Finish")
    }
}
