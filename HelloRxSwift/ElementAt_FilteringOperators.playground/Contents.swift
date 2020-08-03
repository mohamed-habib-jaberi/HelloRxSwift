import UIKit
import RxSwift
import PlaygroundSupport


let strikes = PublishSubject<String>()

let disposeBag = DisposeBag()

strikes.elementAt(2)
    .subscribe(onNext: { _ in
        print("You are out!")
    }).disposed(by: disposeBag)


strikes.onNext("Q")
strikes.onNext("W")
strikes.onNext("E")
