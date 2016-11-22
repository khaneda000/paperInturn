//
//  ViewController.swift
//  paperStory
//
//  Created by 寺下昇希 on 2016/11/21.
//  Copyright © 2016年 寺下昇希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //画像データをインスタンス化 型はUIImage
        let imageA: UIImage! = UIImage(named: "Image1-a")
        let imageB: UIImage! = UIImage(named: "Image1-b")
        //コマ送りに使う画像データの配列をセット
        image.animationImages = [imageA, imageB]
        // 【3】 コマ送りの間隔を設定
        image.animationDuration = 1
        // 【4】 コマ送りのアニメーションを開始
        image.startAnimating()
        
        
    }
    var nowPage = 1
    
    func changePage(nowPage: Int) {
        image.stopAnimating()
        switch nowPage {
        case 1:
            image.animationImages = [UIImage(named: "Image1-a")!, UIImage(named: "Image1-b")!]
        case 2:
            image.animationImages = [UIImage(named: "Image2-a")!, UIImage(named: "Image2-b")!]
        case 3:
            image.animationImages = [UIImage(named: "Image3-a")!, UIImage(named: "Image3-b")!]
        case 4:
            image.animationImages = [UIImage(named: "Image4-a")!, UIImage(named: "Image4-b")!]
        default: break
        }
        image.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextTap() {
        if nowPage<4 {
        nowPage += 1
        }
        print("\(nowPage)ページ目です。")
        changePage(nowPage: nowPage)
    }


    @IBAction func backTap() {
        if nowPage>1 {
            nowPage -= 1
        }
        print("\(nowPage)ページ目です。")
        changePage(nowPage: nowPage)

    }
    
    

    

}

