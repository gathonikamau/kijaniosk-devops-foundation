# IAM Least Privilege Design

## Scenario

An application service needs to read and write data to a storage bucket.

## Principle

Grant only the permissions required to perform the task.

## IAM Policy Example

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["storage:GetObject", "storage:PutObject"],
      "Resource": "arn:cloud:storage:region:account-id:bucket/kijaniosk-data/*"
    }
  ]
}
```
