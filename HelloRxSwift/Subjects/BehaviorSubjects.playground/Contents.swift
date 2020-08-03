import UIKit
import RxSwift

let disposeBag = DisposeBag()

let subject = BehaviorSubject(value: "initial value")

subject.onNext("Last Issue")

subject.subscribe { (event) in
    print(event)
}

subject.onNext("Issue 1")

