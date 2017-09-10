import SourceKittenFramework

class SwiftElement: Element, PositionedElement {

    let text: String
    let children: [Element]
    let offset: Int64
    let length: Int64
    weak var file: File?

    init(text: String, children: [Element], offset: Int64, length: Int64) {
        self.text = text
        self.children = children
        self.offset = offset
        self.length = length
    }

    func accept(_ visitor: ElementVisitor) {
        visitor.visit(self)
    }
}
