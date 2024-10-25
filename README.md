
# AWS Lambda S3 File Organizer

This project uses **AWS Lambda** to automatically organize files uploaded to an **S3** bucket into folders based on the upload date (Year/Month/Day). The project is fully automated using **Terraform**, which deploys the Lambda function, S3 bucket, and all necessary configurations, including permissions and notifications.

## Features

- **AWS Lambda** function triggered by S3 `ObjectCreated` events.
- Automatically organizes uploaded files into a structured folder format (`Year/Month/Day`).
- Uses **Terraform** for infrastructure as code, deploying the Lambda function, S3 bucket, IAM roles, and S3 bucket notifications.

## Structure

```
.
├── modules/
│   ├── lambda_function/
│   ├── s3_bucket/
│   └── s3_notification/
├── main.tf
├── variables.tf
├── outputs.tf
├── lambda_function.py
└── README.md
```

## Prerequisites

- AWS account with IAM permissions to create Lambda, S3, and IAM resources.
- Terraform installed on your machine.
- AWS CLI configured with credentials.

## Setup Instructions

1. **Clone the repository**:
    ```bash
    git clone https://github.com/tanvir4hmed/s3-file-organizer.git
    ```
2. **Navigate to the project directory**:
    ```bash
    cd s3-file-organizer
    ```
3. **Update the variables** in `variables.tf` to match your environment.

4. **Deploy the infrastructure**:
    ```bash
    terraform init
    terraform apply
    ```

5. **Test the Lambda Function**:
   Upload a file to the S3 bucket, and it will be automatically moved to the `Year/Month/Day` structure.


---

**Thank you for using the _s3-file-organizer_!** If you have any questions or feedback, feel free to open an [issue](https://github.com/tanvir4hmed/s3-file-organizer/issues) or reach out. **Contributions are welcome!**



