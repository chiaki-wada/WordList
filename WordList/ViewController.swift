//
//  ViewController.swift
//  WordList
//
//  Created by Chiaki Wada on 2023/05/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var quizButton: UIButton!
    @IBOutlet var listButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizButton.layer.cornerRadius = 30
        listButton.layer.cornerRadius = 30
    }
    
    @IBAction func back(sender: UIStoryboardSegue) {
        
    }
    
    //スタートボタンを押したときの処理
    @IBAction func startButtonTapped() {
        let saveData = UserDefaults.standard
        if saveData.array(forKey: "WORD") != nil {
            if saveData.array(forKey: "WORD")!.count > 0 {
                performSegue(withIdentifier: "toQuestionView", sender: nil)
            }
        } else {
            let alert = UIAlertController (
                title: "Vocabulaire",
                message: "Tout d'abord, il faut enregistrer le mot :)",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
                title: "Dcc!",
                style: .default,
                handler: nil
            ))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
}
