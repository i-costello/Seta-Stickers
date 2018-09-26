//
//  SetaViewController.swift
//  Seta Final MessagesExtension
//
//  Created by Ian Costello on 3/13/18.
//  Copyright © 2018 Bridge. All rights reserved.
//

import Foundation
import Messages

class SetaViewController: MSStickerBrowserViewController {

    var stickers = [MSSticker]()
    
    let stickerNames =
        ["Light Laugh", "Crying Laugh", "Sad", "Shock", "Tired", "Drunk", "Hungry", "Punch", "Salt Bae", "Haha", "Question", "Exclamation", "Drake Dislike", "Drake Like", "It's Over 9000", "Over 9000 Response", "Love", "Jean Love", "Smug Laugh", "Smug Laugh Jean"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.stickerBrowserView.backgroundColor = UIColor.clear
        self.view.backgroundColor = UIColor.clear
        populateStickers()
    }
    
    override func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker {
        return self.stickers[index]
    }

    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {
        return self.stickers.count
    }
    
    
    private func populateStickers() {
        for stickerName in stickerNames {
            let path = Bundle.main.url(forResource:stickerName, withExtension:".png")
            let sticker = try! MSSticker(contentsOfFileURL: path!, localizedDescription: stickerName)
            self.stickers.append(sticker)
        }
        
        self.stickerBrowserView.reloadData()
        
    }
    
    /*override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }*/
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
