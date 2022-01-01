include {
  path = find_in_parent_folders()
}

terraform {
  source = "../modules/generic"
}

inputs = {
  instance_name      = "k8s-controller"
  key_pair           = "admin"
  region             = "<Change-Me>"
  number_nodes       = 1
  image_name         = "<Change-Me>"
  flavor_name        = "<Place-Holder>"
  security_groups    = ["default"]
  user_data          = ""
  network            = "<Change-Me>"
  availability_zone  = "<Change-Me>"
  tags               = ["k8s-controller"]
}
