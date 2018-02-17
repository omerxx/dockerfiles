storage "dynamodb" {
  ha_enabled = "false"
  max_parallel = 128
  region = "us-east-1"
  table = "vault-backend"
  read_capacity = 20
  write_capacity = 20
  advertise_addr = "https://vault.spot.im"
}

listener "tcp" {
 cluster_address = "vault.spot.im:443"
 address     = "0.0.0.0:8200"
 tls_disable = 1
}

default_lease_ttl = "168h"
max_lease_ttl = "720h"
disable_mlock = true
