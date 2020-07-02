//
//  CategoryViewController.swift
//  todoey
//
//  Created by Ana Thayna Franca on 16/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit
import RealmSwift
import ChameleonFramework

class CategoryViewController: SwipeViewController {
    
    let realm = try! Realm()
    var categories: Results<Category>?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCategories()
        
        tableView.separatorStyle = .none
        
        tableView.rowHeight = 50.0
    }
    
    
    
    // MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories?.count ?? 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        
//        if let category = categories?[indexPath.row] {
//            cell.textLabel?.text = category.name
//            cell.backgroundColor = UIColor(hexString: category.colour )
//        }
        
        cell.textLabel?.text = categories?[indexPath.row].name ?? "no category added yet"
        cell.backgroundColor = UIColor(hexString: categories?[indexPath.row].colour ?? "59A6EB")
        
        return cell
    }
    
    
    
    // MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToItems", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! TodoListViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selectedCategory = categories?[indexPath.row]
        }
    }
    
    
    
    // MARK: - Data Manipulation Methods
    
    func save(category: Category) {
        do {
            try realm.write{
                realm.add(category)
            }
        } catch {
            print("error saving category \(error)")
        }
        
        tableView.reloadData()
    }
    
    func loadCategories() {
        categories = realm.objects(Category.self)
        tableView.reloadData()
    }
    
    override func updateModel(at indexPath: IndexPath) {
        
        super.updateModel(at: indexPath)
        
        if let categoryForDeletion = self.categories?[indexPath.row] {
            do {
                try self.realm.write {
                    self.realm.delete(categoryForDeletion)
                }
            } catch {
                print("error deleting category, \(error)")
            }
        }
    }

    @IBAction func addButtonPress(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "add new category", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "add", style: .default) { (action) in
            let newCategory = Category()
            newCategory.name = textField.text!
            //newCategory.colour = UIColor.randomFlat
            
            self.save(category: newCategory)
        }
        
        alert.addAction(action)
        
        alert.addTextField { (field) in
            textField = field
            textField.placeholder = "add a new category"
        }
        
        present(alert, animated: true, completion: nil)
    }
    
}
