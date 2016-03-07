# consul_terraform_remote_test


DOCKER: docker run -p 8400:8400 -p 8500:8500 -p 8600:53/udp -h node1 progrium/consul -server -bootstrap

HOSTS: add 192.168.99.100 docker

export $MAIN_AWS_ACCESS_KEY_ID

export $MAIN_AWS_SECRET_ACCESS_KEy


make consul_config

make consul_apply

make consul_config_2

make consul_apply_2 <-- fail no terrraform_remote_state value
```terraform_remote_state.consul: Creating...
  backend:        "" => "consul"
  config.#:       "" => "2"
  config.address: "" => "docker:8500"
  config.path:    "" => "path=aa"
  output.#:       "" => "<computed>"
terraform_remote_state.consul: Creation complete
Error applying plan:

1 error(s) occurred:

* Resource 'terraform_remote_state.consul' does not have attribute 'output.testname' for variable 'terraform_remote_state.consul.output.testname'

Terraform does not automatically rollback in the face of errors.
Instead, your Terraform state file has been partially updated with
any resources that successfully completed. Please address the error
above and apply again to incrementally change your infrastructure.
make: *** [consul_apply_2] Error 1
```
