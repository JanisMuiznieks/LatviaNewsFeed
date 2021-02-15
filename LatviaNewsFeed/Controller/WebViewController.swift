//
//  WebViewController.swift
//  LatviaNewsFeed
//
//  Created by janis.muiznieks on 12/02/2021.
//

import UIKit
import WebKit
class WebViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var webView: WKWebView!
    
    var urlString = String()
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "WEBKIT News"
        
        guard let url = URL(string: urlString) else {return}
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Start navigation")
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("navigation stopped")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
