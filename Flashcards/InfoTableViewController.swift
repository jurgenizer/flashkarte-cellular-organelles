//
//  InfoTableViewController.swift
//  FlashKarte
//
//  Created by Jurgen Geitner on 2016/06/30.
//  Copyright © 2016 Jurgen Geitner. All rights reserved.
//

import UIKit

class InfoTableViewController: UITableViewController {
    
    //create some data variables
    var refAndAcknowlegements = ["References": ["Wikipedia contributors, \"Cell biology,\" Wikipedia, The Free Encyclopedia, https://en.wikipedia.org/w/index.php?title=Cell_biology&oldid=727762852 (accessed July 2, 2016). \n\nWikipedia contributors, \"Cytoskeleton,\" Wikipedia, The Free Encyclopedia, https://en.wikipedia.org/w/index.php?title=Cytoskeleton&oldid=724724481 (accessed July 5, 2016). \n\nWikipedia contributors, \"Organelle,\" Wikipedia, The Free Encyclopedia, https://simple.wikipedia.org/w/index.php?title=Organelle&oldid=5301387 (accessed July 5, 2016). \n\nKhan Academy staff, \"Cellular organelles amd structure,\" Khan Academy, https://www.khanacademy.org/test-prep/mcat/cells/eukaryotic-cells/a/organelles-article (accessed July 5, 2016)."], "Acknowledgements": ["This Flashcard app is based on a tutorial available at https://swifteducation.github.io/. \n\nFurther code modifications and enhancements have been made, creating the free FlashKarte range. \n\nBackground images adapted from: \n\nhttps://commons.wikimedia.org/wiki/File%3AGolgi_apparatus_(standalone_version)-en.svg, \nhttps://commons.wikimedia.org/wiki/File%3AChloroplast_(standalone_version)-en.svg, \nhttps://commons.wikimedia.org/wiki/File%3ACentrosome_(standalone_version)-en.svg, \nhttps://commons.wikimedia.org/wiki/File%3AMitochondrion_(standalone_version)-en.svg, \n\nBy Kelvinsong (Own work) [CC BY 3.0 (http://creativecommons.org/licenses/by/3.0)], via Wikimedia Commons."]]
    
    
    //A struct for the references and their data
    struct Objects {
        
        var sectionName : String!
        var sectionData : [String]!
    }
    
    var objectArray = [Objects]()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return objectArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objectArray[section].sectionData.count
    }


 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = objectArray[indexPath.section].sectionName
        cell.accessoryType = .disclosureIndicator

        return cell
    }
   
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        
        return indexPath
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
      
        
     
            for (key, value) in refAndAcknowlegements {
                
                //lets print our array to see that we've got everything
                print("\(key) -> \(value)")
                
                objectArray.append(Objects(sectionName: key, sectionData: value))
                
            }
        }
            




   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue,sender: Any?) {
        
        if let destination = segue.destination as? InfoSubViewController {
            
          let indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
            
          let selectedCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            
        
            
           //set values of variables in dewsstination search controller 
            
           destination.thankYouTitle = objectArray[indexPath.section].sectionName
            
           destination.thankYouText = objectArray[indexPath.section].sectionData[indexPath.row]
           
           // Configure the cell...
            
           selectedCell.textLabel?.text = objectArray[indexPath.section].sectionName
            
           selectedCell.setSelected(false, animated: true)
            
           selectedCell.accessoryType = .disclosureIndicator
            
            
        }
    }


}
