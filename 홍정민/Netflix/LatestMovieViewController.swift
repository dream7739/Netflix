//
//  LatestMovieViewController.swift
//  Netflix
//
//  Created by 홍정민 on 5/16/24.
//

import UIKit

class LatestMovieViewController: UIViewController {

    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var releaseButton: UIButton!
    @IBOutlet var popularContentButton: UIButton!
    @IBOutlet var top10SeriesButton: UIButton!
    @IBOutlet var searchResultMainLabel: UILabel!
    @IBOutlet var searchResultSubLabel: UILabel!
    
    @IBAction func themeButtonClicked(_ sender: UIButton) {
        switch sender {
        case releaseButton:
            releaseButton.tintColor = .black
            releaseButton.backgroundColor = .white
            popularContentButton.tintColor = .white
            popularContentButton.backgroundColor = .clear
            top10SeriesButton.tintColor = .white
            top10SeriesButton.backgroundColor = .clear
            searchResultMainLabel.text = "공개예정입니다!!"
            searchResultSubLabel.text = "5/20일 개봉박두!!!"
            break
        case popularContentButton:
            popularContentButton.tintColor = .black
            popularContentButton.backgroundColor = .white
            releaseButton.tintColor = .white
            releaseButton.backgroundColor = .clear
            top10SeriesButton.tintColor = .white
            top10SeriesButton.backgroundColor = .clear
            searchResultMainLabel.text = "인기콘텐츠는 눈물의여왕!"
            searchResultSubLabel.text = "눈물의여왕은 끝이 날수록 재미가 없어요"
            break
        case top10SeriesButton:
            top10SeriesButton.tintColor = .black
            top10SeriesButton.backgroundColor = .white
            popularContentButton.tintColor = .white
            popularContentButton.backgroundColor = .clear
            releaseButton.tintColor = .white
            releaseButton.backgroundColor = .clear
            searchResultMainLabel.text = "TOP10시리즈 영광입니다!"
            searchResultSubLabel.text = "정주행 해주시기 바라요"
            break
        default:
            break
        }
        
    }
    
    
    @IBAction func searchTextFieldEnterClicked(_ sender: Any) {
        print("키보드 내려주세요")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        //네비게이션바 타이틀 변경
        navigationItem.title = "NEW & HOT 검색"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white,
            .font : UIFont.boldSystemFont(ofSize: 20)]
        
        //텍스트필드 설정
        searchTextField.placeholder = "게임, 시리즈, 영화를 검색하세요..."
        searchTextField.keyboardType = .default
        searchTextField.tintColor = .lightGray
        
        let leftImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        leftImage.image = UIImage(systemName: "magnifyingglass")
        searchTextField.leftView = leftImage
        searchTextField.leftViewMode = .always
        
        //공개 예정 버튼 설정
        releaseButton.setImage(UIImage(named: "blue"), for: .normal)
        releaseButton.tintColor = .white
        releaseButton.layer.cornerRadius = 20
        releaseButton.setTitle("공개예정", for: .normal)
        releaseButton.configuration?.imagePadding = 3
        releaseButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer {
            incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 11)
            return outgoing
        }
        
        //모두의 인기 콘텐츠 버튼 설정
        popularContentButton.setImage(UIImage(named: "turquoise"), for: .normal)
        popularContentButton.tintColor = .white
        popularContentButton.layer.cornerRadius = 18
        popularContentButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        popularContentButton.configuration?.imagePadding = 3
        popularContentButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer {
            incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 11)
            return outgoing
        }
        
        //TOP10 시리즈 버튼 설정
        top10SeriesButton.setImage(UIImage(named: "pink"), for: .normal)
        top10SeriesButton.tintColor = .white
        top10SeriesButton.layer.cornerRadius = 18
        
        top10SeriesButton.setTitle("TOP 10 시리즈", for: .normal)
        top10SeriesButton.configuration?.imagePadding = 3
        top10SeriesButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer {
            incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 11)
            return outgoing
        }
        
        //버튼 클릭 시 변경되는 메인멘트 레이블
        searchResultMainLabel.textColor = .white
        searchResultMainLabel.font = .boldSystemFont(ofSize: 25)
        searchResultMainLabel.textAlignment = .center
        searchResultMainLabel.text = "이런! 찾으시는 작품이 없습니다!"
        
        //버튼 클릭 시 변경되는 서브멘트 레이블
        searchResultSubLabel.textColor = .white
        searchResultSubLabel.font = .boldSystemFont(ofSize: 13)
        searchResultSubLabel.textAlignment = .center
        searchResultSubLabel.text = "다른 영화, 배우, 장르를 검색해보세요"

        
        
    }
    

   

}

