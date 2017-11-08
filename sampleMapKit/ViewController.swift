//
//  ViewController.swift
//  sampleMapKit
//
//  Created by 濱野将士 on 2017/11/08.
//  Copyright © 2017年 Masashi Hamano. All rights reserved.
//

import UIKit
import MapKit //地図用のフレームワーク読み込み

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //ITパークを中心とした地図を表示
        
        // 1.中心となる場所の座標オブジェクトを作成
        let coodinate = CLLocationCoordinate2DMake(10.328972, 123.906137)
        
        // 2.縮尺を設定
        let span = MKCoordinateSpanMake(0.005, 0.005)
        
        // 3.範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(coodinate, span)

        // 4.Mapviewに範囲オブジェクトを設定
        mapView.setRegion(region, animated: true)
        
        
        
        
        
        
        //アヤラ(中心)にピンを立てる
        
        //1.pinオブジェクトを生成
//        let centerPin = MKPointAnnotation()
        
        //2.pinの座標を設定
      //  centerPin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
//        centerPin.coordinate = coodinate
        
        //3.タイトル、サブタイトルを設定(タップしたときに出る吹き出しの情報)
        
//        centerPin.title = "アヤラショッピングモール"
//        centerPin.subtitle = "なんでもあるよ"
        
        //4.mapViewにPinを追加
//        mapView.addAnnotation(centerPin)
        
        //★TODO:ピンをもう一つ立ててみましょう
        
        //1.1pinオブジェクトを生成
        let secondcenterPin = MKPointAnnotation()
        
        //2.1pinの座標を設定
        secondcenterPin.coordinate = CLLocationCoordinate2DMake(10.3223134, 123.9231346)
  
        //3.1タイトル、サブタイトルを設定(タップしたときに出る吹き出しの情報)
        secondcenterPin.title = "central post pffice"
        secondcenterPin.subtitle = "郵便局"
        
        //4.1mapViewにPinを追加
        mapView.addAnnotation(secondcenterPin)
        
        
        
        
        //★宿題：初期表示の地図上に3本ピンを立てましょう
        //中心、縮尺変更OK
        //宿題ができたらGithubへPush
        
        //pinオブジェクトを生成
        let thirdcenterPin = MKPointAnnotation()
        
        thirdcenterPin.coordinate = CLLocationCoordinate2DMake(10.330761, 123.905601)
        
        thirdcenterPin.title = "Coffee Bean & Tea Leaf"
        thirdcenterPin.subtitle = "wifi使える(メンバーシップカード（195peso）が必要、電源無し)"
        
        mapView.addAnnotation(thirdcenterPin)
        
        //pinオブジェクトを生成
        let forthcenterPin = MKPointAnnotation()
        
        forthcenterPin.coordinate = CLLocationCoordinate2DMake(10.327611, 123.906636)
        
        forthcenterPin.title = "Coffee Bean & Tea Leaf"
        forthcenterPin.subtitle = "メンバーシップカード（195peso）が必要、電源1箇所のみ"
        
        mapView.addAnnotation(forthcenterPin)
        
        //pinオブジェクトを生成
        let fifthcenterPin = MKPointAnnotation()
        
        fifthcenterPin.coordinate = CLLocationCoordinate2DMake(10.329421, 123.905311)
        
        fifthcenterPin.title = "Bo’s Coffee"
        fifthcenterPin.subtitle = "1コーヒーにつき1パスワード(2時間まで)"
        
        mapView.addAnnotation(fifthcenterPin)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

