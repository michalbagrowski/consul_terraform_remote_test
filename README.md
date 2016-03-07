# consul_terraform_remote_test


DOCKER: docker run -p 8400:8400 -p 8500:8500 -p 8600:53/udp -h node1 progrium/consul -server -bootstrap

HOSTS: add 192.168.99.100 docker

export $MAIN_AWS_ACCESS_KEY_ID

export $MAIN_AWS_SECRET_ACCESS_KEy


make consul_config

make consul_apply

make consul_config_2

make consul_apply <-- fail no terrraform_remote_state value
