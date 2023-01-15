output "vpc_endpoint_id" {
  description = "vpc endpoint id"
  value       = aws_vpc_endpoint.default.id
}

output "vpc_endpoint_arn" {
  description = "vpc endpoint arn"
  value       = aws_vpc_endpoint.default.arn
}