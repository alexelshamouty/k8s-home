include {
  path = find_in_parent_folders()
}

terraform {
  source = "../modules/generic"
}

inputs = {
  instance_name      = "k8s-nodes"
  key_pair           = "<Change-Me>"
  region             = "<Change-Me>"
  number_nodes       = 6
  image_name         = "<Change-Me>"
  flavor_name        = "<Change-me>"
  security_groups    = ["default"]
  user_data          = ""
  network            = "<Change-Me>"
  availability_zone  = "<Change-Me>"
  tags               = ["k8s-node"]
}
