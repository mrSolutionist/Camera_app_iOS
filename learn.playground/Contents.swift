import UIKit



class Singleton {
    static let sharedInstance : Singleton = {
        let instance = Singleton()
        // setup code
        return instance
    }()
}

Singleton.sharedInstance.self
