//
//  StoredMovieViewController.swift
//  Netflix
//
//  Created by 홍정민 on 5/16/24.
//

import UIKit

class StoredMovieViewController: UIViewController {
    @IBOutlet var mainMentLabel: UILabel!
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var subMentLabel: UILabel!
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var storeAvailableButton: UIButton!
    
    private let mainText = "'나만의 자동 저장' 기능"
    private let subText = "취향에 맞는 영화와 시리즈를 자동으로 저장해드립니다.\n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        //네비게이션바 타이틀 변경
        designNavigationBar(titleText: "저장한 콘텐츠 목록")
        
        //메인멘트 레이블
        designLabel(mainMentLabel, labelText: mainText, textColor: .white, alignmentAttribute: .center, fontAttribute: .boldSystemFont(ofSize: 20))
        
        //서브멘트 레이블
        designLabel(subMentLabel, labelText: subText, textColor: .lightGray, alignmentAttribute: .center, fontAttribute: .systemFont(ofSize: 13))
        
        //포스터 이미지뷰
        designImageView(posterImageView, imageName: "dummy")
        

        //설정하기 버튼
        designButton(settingButton, titleText: "설정하기", buttonColor: .blue, tintColor: .white, cornerValue: 5)
        
        //저장 가능한 콘텐츠 버튼
        designButton(storeAvailableButton, titleText: "저장 가능한 콘텐츠 살펴보기", buttonColor: .white, tintColor: .black, cornerValue: 5)
    }
    
    fileprivate func designNavigationBar(titleText: String){
        navigationItem.title = titleText
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white,
                                                                   .font : UIFont.boldSystemFont(ofSize: 20)]
    }
    
    fileprivate func designLabel(_ sender: UILabel, labelText: String, textColor: UIColor, alignmentAttribute:  NSTextAlignment, fontAttribute: UIFont){
        sender.text = labelText
        sender.textAlignment = alignmentAttribute
        sender.textColor = textColor
        sender.font = fontAttribute
        sender.numberOfLines = 0
    }
    
    fileprivate func designImageView(_ sender: UIImageView, imageName: String){
        sender.image = UIImage(named: imageName)
        sender.contentMode = .scaleAspectFill
    }
    
    fileprivate func designButton(_ sender: UIButton, titleText: String, buttonColor: UIColor, tintColor: UIColor, cornerValue: CGFloat){
        sender.setTitle(titleText, for: .normal)
        sender.backgroundColor = buttonColor
        sender.tintColor = tintColor
        sender.layer.cornerRadius = cornerValue
        
    }
    
    
}
