resource "google_compute_network" "my-network" {

    name                             = var.networkname
    description                      = "this is for testing purpose"
    auto_create_subnetworks          = var.auto_create_subnetworks
    routing_mode                     = var.routemode
    mtu                              = var.mtu
       
}

resource "google_compute_subnetwork" "my-subnet" {
count = length(var.subnetname)
    name = var.subnetname[count.index]
    ip_cidr_range = var.cidr[count.index]
    network = google_compute_network.my-network.id
    region = var.region
  
}