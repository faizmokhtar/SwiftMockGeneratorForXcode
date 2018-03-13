protocol GenericMethod {
    func test<T>(a: T)
    func test<T: NSObject>(b: T)
    func test<T: NSObject>(c: T.Type)
    func testReturn1<T>() -> T?
    func testReturn2<T>() -> T
    func testReturn3<T: NSObject>() -> T
    func test<T: AssociatedTypeProtocol>(d: T)
    func test<T: AssociatedTypeProtocol>(e: T) where T.SomeType == NSObject
    func test<T, U>(optional: T?, iuo: U!)
    func test<T>(array: [T])
    func test<T, U>(dictionary: [T: U])
    func test<T, U>(closure: (T) -> U)
    func test<T>(typeIdentifier: Generic<T>)
    func test<T, U>(tuple: (T, U))
}
