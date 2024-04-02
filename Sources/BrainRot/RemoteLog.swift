import BrainRotC

func remLog(_ objs: Any...) {
    let string = objs.map { String(describing: $0) }.joined(separator: "; ")
    let args: [CVarArg] = [ "[BrainRot-\(Date().description)] \(string)" ]
    withVaList(args) { RLogv("%@", $0) }
}
