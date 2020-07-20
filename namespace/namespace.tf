resource "kubernetes_namespace" "eks_namespace" {
  metadata {
    annotations = {
      name = "example-annotation"
    }
    labels = {
      mylabel = "label-value"
    }
    name = random_string.namespace_name.result
  }
}

resource "random_string" "namespace_name" {
  length = 6
  lower = true
  upper = false
  special = false
}
