//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {
    @IBOutlet var contentView: UIView!
    
    // MARK: - Override Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("___FILEBASENAMEASIDENTIFIER___", owner: self, options: nil)
        self.addSubview(contentView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        contentView.frame = bounds
    }
    
    // MARK: - Private Methods
    // MARK: - Event Response
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
