resource "aws_iam_policy" "eks_controller_policy" {
  name        = "${var.project_name}-aws-load-balancer-controller"
  description = "Policy to AWS Load Balancer Controller"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = file("${path.module}/policy/iam_policy.json")

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-nodegroup"
    }
  )
}