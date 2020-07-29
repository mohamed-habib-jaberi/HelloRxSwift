import UIKit
import RxSwift

let observable = Observable.just(1)

// Create array with different argument
let observable2 = Observable.of(1,2,3,4)

let observable3 = Observable.of([1,2,3,4])

let observable4 = Observable.from([1,2,3,4])


