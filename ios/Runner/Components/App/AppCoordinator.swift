import Foundation
import UIKit
import NeuroID

class AppCoordinator: BaseCoordinator{
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        super.init()
        self.navigationController = navigationController
    }
    
    override func start() {
        super.start()

        NeuroID.configure(clientKey: "key_live_pds2MiZx8wvkomNpVic8Gpv3")
        NeuroID.setEnvironmentProduction(false)
        NeuroID.setSiteId(siteId: "form_radar965")
        NeuroID.start()
        do {
          try NeuroID.setUserID("burakFlutterSet")
        } catch {
          print("Invalid UserId being set")
        }    }
    
}

protocol NeuroIdToAppCoordinatorDelegate: class {
    func navigateToFlutterViewController()
}

protocol FlutterToAppCoordinatorDelegate: class {
    func navigateToNeuroIdViewController()
}
 
