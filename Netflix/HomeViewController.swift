//
//  HomeViewController.swift
//  Netflix
//
//  Created by 홍정민 on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var recommandTagLabel: UILabel!
    @IBOutlet var hotContentLabel: UILabel!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var favoriteListButton: UIButton!
    
    @IBOutlet var hotContentImageView1: UIImageView!
    @IBOutlet var hotContentImageView2: UIImageView!
    @IBOutlet var hotContentImageView3: UIImageView!
    
    //outletcollection 사용
    @IBOutlet var hotContentImageList: [UIImageView]!
    
    @IBOutlet var netflixLogoImageView: UIImageView!
    @IBOutlet var top10BadgeImageView: UIImageView!
    @IBOutlet var newEpisodeLabel: UILabel!
    @IBOutlet var directPlayLabel: UILabel!
    @IBOutlet var newSeriesLabel: UILabel!
    
    private let imageArray = ["극한직업", "노량", "더퍼스트슬램덩크",
                              "도둑들", "베테랑", "아바타", "암살",
                              "서울의봄", "스즈메의문단속", "신과함께죄와벌",
                              "범죄도시3", "어벤져스엔드게임", "왕의남자",
                              "육사오", "해운대", "부산행", "밀수"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        designNavigationBar(titleText: "홍정민님")
        
        //메인 포스터 이미지
        designImageView(posterImageView, imageName: "아바타", cornerValue: 15)
        
        //지금 뜨는 콘텐츠 이미지뷰1
        designImageView(hotContentImageView1, imageName: "알라딘", cornerValue: 10)
        
        //지금 뜨는 콘텐츠 이미지뷰2
        designImageView(hotContentImageView2, imageName: "오펜하이머", cornerValue: 10)
        
        //지금 뜨는 콘텐츠 이미지뷰3
        designImageView(hotContentImageView3, imageName: "스즈메의문단속", cornerValue: 10)
        
        //포스터 하단 추천 키워드 레이블
        designLabel(recommandTagLabel, labelText: "응원하고픈 · 흥미진진 · 사극 · 전투 · 한국작품", textColor: .white, alignmentAttribute:  .center, fontAttribute: .systemFont(ofSize: 15))
        
        //지금 뜨는 컨텐츠 레이블
        designLabel(hotContentLabel, labelText: "지금 뜨는 컨텐츠", textColor: .white, alignmentAttribute: .left, fontAttribute: .boldSystemFont(ofSize: 20))
        
        //재생 버튼
        designButton(playButton, titleText: "재생", buttonImage: "play", buttonColor: .white, tintColor: .black, cornerValue: 5)

        //내가 찜한 리스트 버튼
        designButton(favoriteListButton, titleText: "내가 찜한 리스트", buttonImage: "plus", buttonColor: .darkGray, tintColor: .white, cornerValue: 5)
        
        //새로운 에피소드 레이블
        designLabel(newEpisodeLabel, labelText: "새로운에피소드", textColor: .white, alignmentAttribute: .center, fontAttribute: .boldSystemFont(ofSize: 12))
        
        //지금 시청하기 레이블
        designLabel(directPlayLabel, labelText: "지금 시청하기", textColor: .red, alignmentAttribute: .center, fontAttribute: .boldSystemFont(ofSize: 12))
        
        //새로운 시리즈 레이블
        designLabel(newSeriesLabel, labelText: "새로운시리즈", textColor: .white, alignmentAttribute: .center, fontAttribute: .boldSystemFont(ofSize: 14))
        
    }
    
    //재생 버튼 클릭 시 4개의 포스터 이미지 변경
    @IBAction func playButtonClicked(_ sender: UIButton) {
        var shuffledImage: [String] = []
        
        shuffledImage.append(imageArray.randomElement()!)
        
        while shuffledImage.count < 4 {
            var randomImage = imageArray.randomElement()!
            if !shuffledImage.contains(randomImage){
                shuffledImage.append(randomImage)
            }
        }
        
        //재생 버튼 클릭 시 포스터 이미지 변경
        for i in 0...3 {
            hotContentImageList[i].image = UIImage(named: shuffledImage[i])
        }
        
        //지금 뜨는 컨텐츠 하단 넷플릭스 로고 등 이미지 랜덤 변경
        var shuffledBadge: [Bool] = []
        for _ in 0...4 {
            shuffledBadge.append(Bool.random())
        }
        
        netflixLogoImageView.isHidden = shuffledBadge[0]
        top10BadgeImageView.isHidden = shuffledBadge[1]
        newEpisodeLabel.isHidden = shuffledBadge[2]
        directPlayLabel.isHidden = shuffledBadge[3]
        newSeriesLabel.isHidden = shuffledBadge[4]
        
    }
    
    private func designNavigationBar(titleText: String){
        navigationItem.title = titleText
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white,
                                                                   .font : UIFont.boldSystemFont(ofSize: 20)]
    }
    
    private func designImageView(_ sender: UIImageView, imageName: String, cornerValue: CGFloat){
        sender.image = UIImage(named: imageName)
        sender.contentMode = .scaleAspectFill
        sender.layer.cornerRadius = cornerValue
    }
    
    private func designLabel(_ sender: UILabel, labelText: String, textColor: UIColor, alignmentAttribute:  NSTextAlignment, fontAttribute: UIFont){
        sender.text = labelText
        sender.textAlignment = alignmentAttribute
        sender.textColor = textColor
        sender.font = fontAttribute
        
        if sender == newSeriesLabel || sender == newEpisodeLabel {
            sender.backgroundColor = .red
            sender.layer.cornerRadius = 5
            sender.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            sender.clipsToBounds = true
        }else if sender == directPlayLabel {
            sender.backgroundColor = .white
            
        }
    }

    private func designButton(_ sender: UIButton, titleText: String, buttonImage: String, buttonColor: UIColor, tintColor: UIColor, cornerValue: CGFloat){
        sender.setTitle(titleText, for: .normal)
        sender.setImage(UIImage(named: buttonImage), for: .normal)
        sender.backgroundColor = buttonColor
        sender.tintColor = tintColor
        sender.layer.cornerRadius = cornerValue
    }
}
