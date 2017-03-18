require 'socket'
puts 'Enter ip Adress to connect :'
ip =gets()
port =1000
client = TCPSocket.open(ip,port)
s = client.gets()
puts s
Thread.start() do
loop {
puts 'An other Client :' +client.gets()
}
end
loop {
msg =gets()
client.puts(msg)
puts 'Me :' +msg
}
