//
//  AboutViewController.swift
//  BullsEye
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the WebView with game's info
        if let url = Bundle.main.url(forResource: "BullsEye",
                                     withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html",
                               textEncodingName: "UTF-8",
                               baseURL: baseURL)
            }
        }
    }
    
    // When close is pressed, returns to main screen
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
