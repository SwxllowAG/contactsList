//
//  ViewController.swift
//  contactsList
//
//  Created by Galym Anuarbek on 6/14/17.
//  Copyright © 2017 Galym Anuarbek. All rights reserved.
//

import UIKit
import CoreData

var list = ["John - 12345","Peter - 12345","Bob - 12345"]

class tableViewController: UITableViewController{
    
   // var nameArr:[String] = []
    
    @IBOutlet var myTableView: UITableView!
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (list.count)
    }

    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return (cell)
    }
    
    public override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  /*  override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Contacts", into: context)
        
        newUser.setValue("John"+" - "+"12345", forKey: "namenumber")
        
        do{
            try context.save()
            print("saved")
        }catch{
            
        }
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Contacts")
        request.returnsObjectsAsFaults = false
        
        do{
            let results = try context.fetch(request)
            if results.count > 0
            {
                for result in results as! [NSManagedObject]
                {
                    if let name = result.value(forKey: "namenumber") as? String
                    {
                        nameArr.append(name)
                    }
                }
                print(nameArr)
            }
        }
        catch
        {
            
        }
        
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

