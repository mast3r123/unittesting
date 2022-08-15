//
//  ViewController.swift
//  NetworkRequest
//
//  Created by master on 8/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) var button: UIButton!
    private var dataTask: URLSessionDataTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func buttonTapped() {
        searchForBook(terms: "out from boneville")
    }
    
    private func searchForBook(terms: String) {
        guard let encodedTerms = terms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: "https://itunes.apple.com/search?" + "media=ebook&term\(encodedTerms)") else {
            return
        }
        
        let request = URLRequest(url: url)
        dataTask = URLSession.shared.dataTask(with: request) { [weak self] (data: Data?, response: URLResponse?, error: Error?) -> Void in
            guard let self = self else { return }
            
            let decoded = String(data: data ?? Data() , encoding: .utf8)
            print("response \(String(describing: response))")
            print("data \(String(describing: decoded))")
            print("error \(String(describing: error))")
            
            DispatchQueue.main.async {[weak self] in
                guard let self = self else { return }
                self.dataTask = nil
                self.button.isEnabled = true
            }
        }
        self.button.isEnabled = false
        dataTask?.resume()
    }
}

