//
//  ViewController.swift
//  MVC
//
//  Created by Eddy Segura on 5/12/18.
//  Copyright © 2018 Eddy Segura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelQuestion: UILabel!
    let allQuestions = modelQuestionList()
    var pickedAnswer : Bool = false
    var QuestionNumber : Int = 0
    
    
    var teams : [String] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "micelda" )
        cell.textLabel?.text = teams [indexPath.row]
        
        cell.imageView!.image = UIImage(named: teams[indexPath.row])
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnAnswer(_ sender: AnyObject) {
    if sender.tag == 1 {
        pickedAnswer = false
    }else if sender.tag == 2{
        pickedAnswer = true
        }
        
        checkAnswer()
    }
    
    func checkAnswer(){
        let CorrectAnswer = allQuestions.list[QuestionNumber].answer
        if CorrectAnswer == pickedAnswer{
            
        }
    }
}

