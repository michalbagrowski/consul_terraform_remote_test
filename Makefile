consul_config:
	cd consul && terraform remote config \
		-backend=consul \
		-backend-config="address=docker:8500" \
		-backend-config="path=aa"

consul_plan:
	cd ./consul && terraform plan \
		-var "access_key=${MAIN_AWS_ACCESS_KEY_ID}" \
		-var "secret_key=${MAIN_AWS_SECRET_ACCESS_KEY}"

consul_apply:
	cd ./consul && terraform apply \
		-var "access_key=${MAIN_AWS_ACCESS_KEY_ID}" \
		-var "secret_key=${MAIN_AWS_SECRET_ACCESS_KEY}"

consul_config_2:
	cd consul && terraform remote config \
		-backend=consul \
		-backend-config="address=docker:8500" \
		-backend-config="path=bb"

consul_apply_2:
	cd ./consul_2 && terraform get
	cd ./consul_2 && terraform apply \
		-var "access_key=${MAIN_AWS_ACCESS_KEY_ID}" \
		-var "secret_key=${MAIN_AWS_SECRET_ACCESS_KEY}"
