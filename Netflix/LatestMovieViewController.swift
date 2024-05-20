//
//  LatestMovieViewController.swift
//  Netflix
//
//  Created by 홍정민 on 5/16/24.
//

import UIKit

class LatestMovieViewController: UIViewController {

    //plain ios15 이상
    //default ios15 미만(legacy)
    //iOS15+에서 작성하는 코드가 다름
    //즉, default 스타일 다루는 버튼 코드와, plain 스타일을 다루는 버튼 코드가 다름

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
        
        /**==================수업내용==================== **/
        //tint color - 텍스트필드 커서 깜빡거릴 때 색 변경 등
        //애플의 글로벌 tint color는 파란색
        //아래 코드는 defualt만 버튼 스타일 상 존재하지 않는 것(default)
        //Image Rendering Mode : template vs original
        //original: 원본 이미지, template: 형태만 따와지는 형태
        
        //releaseButton.titleLabel?.font = .boldSystemFont(ofSize: 30)
        
        //여기에서만 오리지널 이미지이기 때문에 다른 곳에서는 옵션 지정 해주어야 함
        //무조건 오리지널 이미지로 보여야 하는 것일 때는 asset - render as original
        let image = UIImage(named: "blue")?.withRenderingMode(.alwaysOriginal)
        releaseButton.setImage(image, for: .normal)
        
        //면과 선을 따서 색을 넣어줘야 한다 - template image
        let image2 = UIImage(systemName: "star")
        releaseButton.setImage(image2, for: .normal)
        
        /**===================================================== **/
        
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

