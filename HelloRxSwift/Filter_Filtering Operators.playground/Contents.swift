import UIKit
import RxSwift
import PlaygroundSupport


let strikes = PublishSubject<String>()

let disposeBag = DisposeBag()

Observable.of(1,2,3,4,5,6,7,8)
    .filter { $0 % 2 == 0}
    .subscribe(onNext: {
        
        print($0)
        
    }).disposed(by: disposeBag)
