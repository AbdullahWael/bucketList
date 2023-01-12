

import UIKit

class BlistTableViewController: UITableViewController, addItemtableControllerDelegete {


    let items = ["1","2","3","4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Done")
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
       // print(indexPath.row)
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navgetionController = segue.destination as! UINavigationController
        let addTableViewController = navgetionController.topViewController as! addTableViewController
        addTableViewController.delegate = self
    }
    func cancel(by controller: addItemtableControllerDelegete) {

    dismiss(animated: true)
        
    }
    func itemSaved(by controller: addItemtableControllerDelegete, with text: String ){
        print("Reseived this text \(text)")
       dismiss(animated: true)
        
    }
    }

