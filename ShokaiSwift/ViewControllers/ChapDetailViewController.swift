//
//  ChapDetailViewController.swift
//  ShokaiSwift
//
//  Created by ShuichiNagao on 2017/01/12.
//  Copyright © 2017 ShuichiNagao. All rights reserved.
//

import UIKit

class ChapDetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var chapNum: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        readFile(chapNumber: chapNum)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func readFile(chapNumber n: Int) {
        if let filePath = Bundle.main.path(forResource: "chap\(String(n))", ofType: "txt") {
            do {
                let str = try String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
                textView.text = str
            }
            catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }

}
