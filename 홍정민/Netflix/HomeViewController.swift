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
    
    @IBOutlet var netflixLogoImageView: UIImageView!
    @IBOutlet var top10BadgeImageView: UIImageView!
    @IBOutlet var newEpisodeLabel: UILabel!
    @IBOutlet var directPlayLabel: UILabel!
    @IBOutlet var newSeriesLabel: UILabel!
    
    let imageArray = ["극한직업", "노량", "더퍼스트슬램덩크", "도둑들", "베테랑", "아바타", "암살", "서울의봄", "스즈메의문단속", "신과함께죄와벌", "범죄도시3", "어벤져스엔드게임", "왕의남자", "육사오", "해운대", "부산행", "밀수"]
    
    @IBAction func playButtonClicked(_ sender: UIButton) {
        //4개의 포스터 이미지 변경
        var shuffledImage: [String] = []
        for _ in 0...3 {
            shuffledImage.append(imageArray.randomElement()!)
        }
        posterImageView.image = UIImage(named: shuffledImage[0])
        hotContentImageView1.image = UIImage(named: shuffledImage[1])
        hotContentImageView2.image = UIImage(named: shuffledImage[2])
        hotContentImageView3.image = UIImage(named: shuffledImage[3])
        
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black

        //네비게이션바 타이틀 변경
        navigationItem.title = "홍정민님"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white,
            .font : UIFont.boldSystemFont(ofSize: 20)]
        
        //메인 포스터 이미지
        posterImageView.image = UIImage(named: "아바타")
        posterImageView.contentMode = .scaleAspectFill
        posterImageView.layer.cornerRadius = 15
        
        //포스터 하단 추천 키워드 레이블
        recommandTagLabel.text = "응원하고픈 · 흥미진진 · 사극 · 전투 · 한국작품"
        recommandTagLabel.textAlignment = .center
        recommandTagLabel.textColor = .white
        recommandTagLabel.font = .systemFont(ofSize: 15)
        
        //지금 뜨는 컨텐츠 레이블
        hotContentLabel.text = "지금 뜨는 컨텐츠"
        hotContentLabel.textColor = .white
        hotContentLabel.font = .boldSystemFont(ofSize: 20)
        hotContentLabel.textAlignment = .left
        
        //재생 버튼
        playButton.setTitle("재생", for: .normal)
        playButton.setImage(.play, for: .normal)
        playButton.backgroundColor = .white
        playButton.tintColor = .black
        playButton.layer.cornerRadius = 5
        
        //내가 찜한 리스트 버튼
        favoriteListButton.setTitle("내가 찜한 리스트", for: .normal)
        favoriteListButton.setImage(UIImage(systemName: "plus"), for: .normal)
        favoriteListButton.backgroundColor = .darkGray
        favoriteListButton.tintColor = .white
        favoriteListButton.layer.cornerRadius = 5
        
        //지금 뜨는 콘텐츠 이미지뷰1
        hotContentImageView1.image = UIImage(named: "알라딘")
        hotContentImageView1.contentMode = .scaleAspectFill
        hotContentImageView1.layer.cornerRadius = 10
        
        //지금 뜨는 콘텐츠 이미지뷰2
        hotContentImageView2.image = UIImage(named: "오펜하이머")
        hotContentImageView2.contentMode = .scaleAspectFill
        hotContentImageView2.layer.cornerRadius = 10
        
        //지금 뜨는 콘텐츠 이미지뷰3
        hotContentImageView3.image = UIImage(named: "스즈메의문단속")
        hotContentImageView3.contentMode = .scaleAspectFill
        hotContentImageView3.layer.cornerRadius = 10
        
        //새로운 에피소드 레이블
        newEpisodeLabel.text = "새로운에피소드"
        newEpisodeLabel.textColor = .white
        newEpisodeLabel.backgroundColor = .red
        newEpisodeLabel.layer.cornerRadius = 5
        newEpisodeLabel.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        newEpisodeLabel.clipsToBounds = true
        newEpisodeLabel.textAlignment = .center
        newEpisodeLabel.font = .boldSystemFont(ofSize: 12)
        
        //지금 시청하기 레이블
        directPlayLabel.text = "지금 시청하기"
        directPlayLabel.textColor = .red
        directPlayLabel.backgroundColor = .white
        directPlayLabel.textAlignment = .center
        directPlayLabel.font = .boldSystemFont(ofSize: 12)

        //새로운 시리즈 레이블
        newSeriesLabel.text = "새로운시리즈"
        newSeriesLabel.textColor = .white
        newSeriesLabel.backgroundColor = .red
        newSeriesLabel.layer.cornerRadius = 5
        newSeriesLabel.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        newSeriesLabel.clipsToBounds = true
        newSeriesLabel.textAlignment = .center
        newSeriesLabel.font = .boldSystemFont(ofSize: 14)
    }
    
    
    
    
}
