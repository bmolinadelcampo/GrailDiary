//
//  ViewController.swift
//  GrailDiary
//
//  Created by Belén Molina del Campo on 03/05/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var sitesArray:[Site] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSites()
        print(sitesArray)
        
    }
    
    // MARK: - TableViewDataSource Methods

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sitesArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: SiteTableViewCell = tableView.dequeueReusableCellWithIdentifier("siteCell", forIndexPath: indexPath) as! SiteTableViewCell
        
        let currentSite: Site = sitesArray[indexPath.row]
        cell.siteNameLabel.text = currentSite.name
        cell.siteCountryLabel.text = currentSite.country
        
        return cell
    }
    
    // MARK: - Private Methods

    func loadSites()
    {
        if let path = NSBundle.mainBundle().pathForResource("SitesData", ofType: "json")
        {
            do
            {
                let data =  try! NSData(contentsOfFile: path, options: NSDataReadingOptions.DataReadingMappedIfSafe)
                print(data)
                if let jsonResult = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as? [[String: AnyObject]]
                {
                    for siteDictionary in jsonResult
                    {
                        let newSite = Site(dictionary: siteDictionary)
                        sitesArray.append(newSite)
                    }
                }
            }
            catch
            {
                print("error")
            }
        }
    }

    // MARK: - Navigation Methods 
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showDetail" {
            let destinationViewController = segue.destinationViewController as! DetailViewController
            if let selectedSite: Site? = sitesArray[(tableView.indexPathForCell(sender as! SiteTableViewCell)?.row)!] {
                destinationViewController.site = selectedSite
            }
        }
    }
}
