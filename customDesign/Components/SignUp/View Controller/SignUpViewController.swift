//
//  SignUpViewController.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 03/05/22.
//

import UIKit

class SignUpViewController: UIViewController {

   //MARK: - IBOutlet
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPassword: CustomPasswordField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    let validCrendential = NSLocalizedString("Name, Email address or Password cant be empty", comment: "")
      
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.delegate = self
        tfEmail.delegate = self
        tfPassword.delegate = self
        setData()
    }
    
    func setData() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow(notification:)), name: UIResponder.keyboardDidShowNotification, object: nil)
               
               NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
           
      //  btnFacebook.leftImage(image: UIImage(named: "facebook")!, renderMode: .alwaysOriginal)
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
               view.addGestureRecognizer(tap)
         tfName.returnKeyType = .next
        tfEmail.returnKeyType = .next
        tfPassword.returnKeyType = .done
    }
    @objc func dismissKeyboard() {
           view.endEditing(true)
       }
    @objc func keyboardWillShow(notification:NSNotification){
        let userInfo = notification.userInfo!
       var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
       keyboardFrame = self.view.convert(keyboardFrame, from: nil)

       var contentInset:UIEdgeInsets = self.scrollView.contentInset
       contentInset.bottom = keyboardFrame.size.height
       scrollView.contentInset = contentInset
   }
   
   @objc func keyboardWillBeHidden(notification: NSNotification) {
       let contentInsets = UIEdgeInsets.zero
       self.scrollView.contentInset = contentInsets
       self.scrollView.scrollIndicatorInsets = contentInsets
   }
    
    private func showAlertBox(message: String){
            let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    //MARK: - IBAction
    
    @IBAction func btnSignUp(_ sender: UIButton) {
        guard let userName = self.tfEmail.text else {
                   return
        }
        guard let Name = self.tfName.text else {
                   return
        }
        guard let password = self.tfPassword.text else {
                   return
        }
        if userName.isEmpty == true || password.isEmpty == true || Name.isEmpty {
                   showAlertBox(message: validCrendential)
        }
    }
  
}
extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case tfName:
            tfName.resignFirstResponder()
            tfEmail.becomeFirstResponder()
        case tfEmail:
            tfEmail.resignFirstResponder()
            tfPassword.becomeFirstResponder()
        case tfPassword:
            tfPassword.resignFirstResponder()
        default:
            break
        }
        return true
    }
}
//extension String {
//    var isValidEmail: Bool {
//     //   NSPredicate(format: Constants.email, Constants.email2).evaluate(with: self)
//    }
//}
