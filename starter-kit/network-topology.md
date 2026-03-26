# 📁 `starter-kit/network-topology.png`

# Network Architecture

### Public Subnet

- Includes load balancer and web server
- Has a route to the internet gateway

### Private Subnet

- Contains sensitive resources (application server, database)
- No direct internet access
- Communicates with public subnet internally
