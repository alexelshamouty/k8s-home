resource "openstack_compute_instance_v2" "openstack-instance" {
    region = var.region
    count = var.number_nodes
    name = format("${var.instance_name}-%01d", count.index+1)
    image_name = var.image_name
    flavor_name = var.flavor_name
    key_pair = var.key_pair
    security_groups = var.security_groups
    user_data = var.user_data
    network { uuid = var.network }
    availability_zone = var.availability_zone
    tags              = var.tags

    lifecycle {
      ignore_changes = [key_pair, image_name]
    }
    
    connection {
      user = "cloud"
      host = self.network.0.fixed_ip_v4
    }
}
