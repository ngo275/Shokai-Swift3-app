//
//  ChapterCell.swift
//  ShokaiSwift
//
//  Created by ShuichiNagao on 2017/01/12.
//  Copyright © 2017 ShuichiNagao. All rights reserved.
//

import UIKit

class ChapterCell: UITableViewCell {

    @IBOutlet weak var chapterNum: UILabel!
    @IBOutlet weak var title: UILabel!
    
    enum Chapter: String {
        case one = "Swiftでプログラミング"
        case two = "関数"
        case three = "構造体"
        case four = "オプショナル"
        case five = "基本的なデータ型"
        case six = "パターン"
        case seven = "演算子"
        case eight = "クラスと継承"
        case nine = "メモリ管理"
        case ten = "プロトコル"
        case eleven = "拡張"
        case twelve = "エラー処理"
        case thirteen = "クロージャ"
        case forteen = "ジェネリクス"
        case fifteen = "C/Objective-Cとのデータ受け渡し"
        case sixteen = "Objective-Cとの連携"
        case seventeen = "コーディングとデバッグ"
        case column = "コラム"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func configureCell(index: Int) {
        let i = index + 1
        switch i {
        case 1:
            chapterNum.text = String(i)
            title.text = Chapter.one.rawValue
        case 2:
            chapterNum.text = String(i)
            title.text = Chapter.two.rawValue
        case 3:
            chapterNum.text = String(i)
            title.text = Chapter.three.rawValue
        case 4:
            chapterNum.text = String(i)
            title.text = Chapter.four.rawValue
        case 5:
            chapterNum.text = String(i)
            title.text = Chapter.five.rawValue
        case 6:
            chapterNum.text = String(i)
            title.text = Chapter.six.rawValue
        case 7:
            chapterNum.text = String(i)
            title.text = Chapter.seven.rawValue
        case 8:
            chapterNum.text = String(i)
            title.text = Chapter.eight.rawValue
        case 9:
            chapterNum.text = String(i)
            title.text = Chapter.nine.rawValue
        case 10:
            chapterNum.text = String(i)
            title.text = Chapter.ten.rawValue
        case 11:
            chapterNum.text = String(i)
            title.text = Chapter.eleven.rawValue
        case 12:
            chapterNum.text = String(i)
            title.text = Chapter.twelve.rawValue
        case 13:
            chapterNum.text = String(i)
            title.text = Chapter.thirteen.rawValue
        case 14:
            chapterNum.text = String(i)
            title.text = Chapter.forteen.rawValue
        case 15:
            chapterNum.text = String(i)
            title.text = Chapter.fifteen.rawValue
        case 16:
            chapterNum.text = String(i)
            title.text = Chapter.sixteen.rawValue
        case 17:
            chapterNum.text = String(i)
            title.text = Chapter.seventeen.rawValue
        default:
            chapterNum.text = "ref"
            title.text = Chapter.column.rawValue
        }
    }
}
