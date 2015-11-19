require 'simplehttp'

class Main < Device
  def self.call
    puts "Hello CloudWalk!"
    getc
    Device::Network.socket
    http = SimpleHttp.new("http", "http-echo.cloudwalk.io")
    http.socket = Device::Network.socket.call
    puts http.socket
    puts response = http.request("GET", "/", {"Body" => "TESSST"})
    puts response.body
    true
  end

  def self.version
    "0.0.1"
  end
end

