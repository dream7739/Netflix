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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //이메일
        emailTextField.backgroundColor = .darkGray
        emailTextField.tintColor = .white
        emailTextField.textColor = .white
        emailTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [.foregroundColor: UIColor.white])
        emailTextField.textAlignment = .center
        
        //비밀번호
        passwordTextField.backgroundColor = .darkGray
        passwordTextField.tintColor = .white
        passwordTextField.textColor = .white
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [.foregroundColor: UIColor.white])
        passwordTextField.textAlignment = .center
        passwordTextField.keyboardType = .numberPad
        passwordTextField.isSecureTextEntry = true
        
        //닉네임
        nicknameTextField.backgroundColor = .darkGray
        nicknameTextField.tintColor = .white
        nicknameTextField.textColor = .white
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [.foregroundColor: UIColor.white])
        nicknameTextField.textAlignment = .center
        
        //위치
        locationTextField.backgroundColor = .darkGray
        locationTextField.tintColor = .white
        locationTextField.textColor = .white
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [.foregroundColor: UIColor.white])
        locationTextField.textAlignment = .center
        
        //추천 코드 입력
        recommandTextField.backgroundColor = .darkGray
        recommandTextField.tintColor = .white
        recommandTextField.textColor = .white
        recommandTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [.foregroundColor: UIColor.white])
        recommandTextField.textAlignment = .center
        recommandTextField.keyboardType = .numberPad
        
        //회원가입 버튼
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 5
        signUpButton.tintColor = .black
        
        //추가 정보 입력 스위치
        additionalSwitch.onTintColor = .systemPink //켰을 때 컬러
        additionalSwitch.thumbTintColor = .lightGray //동그라미 컬러
        
        //유효성검사 레이블
        effectivenessLabel.text = "유효성 검사"
        effectivenessLabel.textColor = .red
        effectivenessLabel.font = .systemFont(ofSize: 13)
    }
    

   

}
