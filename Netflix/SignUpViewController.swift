//
//  SignUpViewController.swift
//  Netflix
//
//  Created by 홍정민 on 5/16/24.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var recommandTextField: UITextField!
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var additionalSwitch: UISwitch!
    @IBOutlet var effectivenessLabel: UILabel!
    
    //회원가입 클릭 시 키보드 내림
    @IBAction func signUpBtnClicked(_ sender: UIButton) {
        view.endEditing(true)
        
        if (emailTextField.text?.isEmpty ?? false) ||
            (passwordTextField.text?.isEmpty ?? false) {
            effectivenessLabel.text = "이메일과 비밀번호는 필수항목입니다"
        }else if (passwordTextField.text?.count ?? 0 < 6){
            effectivenessLabel.text = "비밀번호는 6자리 이상이어야 합니다."
        }else{
            effectivenessLabel.text = "회원가입 성공!"
        }
    }
    
    @IBAction func keyboardDismiss(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //이메일
        designTextField(emailTextField, placeholderText: "이메일 주소 또는 전화번호")
        
        //비밀번호
        designTextField(passwordTextField, placeholderText: "비밀번호")
        
        //닉네임
        designTextField(nicknameTextField, placeholderText: "닉네임")
        
        //위치
        designTextField(locationTextField, placeholderText: "위치")
        
        //추천 코드 입력
        designTextField(recommandTextField, placeholderText: "추천 코드 입력")
        
        //회원가입 버튼
        designButton(signUpButton, titleText: "회원가입", buttonColor: .white, tintColor: .black, cornerValue: 5)
        
        //추가 정보 입력 스위치
        designSwitch(additionalSwitch, onColor: .systemPink, thumbColor: .lightGray)
        
        //유효성검사 레이블
        designLabel(effectivenessLabel, labelText: "유효성 검사", textColor: .red, fontAttribute: .systemFont(ofSize: 13))
    }
    
    
    fileprivate func designTextField(_ sender : UITextField, placeholderText: String){
        sender.backgroundColor = .darkGray
        sender.tintColor = .white
        sender.textColor = .white
        sender.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: [.foregroundColor: UIColor.white])
        sender.textAlignment = .center
        
        if sender == passwordTextField{
            sender.keyboardType = .numberPad
            sender.isSecureTextEntry = true
        }else if sender == recommandTextField{
            sender.keyboardType = .numberPad
            
        }
        
    }
    
    fileprivate func designButton(_ sender: UIButton, titleText: String, buttonColor: UIColor, tintColor: UIColor, cornerValue: CGFloat){
        sender.setTitle(titleText, for: .normal)
        sender.backgroundColor = buttonColor
        sender.tintColor = tintColor
        sender.layer.cornerRadius = cornerValue
    }
    
    
    fileprivate func designSwitch(_ sender: UISwitch, onColor: UIColor, thumbColor: UIColor){
        sender.onTintColor = .systemPink //켰을 때 컬러
        sender.thumbTintColor = .lightGray //동그라미 컬러
    }
    
    fileprivate func designLabel(_ sender: UILabel, labelText: String, textColor: UIColor, fontAttribute: UIFont){
        sender.text = labelText
        sender.textColor = textColor
        sender.font = fontAttribute
    }
}
