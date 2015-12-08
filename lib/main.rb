require 'simplehttp'

class Main < Device
  def self.call
    Device::Display.clear
    puts "HTTP Post test!"
    puts "Press to start ..."
    getc
    puts "Connecting ..."
    response = HttpTest.perform
    puts "Body #{response.body}"
    puts "Code #{response.code}"
    puts "Press to exit"
    getc
    true
  end

  def self.version
    "0.0.1"
  end
end

class HttpTest
  def self.perform
    http = SimpleHttp.new("http", "http-echo.cloudwalk.io")
    http.socket = Device::Network.socket.call
    http.request("POST", "/", {"Body" => "TEST"})
  end
end

