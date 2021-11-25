//
//  PdfTableViewController.swift
//  MobileApp(water_tracking)
//
//  Created by Ankit Lalotra on 11/3/21.
//

import UIKit
import WebKit


class PdfTableViewController: UITableViewController {


   
    
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        

        
        
        let path = Bundle.main.path(forResource: "Essay", ofType: "pdf")
        
        let url = URL(fileURLWithPath: path!)
        
        let request = URLRequest(url:url)
        
        webView.load(request)
        super.viewDidLoad()
    }
}
    
