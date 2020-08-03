import UIKit
import RxSwift
import PlaygroundSupport


let strikes = PublishSubject<String>()

let disposeBag = DisposeBag()

strikes
.ignoreElements()
    .subscribe { (_) in
        print("[Subscription is called]")
}.disposed(by: disposeBag)

// publish some events
strikes.onNext("A")
strikes.onNext("B")
strikes.onNext("C")
strikes.onNext("D")

strikes.onCompleted()

