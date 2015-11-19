require 'simplehttp'

class Main < Device
  def self.call
    puts "Hello CloudWalk!"
    puts "Press to Perform HTTP request"
    getc
    Device::Network.socket
    http = SimpleHttp.new("http", "http-echo.cloudwalk.io")
    http.socket = Device::Network.socket.call
    puts http.socket
    puts response = http.request("POST", "/", {"Body" => "TESSST"})
    puts "Body #{response.body}"
    puts "Code #{response.code}"
    getc
    true
  end

  def self.version
    "0.0.1"
  end
end

