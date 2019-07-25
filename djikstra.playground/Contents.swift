import Foundation

enum Enum {
    case a(A)
    case b(B)
    case c(C)
}

protocol Z {
    func method() -> Enum
}

protocol Y: Z {}
protocol X: Y {}

class A: X {
    func method() -> Enum {
        return .a(self)
    }
}

class B: X {
    func method() -> Enum {
        return .b(self)
    }
}

class C: X {
    func method() -> Enum {
        return .c(self)
    }
}
