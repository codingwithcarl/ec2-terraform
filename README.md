<div id="top"></div>

<!-- HEADER -->
<br />
<div align="center">

  <h1 align="center">EC2 with Terraform</h1>

  <p align="center">
    Terraform template to create a single EC2 instance.
    <br />
    <br />
  </p>
</div>

<!-- ABOUT -->
## About

This template will create a single EC2 instance with Terraform. The repository documents what the files do and what commands to run in order to successfully provision the EC2 instance. 

### Built With

* [Terraform](https://www.terraform.io/)

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

[Terraform CLI](https://www.terraform.io/downloads)

<!-- USAGE EXAMPLES -->
## Usage

1. Insert AWS credentials to dev.conf and dev.tfvars
2. Add the S3 Bucket where the .tfstate will be stored in dev.conf
3. Pick your ami ID and copy it into main.tf
4. Copy your key name into main.tf
5. Add your security group(s) into main.tf (optional)
6. Run the following commands

Initialize Terraform with our config:

```bash
terraform init --backend-config=config/dev.conf
```

Output the plan:

```bash
terraform plan --var-file=config/dev.tfvars
```

Terraform will check the current state and attempt to match the desired state. 

Save the plan to a file:

```bash
terraform plan -out myplan --var-file=config/dev.tfvars
```

Apply the changes:

```bash
terraform apply myplan
```

If at anytime you run into a **ConditionalCheckFailedException**, run the following command to force Terraform to unlock:

```bash
terraform force-unlock <ID>
```

<!-- CONTRIBUTING -->
## Contributing

Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/MyGreatFeatureRequest`)
3. Commit your Changes (`git commit -m 'Add some features'`)
4. Push to the Branch (`git push origin feature/MyGreatFeatureRequest`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>