//
//  ViewController.swift
//  SettingsApp2
//
//  Created by Scott Benson on 4/9/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    var sectionOneImages = ["general", "accessiblity", "privacy"]
    var sectionTwoImages = ["passwords"]
    var sectionThreeImages = ["safari", "news", "maps", "shortcuts", "health", "siriandsearch"]

    var sectionOneText = ["General", "Accessibility", "Privacy"]
    var sectionTwoText = ["Passwords"]
    var sectionThreeText = ["Safari", "News", "Maps", "Shortcuts", "Health", "Siri & Search"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        switch section {
        case 0:
            return sectionOneText.count
        case 1:
            return sectionTwoText.count
        case 2:
            return sectionThreeText.count
        default:
            return 0
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TableViewCell1
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! TableViewCell2
        let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! TableViewCell3

        switch indexPath.section {
        case 0:
            cell1.sectionOneLabel.text = sectionOneText[indexPath.row]
            cell1.sectionOneImage.image = UIImage(named: sectionOneImages[indexPath.row])
            
            return cell1
            
        case 1:
            cell2.sectionTwoLabel.text = sectionTwoText[indexPath.row]
            cell2.sectionTwoImage.image = UIImage(named: sectionTwoImages[indexPath.row])
            
            return cell2
            
        case 2:
            cell3.sectionThreeLabel.text = sectionThreeText[indexPath.row]
            cell3.sectionThreeImage.image = UIImage(named: sectionThreeImages[indexPath.row])

            return cell3
            
        default:
            return cell1
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch [indexPath.section, indexPath.item] {
        
        case [0,0]: // General
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "general") as! GeneralViewController
            navigationController?.pushViewController(destination, animated: true)

        case [0,1]: // Accessibility
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "accessibility") as! AccessibilityViewController
            navigationController?.pushViewController(destination, animated: true)
            
        case [0,2]: // Privacy
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "privacy") as! PrivacyViewController
            navigationController?.pushViewController(destination, animated: true)
            
        case [1,0]: // Passwords
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "passwords") as! PasswordsViewController
            navigationController?.pushViewController(destination, animated: true)
            
        case [2,0]: // Safari
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "safari") as! SafariViewController
            navigationController?.pushViewController(destination, animated: true)
            
        case [2,1]: // News
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "news") as! NewsViewController
            navigationController?.pushViewController(destination, animated: true)
        
        case [2,2]: // Maps
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "maps") as! MapsViewController
            navigationController?.pushViewController(destination, animated: true)
        
        case [2,3]: // Shortcuts
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "shortcuts") as! ShortcutsViewController
            navigationController?.pushViewController(destination, animated: true)
            
        case [2,4]: // Health
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "health") as! HealthViewController
            navigationController?.pushViewController(destination, animated: true)
            
        case [2,5]: // Siri and Search
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let destination = storyboard.instantiateViewController(withIdentifier: "siriAndSearch") as! SiriAndSearchViewController
            navigationController?.pushViewController(destination, animated: true)
            
        default:
            print("")
        }
    
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // titleForHeaderInSection comes from DataSource protocol.
        
        switch section {
        case 0:
            return " "
        case 1:
            return " "
        case 2:
            return " "
        default:
            return ""
        }
        
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let label : UILabel = UILabel()
//
//        if(section == 0 || section == 1 || section == 2 ){
//            label.backgroundColor = UIColor.white
//        }
//
//        return label
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

