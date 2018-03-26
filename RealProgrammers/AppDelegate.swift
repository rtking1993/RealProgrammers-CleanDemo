// MARK: Frameworks

import UIKit

// MARK: AppDelegate

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: Variables

    var window: UIWindow?

    // MARK: Constants

    let storyboardName = "Main"

    // MARK: Methods

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let storyboard: UIStoryboard = UIStoryboard(name: storyboardName, bundle: nil)
        let navigationController = storyboard.instantiateInitialViewController() as? UINavigationController
        let initialViewController = navigationController?.topViewController as? ProgrammersTableViewController

        let entityGateway = ProgrammerRepository()
        let interactor = ShowProgrammersListInteractor(entityGateway: entityGateway)
        let presenter = ProgrammersListPresenter(interactor: interactor)
        interactor.programmersListPresentation = presenter
        initialViewController?.presenter = presenter

        defineRootViewController(navigationController!)
        return true
    }

    func defineRootViewController(_ navigationController: UINavigationController) {
        window = UIWindow()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

