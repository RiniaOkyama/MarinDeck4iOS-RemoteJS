import Foundation

struct RemoteJS: Codable {
    let id: String
    let title: String
    let version: Int
    let jsUrl: String
}

let remoteJss = [
    RemoteJS(id: "6251e263c1ee45ef94894399898c6b2c", title: "ミリ秒表示", version: 1, jsUrl: ""),
    RemoteJS(id: "f3beff0c72184100bb4f1f55a1147586", title: "ナビゲーションタブ", version: 5, jsUrl: "https://raw.githubusercontent.com/RiniaOkyama/MarinDeck4iOS-RemoteJS/main/js/navigationTab_v05.min.js"),
    RemoteJS(id: "1923ebc903de49269205b9b8e345c091", title: "ツイート画面を下に持ってくる", version: 1, jsUrl: ""),
    RemoteJS(id: "25554b54c7b848e3b027bb097f4a37d9", title: "緊急用", version: 1, jsUrl: ""),
]

let jsonValue = try! JSONEncoder().encode(remoteJss)
 
let json = String(bytes: jsonValue, encoding: .utf8)!

let fileUrl = URL(fileURLWithPath: "v1.json")

try! json.write(to: fileUrl, atomically: false, encoding: .utf8)

print("成功！")
