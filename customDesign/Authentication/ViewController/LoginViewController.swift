//
//  CustomViewController.swift
//  customDesign
//
//  Created by Stuti Bhavsar  on 30/04/22.
//

import UIKit

class LoginViewController: UIViewController {

   //MARK: - IBOutlet
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tfName: CustomTextField!
    @IBOutlet weak var btnFacebook: CustomButton!
    @IBOutlet weak var tfPassword: CustomPasswordField!
    let validCrendential = NSLocalizedString("Email address or Password cant be empty", comment: "")
    
    //MARK: -Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.delegate = self
        tfPassword.delegate = self
       setData()
    }
    func setData() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow(notification:)), name: UIResponder.keyboardDidShowNotification, object: nil)
               
               NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
               view.addGestureRecognizer(tap)
         tfName.returnKeyType = .next
        tfPassword.returnKeyType = .done
    }
    @objc func dismissKeyboard() {
           view.endEditing(true)
       }
    @objc func keyboardWillShow(notification:NSNotification){
       var userInfo = notification.userInfo!
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
    
    //MARK: - IBActions
    @IBAction func btnLogib(_ sender:UIButton) {
        guard let userName = self.tfName.text else {
        return
        }
        guard let password = self.tfPassword.text else {
                   return
        }
        if userName.isEmpty == true || password.isEmpty == true  {
                   showAlertBox(message: validCrendential)
        }
        else {
       showAlertBox(message: "Registration done")
        }
    }
    
    @IBAction func btnFacebookAction(_ sender: CustomButton) {
    }
    
    @IBAction func btnSignUp(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Signup", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController {
                 self.navigationController?.pushViewController(vc, animated: true)
   }
    }
    private func showAlertBox(message: String){
         let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
         alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
         self.present(alert, animated: true, completion: nil)
     }
}
//MARK: - Extention
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case tfName:
            tfName.resignFirstResponder()
            tfPassword.becomeFirstResponder()
        case tfPassword:
            tfPassword.resignFirstResponder()
        default:
            break
        }
        return true
    }
}
