//
//  ViewController.swift
//  FirstProject
//
//  Created by 陈炫羽 on 2024/8/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label = UILabel(frame: CGRect(x:20,y:60,width: 300, height: 20))
        //创建ULlabel控件对象
        label.text = "我是一个普通控件"
        //设置文本
        self.view.addSubview(label)
        //将其添加到视图上
        
        let label2 = UILabel(frame: CGRect(x: 20, y: 80, width: 300, height: 20))
        //创建自定义的UIlabel控件对象
        label2.text = "我是一个自定义的普通控件"
        label2.font = UIFont.boldSystemFont(ofSize: 20)
        label2.textColor = UIColor.red
        label2.shadowColor = UIColor.blue
        label2.shadowOffset = CGSize(width: 2, height: 2)
        label2.textAlignment = NSTextAlignment.center
        self.view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRect(x: 20, y: 100, width: 200, height: 150))
        //注意这里高度的设置
        label3.text = "我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本我是长文本"
        label3.numberOfLines = 7 ;
        self.view.addSubview(label3)
        
        let button1 = UIButton(type: UIButton.ButtonType.system)
        button1.frame = CGRect(x: 20, y: 250, width: 100, height: 30)
        button1.backgroundColor = UIColor.purple
        button1.setTitle("按钮", for: UIControl.State())
        button1.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(button1)
        
        button1.addTarget(self, action: #selector(touchBegin), for: UIControl.Event.touchUpInside)
        button1.setBackgroundImage(UIImage(named: "IMG_0049"), for: UIControl.State())
        
        let textField = UITextField(frame: CGRect(x: 20, y: 280, width: 200, height: 30))
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.textColor = UIColor.red
        textField.textAlignment = NSTextAlignment.center
        textField.placeholder = "请输入姓名"
        self.view.addSubview(textField)
        
    }
    @objc func touchBegin(){
        print("button touched")
    }


}


