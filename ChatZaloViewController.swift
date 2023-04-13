//
//  ChatZaloViewController.swift
//  chatZalo
//
//  Created by Khắc Hùng on 13/04/2023.
//

import UIKit

class ChatZaloViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblChatZalo: UITableView!
    let listAvt = ["avt1", "avt2", "avt3", "avt4", "avt5", "avt6", "avt7"]
    let listNameMessenger = ["Nguyễn Khắc Hùng", "Nguyễn Văn Linh", "Nguyễn Thị Phượng", "Trần Văn Nam","Nguyễn Ngọc Anh", "Trần Hữu Thanh", "Nguyễn Khắc Anh"]
    let listTimeOnline = [ "3 phút","29 phút", "44 phút","1 giờ", "2 giờ", "5 giờ", "6 giờ"]
    let listMessenge = ["Hello", "hola", "saas", "saas", "saaas", "saassa", "assaas"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblChatZalo.dataSource = self
        tblChatZalo.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listNameMessenger.count
   
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listChatCell = tblChatZalo.dequeueReusableCell(withIdentifier: "ChatCellIdentifier")!
        let avtUser = listChatCell.viewWithTag(100) as! UIImageView
        let lblNameMessenger = listChatCell.viewWithTag(101) as! UILabel
        let lblMessenge = listChatCell.viewWithTag(102) as! UILabel
        let lblTimeOnline = listChatCell.viewWithTag(103) as! UILabel
        avtUser.image =  UIImage(named: listAvt[indexPath.row])
        avtUser.layer.cornerRadius = 30
        
        lblNameMessenger.text = listNameMessenger[indexPath.row]
        lblTimeOnline.text = listTimeOnline[indexPath.row]
        lblMessenge.text = listMessenge[indexPath.row]
      
        return listChatCell

    }
  
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 92
    }

}
