module "ssh_key_pair" {
  source                                     = "git@github.com:frbk/terrafrom-modules.git//lightsail/aws-lightsail-key-pair?ref=main"
  aws_lightsail_key_pair_name                = "default_access"
  aws_lightsail_key_pair_public_key_location = file("~/.ssh/id_ed25519.pub")
}


module "server_instance" {
  source                           = "git@github.com:frbk/terrafrom-modules.git//lightsail/aws-lightsail-instance?ref=main"
  aws_lightsail_instance_name      = "factorio"
  aws_lightsail_instance_bundle_id = "small_3_0"
}

# resource "aws_lightsail_instance" "factorio" {
#   name              = "factorio"
#   availability_zone = "ca-central-1a"
#   blueprint_id      = "ubuntu_24_04"
#   bundle_id         = "medium_3_0" #"small_3_0"
#   ip_address_type   = "ipv4"
#   key_pair_name     = aws_lightsail_key_pair.local_key.name

#   tags = {
#     game = "factorio"
#   }
# }
