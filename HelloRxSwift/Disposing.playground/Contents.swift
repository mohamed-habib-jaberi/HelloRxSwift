import UIKit
import RxSwift


print("---------First_Exp--------")
let disposeBag = DisposeBag()
Observable.of("A","B","C","D","E")
    .subscribe {
        print($0)
}.disposed(by: disposeBag)

print("---------Second_Exp--------")

Observable<String>.create { observer in
    
    observer.onNext("A")
    observer.onCompleted()
    observer.onNext("?")
    
    return Disposables.create()
}.subscribe(onNext: {
    print($0)
}, onError: {
     print($0)
}, onCompleted: {
    print("Completed")
}) {
    print("Disposed")
}
.disposed(by: disposeBag)

