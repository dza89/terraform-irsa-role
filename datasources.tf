data "aws_iam_openid_connect_provider" "cluster" {
  url = data.aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}

data "aws_eks_cluster" "cluster" {
  name = var.cluster_name
}
