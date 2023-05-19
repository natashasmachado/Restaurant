//
//  OrderTableViewController.swift
//  Restaurant
//
//  Created by Natasha Machado on 2023-05-18.
//

import UIKit

class OrderTableViewController: UITableViewController {
  var order = Order()
  
  override func tableView(_ tableView: UITableView,
                          numberOfRowsInSection section: Int) -> Int {
    return order.menuItems.count
  }
  override func tableView(_ tableView: UITableView, cellForRowAt
                          indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier:
                                              "Order", for: indexPath)
    configure(cell, forItemAt: indexPath)
    return cell
  }
  func configure(_ cell: UITableViewCell, forItemAt indexPath:
                 IndexPath) {
    let menuItem = order.menuItems[indexPath.row]
    var content = cell.defaultContentConfiguration()
    content.text = menuItem.name
    content.secondaryText = menuItem.price.formatted(.currency(code:
                                                                "usd"))
    cell.contentConfiguration = content
  }
}
