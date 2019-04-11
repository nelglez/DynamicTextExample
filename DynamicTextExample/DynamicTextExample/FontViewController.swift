//
//  FontViewController.swift
//  DynamicTextExample
//
//  Created by Paul Solt on 4/10/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class FontViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Register XIB file
        
        let fontTableNib = UINib(nibName: "FontTableViewCell", bundle: nil)
        tableView.register(fontTableNib, forCellReuseIdentifier: "FontCell")
        
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    
    
    var quotes: [String] = {
        var result = [
        "The doers are the major thinkers. The people that really create the things that change this industry are both the thinker and doer in one person.",
        "I decided to drop out and trust that it would all work out ok.",
        "Here’s to the crazy ones. The misfits. The rebels. The troublemakers. The round pegs in the square holes. The ones who see things differently. They’re not fond of rules, and they have no respect for the status quo. You can quote them, disagree with them, glorify and vilify them. About the only thing you can’t do is ignore them because they change things. They push the human race forward. And while some may see them as crazy, we see genius. Because the people who are crazy enough to think they can change the world, are the ones who do."]
        return result
    }()

    @IBOutlet weak var tableView: UITableView!
}

extension FontViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FontCell", for: indexPath) as! FontTableViewCell
        
        cell.contentLabel.text = quotes[indexPath.row]
        
        return cell
    }

    
}
