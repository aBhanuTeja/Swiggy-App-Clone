import UIKit.UICollectionView

protocol ReusableView: AnyObject {
    static var defaultReuseIdentifier: String { get }
}

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView {
        register(T.self, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func register<T: UICollectionReusableView>(_: T.Type) where T: ReusableView {
        register(T.self, forSupplementaryViewOfKind: T.defaultReuseIdentifier, withReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func dequeueCell<T: UICollectionViewCell>(_: T.Type, _ indexPath: IndexPath) -> T where T: ReusableView {
        return dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
    }
    
    func dequeueCell<T: UICollectionReusableView>(_: T.Type, _ indexPath: IndexPath) -> T where T: ReusableView {
        return dequeueReusableSupplementaryView(ofKind: T.defaultReuseIdentifier, withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
    }
}

extension ReusableView where Self: UICollectionViewCell {
    static var cellIdentifier: String { return String(describing: self) }
}
