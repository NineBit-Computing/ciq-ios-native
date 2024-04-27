//
//  ContentView.swift
//  compact-iq
//
//  Created by Surbhi Karmahe Jamaiyar on 20/04/24.
//

import SwiftUI
import UIKit
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://ninebit.in")!)
//            .edgesIgnoringSafeArea(.all)

    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView  {
        let wkwebView = WKWebView()
        let request = URLRequest(url: url)
        wkwebView.load(request)
        return wkwebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}

//class ViewController: UIViewController, WKUIDelegate {
//    
//    var webView: WKWebView!
//    
//    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        webView = WKWebView(frame: .zero, configuration: webConfiguration)
//        webView.uiDelegate = self
//        view = webView
//    }
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let myURL = URL(string:"https://www.apple.com")
//        let myRequest = URLRequest(url: myURL!)
//        webView.load(myRequest)
//    }
//}


#Preview {
    ContentView()
}
