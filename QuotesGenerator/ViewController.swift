//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 준현의 Macbook Pro on 2022/02/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "명언 1", names: "사람 1"),
        Quote(contents: "명언 2", names: "사람 2"),
        Quote(contents: "명언 3", names: "사람 3"),
        Quote(contents: "명언 4", names: "사람 4"),
        Quote(contents: "명언 5", names: "사람 5")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5)) // 0 ~ 4 사이의 난수 생성
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.names
        
    }
    
}

