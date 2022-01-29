resource "aws_s3" "finance-lake-s3" {
}

resource "aws_iam_role" "s3-bucket-role" {
  name = "s3-bucket-role"
}

resource "aws_iam_instance_profile" "s3-bucket-role-instance-profile" {
  name  = "s3-bucket-role"
  roles = ["${aws_iam_role.s3-bucket-role.name}"]
}
