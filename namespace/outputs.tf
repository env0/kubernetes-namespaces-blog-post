output "namespace_link" {
  value = kubernetes_namespace.eks_namespace.self_link
}

output "namespace_uid" {
  value = kubernetes_namespace.eks_namespace.uid
}
