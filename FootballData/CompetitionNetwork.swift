import Foundation

var request = URLRequest(url: URL(string: "https://api.sportmonks.com/v3/football/leagues?api_token=hKj4OLFiOjkZYYmUIV2gFFd6ivQxHmS9QsOjarZPD73h7n8GSRHDnwcxFQfF")!,timeoutInterval: Double.infinity)
request.addValue("application/json", forHTTPHeaderField: "Content-Type")
request.addValue("application/json", forHTTPHeaderField: "Accept")

request.httpMethod = "GET"

let task = URLSession.shared.dataTask(with: request) { data, response, error in 
  guard let data = data else {
    print(String(describing: error))
    return
  }
  print(String(data: data, encoding: .utf8)!)
}

task.resume()
