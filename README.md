# AWS S3 Bucket Access Demo

This repository contains example AWS CLI commands to create S3 buckets and configure public/private access permissions.

## What it does

- Creates an S3 bucket with a unique name
- Uploads a file
- Sets the object or bucket to **public** or **private**

## Prerequisites

- AWS CLI installed and configured
- An active AWS account with proper permissions

## Examples

### Create a new bucket

```bash
aws s3api create-bucket --bucket my-demo-bucket-123456 --region us-east-1
