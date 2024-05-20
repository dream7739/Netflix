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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

        //네비게이션바 타이틀 변경
        navigationItem.title = "저장한 콘텐츠 목록"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white,
            .font : UIFont.boldSystemFont(ofSize: 20)]
        
        //메인멘트 레이블
        mainMentLabel.text = "'나만의 자동 저장' 기능"
        mainMentLabel.font = .boldSystemFont(ofSize: 20)
        mainMentLabel.textColor = .white
        mainMentLabel.textAlignment = .center
        
        //서브멘트 레이블
        subMentLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해드립니다.\n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요"
        subMentLabel.textColor = .lightGray
        subMentLabel.textAlignment = .center
        subMentLabel.font = .systemFont(ofSize: 13)
        subMentLabel.numberOfLines = 0
        
        //포스터 이미지뷰
        posterImageView.image = UIImage(named: "dummy")
        posterImageView.contentMode = .scaleAspectFill
        
        //설정하기 버튼
        settingButton.backgroundColor = .blue
        settingButton.setTitle("설정하기", for: .normal)
        settingButton.tintColor = .white
        settingButton.layer.cornerRadius = 5
        
        //저장 가능한 콘텐츠 버튼
        storeAvailableButton.backgroundColor = .white
        storeAvailableButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        storeAvailableButton.tintColor = .black
        storeAvailableButton.layer.cornerRadius = 5
    }
    

   

}
