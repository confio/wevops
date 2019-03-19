.PHONY: tools

TERRAFORM_BIN := terraform_0.11.13_linux_amd64.zip

# Note makefile only designed for Linux
tools: /usr/local/bin/terraform

/usr/local/bin/terraform:
	curl https://releases.hashicorp.com/terraform/0.11.13/$(TERRAFORM_BIN) -o $(TERRAFORM_BIN)
	unzip $(TERRAFORM_BIN)
	sudo mv terraform /usr/local/bin 
	rm $(TERRAFORM_BIN)
	terraform version
