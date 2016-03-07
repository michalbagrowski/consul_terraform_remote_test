provider "aws" {
  region = "us-west-2"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}


resource "aws_ecs_cluster" "test_consul_2" {
    name = "${terraform_remote_state.consul.output.testname}"
}

resource "terraform_remote_state" "consul" {
    backend = "consul"
    config {
        address = "docker:8500"
        path = "path=aa"
    }
}
