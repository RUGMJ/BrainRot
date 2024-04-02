import Orion
import BrainRotC

var window: UIWindow!

class Pinnacle: Tweak {
    required init() {
        remLog("Starting")
    }

    static func handleError(_ error: OrionHookError) {
        remLog(error)
        DefaultTweak.handleError(error)
    }
}

class SpringboardHook: ClassHook<SpringBoard> {
    func applicationDidFinishLaunching(_ application: Any) {
        orig.applicationDidFinishLaunching(application)

        let screenSize = UIScreen.main.bounds.size
        let halfScreenHeight = screenSize.height / 2

        window = BrainRotWindow(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: halfScreenHeight))
        window.windowScene = target.connectedScenes.first as? UIWindowScene
        window.isHidden = false
        window.windowLevel = UIWindow.Level(CGFLOAT_MAX / 2.0)
        window.rootViewController = UIViewController()
        window.isUserInteractionEnabled = false
        window.makeKeyAndVisible()
    }
}
