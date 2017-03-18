require 'socket'

port = 1000
server = TCPServer.open(port)
client1 = server.accept
client1.puts('Welcome Client1')
puts 'Connected client 1'
client2 = server.accept
client2.puts('Welcome Client2')
puts 'Connected client 2'
Thread.start() do
loop{
client1.puts(client2.gets())
}
end
Thread.start() do
loop{
client2.puts(client1.gets())
}
end

x = gets()
