require 'sneakers'

Sneakers.configure(
  connection: Bunny.new(A9n.connection_options),
  durable: false,
  workers: 1
)
