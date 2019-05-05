//
//  ViewController.swift
//  MyCV
//
//  Created by Tanya Belobrova on 5/3/19.
//  Copyright © 2019 Tanya Belobrova. All rights reserved.
//

//hello :)

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //all text information for my CV

    let generalInformation = ["name: Tanya Belobrova",
                "mobile: (063) 141 24 38",
                "email: tanyabelobrova2@gmail.com",
                "skype: tanyabelobrova2",
                "date of birth: 03/20/95",
                "location: Kyiv",
                "Fb: Tanya Belobrova",
                "IG: belobrova.t" ]
    
    let myEducation = """
    2012 - 2016 Kyiv National Economic University (bachelor). Major - economy
    2016 - 2018 Kyiv National Economic University (master). Major - business economy
    """
    
    let myCourses = """
    2018 - English school "Project 12" - Upper-Intermediate
    2018 - Codecademy "Learn Python 2"
    2018 - Codecademy "Learn Git"
    2019 - ... - Udemy "iOS 12 & Swift - The Complete iOS App Development Bootcamp"
    """
    
    let myLanguages = """
    Ukrainian - native
    Russian - fluent
    English - confident intermediate
    """
    
    let myHobbies = """
- hiking trips
- painting (a newbie)
- watching Wes Anderson/old/arthouse movies
- take interesting photos, looking for a new angles and beauty around me
"""
    
    @IBOutlet weak var infoTable: UITableView!
    @IBOutlet weak var editedText: UITextView!
    
    //create a table with general information
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        editedText.isHidden = true
        return(generalInformation.count)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = String(generalInformation[indexPath.row])
        
        return(cell)
    }
    
    //create buttons with different information about me (not all information, i can say more)
    
    @IBAction func openGeneralInformation(_ sender: UIButton) {
        if sender.tag == 6 {
            editedText.isHidden = true
            infoTable.isHidden = false
        }
    }
    
    @IBAction func educationButton(_ sender: UIButton) {
        if sender.tag == 1 {
            infoTable.isHidden = true
            editedText.isHidden = false
            editedText.text = myEducation
        }
    }
    
    @IBAction func coursesButton(_ sender: UIButton) {
        if sender.tag == 2 {
            infoTable.isHidden = true
            editedText.isHidden = false
            editedText.text = myCourses
        }
    }
    
    
    @IBAction func myLanguages(_ sender: UIButton) {
        if sender.tag == 3 {
            infoTable.isHidden = true
            editedText.isHidden = false
            editedText.text = myLanguages
        }
    }

    @IBAction func myHobbies(_ sender: UIButton) {
        infoTable.isHidden = true
        editedText.isHidden = false
        editedText.text = myHobbies
    }
    
    //create a button with link to my CV on google drive
    
    @IBAction func openFile(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://drive.google.com/file/d/1NN_neFA56U9IcPWdKo9cMzKvwRxxaZRr/view?usp=sharing")! as URL, options: [:], completionHandler: nil )
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
}

