import Network

// The Swift Programming Language
// https://docs.swift.org/swift-book

print("Running...")

if #available(macOS 10.14, *) {

    print("NWPathMonitor...")

    let nwPathMonitor = NWPathMonitor()
    print("\(nwPathMonitor.currentPath)")

    print("NWPathMonitor done.")
}

print("Done")
