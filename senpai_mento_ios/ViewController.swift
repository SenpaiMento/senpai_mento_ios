//
//  ViewController.swift
//  senpai_mento_ios
//
//  Created by 髙橋翔太 on 2018/01/30.
//  Copyright © 2018年 SenpaiMento. All rights reserved.
//

import UIKit



class ViewController: UIViewController ,
    UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var jibunImage: UIImageView!
    
    @IBOutlet weak var hopeName: UITextView!
    
    
    

    @IBOutlet weak var senpaiTable: UITableView!
    
    @IBOutlet weak var dohaiTable: UITableView!
    
    

    
    let prefectureImages: NSArray = [
        "img0","img1",
        "img2","img3",
        "img4","img5",
        "img6","img7"]
    
    let collegeNames: NSArray = [
        "北海道大学","青森大学",
        "秋田大学","岩手大学",
        "山形大学","東北大学",
        "福島大学","新潟大学"]
    
    let senpaiNames: NSArray = [
        "北国　邦夫","森青　郁美",
        "田秋　誠","手岩　瞳",
        "形山　秀樹","東　豚平",
        "島田　福","新　干潟"]
    
    

    override func viewDidLoad() {
        
        
        
        
        
        let jibun = UIImage(named: "boy")
        
        jibunImage.image = jibun
        
        hopeName.text = "東北大学"
        
        
        
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   //Table Viewのセルの数を指定
    func tableView(_ table: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return prefectureImages.count
    }
    
    //各セルの要素を設定する
    func tableView(_ table: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell
        
        if table.tag == 1{
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
         cell = table.dequeueReusableCell(withIdentifier: "senpaiCell",
                                             for: indexPath)
        
        let prefectureImage = UIImage(named: prefectureImages[indexPath.row] as! String)
        
        // Tag番号 1 で UIImageView インスタンスの生成
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = prefectureImage
        
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = cell.viewWithTag(2) as! UILabel
        label1.text = String(describing: collegeNames[indexPath.row])
        // Tag番号 ３ で UILabel インスタンスの生成
        let label2 = cell.viewWithTag(3) as! UILabel
        label2.text = String(describing: senpaiNames[indexPath.row])
    
        } else {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
         cell = table.dequeueReusableCell(withIdentifier: "dohaiCell",
                                             for: indexPath)
        
        let prefectureImage = UIImage(named: prefectureImages[indexPath.row] as! String)
        
        // Tag番号 1 で UIImageView インスタンスの生成
        let imageView = cell.viewWithTag(11) as! UIImageView
        imageView.image = prefectureImage
        
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = cell.viewWithTag(12) as! UILabel
        label1.text = String(describing: collegeNames[indexPath.row])
        // Tag番号 ３ で UILabel インスタンスの生成
        let label2 = cell.viewWithTag(13) as! UILabel
        label2.text = String(describing: senpaiNames[indexPath.row])

        }
        
        
        return cell
    
        
}
    
    // Cell の高さを6０にする
    func tableView(_ table: UITableView,
    heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

    @IBAction func toMyprofiel(_ sender: Any) {
        
        // セグエを使用して画面を遷移
        performSegue(withIdentifier: "myProfiel", sender: nil)
        
    }
    
    
    
    
    
    
    
    
    
}






