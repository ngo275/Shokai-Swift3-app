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
    override func viewDidLoad() {
        super.viewDidLoad()

        readFile()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func readFile() {
        if let filePath = Bundle.main.path(forResource: "chap1", ofType: "txt") {
            do {
                let str = try String(contentsOfFile: filePath,
                                     encoding: String.Encoding.utf8)
                textView.text = str
                
            }
            catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }

}
