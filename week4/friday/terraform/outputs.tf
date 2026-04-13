output "api_server_ip" {
  value = module.servers["kk-api"].public_ip
}
output "payments_server_ip" {
  value = module.servers["kk-payments"].public_ip
}
output "logs_server_ip" {
  value = module.servers["kk-logs"].public_ip
}
output "ssh_commands" {
  value = {
    for k, v in module.servers : k => "ssh -i ~/.ssh/${var.key_name}.pem ubuntu@${v.public_ip}"
  }
}