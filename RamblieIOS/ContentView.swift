//
//  ContentView.swift
//  RamblieIOS
//
//  Created by Timeka Cobb on 3/18/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    private let urlString: String = "https://www.ramblie.com"
    
    var body: some View {
        Spacer()
        Spacer()
        Spacer()
       
                Image("ramlogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60.0, height: 200.0)
                    .cornerRadius(30)
       
            
          
        VStack(spacing: 80) {
            Spacer()
            // Normal WebView
            WebView(url: URL(string: urlString)!)
                .frame(height: 500.0)
                .cornerRadius(10)
            Spacer()
            
            }.background(Color.green)
    }
}

// WebView Struct
struct WebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
