//
//  ViewController.swift
//  Training
//
//  Created by Sachin Khandelwal on 12/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView : UITableView!
    
//    let animals = ["Bear","Dear","Dog","Elephant","Jackle","Kangaroo","Lamb","Lion","Monkey","Panda","Peacock","Polar Bear","Rabbit","Tiger","Zebra"]
//
//    let images = [UIImage(named: "Bear"),UIImage(named: "Deer"),UIImage(named: "Dog"),UIImage(named: "Elephant"),UIImage(named: "Jackle"),UIImage(named: "Kangaroo"),UIImage(named: "Lamb"),UIImage(named: "Lion"),UIImage(named: "Monkey"),UIImage(named: "Panda"),UIImage(named: "Peacock"),UIImage(named: "PolarBear"),UIImage(named: "Rabbit"),UIImage(named: "Tiger"),UIImage(named: "Zebra")]
//
//    let details = ["Type: Wild , Found in = Forest","Type: Wild , Found in = Forest","Type: Domestic , Found in = Everywhere","Type: Wild , Found in = Forest","Type: Wild , Found in = Forest","Type: Exotic , Found in = Australia","Type: Domestic , Found in = Everywhere","Type: Wild , Found in = Forest","Type: Wild , Found in = Forest","Type: Exotic , Found in = China/Asia","Type: Wild , Found in = Forest","Type: Exotic , Found in = Cold temperature regions","Type: Wild , Found in = Forest","Type: Wild , Found in = Forest","Type: Wild , Place = Forest"] -> immutable to mutable.

        
    var animals = ["Bear","Dear","Dog","Elephant","Jackle","Kangaroo","Lamb","Lion","Monkey","Panda","Peacock","Polar Bear","Rabbit","Tiger","Zebra"]
        
    var images = [UIImage(named: "Bear"),UIImage(named: "Deer"),UIImage(named: "Dog"),UIImage(named: "Elephant"),UIImage(named: "Jackle"),UIImage(named: "Kangaroo"),UIImage(named: "Lamb"),UIImage(named: "Lion"),UIImage(named: "Monkey"),UIImage(named: "Panda"),UIImage(named: "Peacock"),UIImage(named: "PolarBear"),UIImage(named: "Rabbit"),UIImage(named: "Tiger"),UIImage(named: "Zebra")]
        
    var details = ["Type: Wild , Found in = Forest","Type: Wild , Found in = Forest","Type: Domestic , Found in = Everywhere","Type: Wild , Found in = Forest","Type: Wild , Found in = Forest","Type: Exotic , Found in = Australia","Type: Domestic , Found in = Everywhere","Type: Wild , Found in = Forest","Type: Wild , Found in = Forest","Type: Exotic , Found in = China/Asia","Type: Wild , Found in = Forest","Type: Exotic , Found in = Cold temperature regions","Type: Wild , Found in = Forest","Type: Wild , Found in = Forest","Type: Wild , Place = Forest"]
    
//    var tCount : Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
            
        title = "Animals"
        configureItems()
            
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib , forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
            
    }

    private func configureItems() {
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .done, target: self, action: nil)
    }

}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(animals[indexPath.row])
//        tCount += 1
//        print(tCount, tCount%2)
        
    }
        
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.label.text = animals[indexPath.row]
        cell.myImage.image = images[indexPath.row]
        cell.details.text = details[indexPath.row]
//        if tCount % 2 == 0 {
//            cell.details.isHidden = false
//
//        }
//
//        else {
//            cell.details.isHidden = true
//        }
        return cell

    }
        
    //method:1
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            animals.remove(at: indexPath.row)
            images.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
        
//    method:2
//    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//
//        let deleteSwipe = UIContextualAction(style: .destructive, title: nil) {_, _, completion in
//            self.animals.remove(at: indexPath.row)
//            self.images.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//            completion(true)
//        }
//
//        deleteSwipe.image = UIImage(systemName: "trash")
//        deleteSwipe.backgroundColor = .systemRed
//
//        let config = UISwipeActionsConfiguration(actions: [deleteSwipe])
//        return config
//    }

}
