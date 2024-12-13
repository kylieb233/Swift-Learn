//
//  BeckGameViewController.swift
//  Beck_Exam03
//
//  Created by Kylie beck on 12/3/24.
//

import UIKit

class BeckGameViewController: UIViewController {
    
    var game:Game?
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var descriptionOL: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var width = imageViewOL.frame.width
        width += 40
        
        var height = imageViewOL.frame.height
        height += 40
        
        var x = imageViewOL.frame.origin.x-30
        var y = imageViewOL.frame.origin.y-30
        
        var largeFrame = CGRect(x: x, y: y,  width: width, height: height)
        
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 40, animations: {
            self.imageViewOL.frame = largeFrame
            
        })

        imageViewOL.image = game?.imageName
        nameOL.text = (game?.name)
        descriptionOL.text = (game?.information)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
