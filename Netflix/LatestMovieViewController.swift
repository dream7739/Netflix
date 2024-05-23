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
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func searchTextFieldEnterClicked(_ sender: Any) {
        print("키보드 내려주세요")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        //네비게이션바 타이틀 변경
        designNavigationBar(titleText: "NEW & HOT 검색")
        
        //텍스트필드 설정
        designTextField(searchTextField, placeholderText: "게임, 시리즈, 영화를 검색하세요...")
        
        //공개 예정 버튼 설정
        designButton(releaseButton, titleText: "공개예정", buttonImage: "blue", tintColor: .white, cornerValue: 20)
        
        //모두의 인기 콘텐츠 버튼 설정
        designButton(popularContentButton, titleText: "모두의 인기 콘텐츠", buttonImage: "turquoise", tintColor: .white, cornerValue: 18)
        
        //TOP10 시리즈 버튼 설정
        designButton(top10SeriesButton, titleText: "TOP 10 시리즈", buttonImage: "pink", tintColor: .white, cornerValue: 18)
        
        //버튼 클릭 시 변경되는 메인멘트 레이블
        designLabel(searchResultMainLabel, labelText: "이런! 찾으시는 작품이 없습니다!", textColor: .white, alignmentAttribute: .center, fontAttribute: .boldSystemFont(ofSize: 25))
        
        //버튼 클릭 시 변경되는 서브멘트 레이블
        designLabel(searchResultSubLabel, labelText: "다른 영화, 배우, 장르를 검색해보세요", textColor: .white, alignmentAttribute: .center, fontAttribute: .boldSystemFont(ofSize: 13))
    }
    
    private func designNavigationBar(titleText: String){
        navigationItem.title = titleText
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white,
                                                                   .font : UIFont.boldSystemFont(ofSize: 20)]
    }

    private func designTextField(_ sender: UITextField, placeholderText: String){
        sender.placeholder = placeholderText
        sender.keyboardType = .default
        sender.tintColor = .lightGray
        
        let leftImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        leftImage.image = UIImage(systemName: "magnifyingglass")
        sender.leftView = leftImage
        sender.leftViewMode = .always
    }
    
    private func designButton(_ sender: UIButton, titleText: String, buttonImage: String,  tintColor: UIColor, cornerValue: CGFloat){
        sender.setTitle(titleText, for: .normal)
        sender.setImage(UIImage(named: buttonImage), for: .normal)
        sender.tintColor = tintColor
        sender.layer.cornerRadius = cornerValue
        
        sender.configuration?.imagePadding = 3
        sender.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer {
            incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 11)
            return outgoing
        }
    }
    
    
    private func designLabel(_ sender: UILabel, labelText: String, textColor: UIColor, alignmentAttribute:  NSTextAlignment, fontAttribute: UIFont){
        sender.text = labelText
        sender.textAlignment = alignmentAttribute
        sender.textColor = textColor
        sender.font = fontAttribute
        
    }

   

}

