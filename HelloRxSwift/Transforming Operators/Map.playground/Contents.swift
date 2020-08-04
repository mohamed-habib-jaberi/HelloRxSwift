import UIKit
import RxSwift
import PlaygroundSupport

let disposeBag = DisposeBag()


Observable.of(10,20,30,40,50)
    .map({
       return $0 * 2
    })
    .subscribe(onNext:{

      print($0)

  }).disposed(by: disposeBag)

