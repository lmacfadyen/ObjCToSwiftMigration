//
//  SwiftViewController.swift
//  ObjCToSwiftMigration
//
//  Created by Lawrence F MacFadyen on 2016-07-16.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

import UIKit


class SwiftViewController: UIViewController {

    @IBOutlet weak var previousPhraseLabel: UILabel!
    @IBOutlet weak var updatedPhraseTextField: UITextField!
    
    weak var delegate:PhraseUpdatedDelegate?
    var previousPhrase:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Update From Swift"
        previousPhraseLabel.text = previousPhrase
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func donePressed(_ sender: AnyObject) {
        
        if(!updatedPhraseTextField.text!.isEmpty)
        {
            passDataBack()
        }
    }
    
    func passDataBack()
    {
        delegate?.phraseUpdated(updatedPhraseTextField.text)
        _ = navigationController?.popViewController(animated: true)
    }
}
