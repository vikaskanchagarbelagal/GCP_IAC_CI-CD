resource "google_compute_instance" "minimal_vm" {
  name         = "vicky-vm-ci-cd-pipeline"
  machine_type = "e2-micro"  # Very small and low-cost
  zone         = "us-central1-a"

  tags = ["terraform"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 10  # Smallest recommended boot disk size (in GB)
    }
  }

  network_interface {
    network       = "default"
    access_config {}  # Required to give the instance a public IP
  }

  metadata = {
    startup-script = "echo Hello from Terraform"
  }

  labels = {
    environment = "test"
  }
}
