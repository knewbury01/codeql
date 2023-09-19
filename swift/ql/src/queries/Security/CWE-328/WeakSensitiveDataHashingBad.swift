func getContentsAndHash(url: URL) -> (Data, String)? {
    guard let data = try? Data(contentsOf: url) else {
        return nil
    }

    let digest = Insecure.MD5.hash(data: data)
    let hash = digest.map { String(format: "%02hhx", $0) }.joined()

    return (data, hash)
}