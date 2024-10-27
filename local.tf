resource "local_file" "example" {
  filename = "example.txt"
  content = var.content
}

data "local_file" "content-example" {
  filename = "example.txt"
}

output "data-source-result" {
  value = data.local_file.content-example.content_base64
}

variable "content" {
  type = string
}

output "id" {
  value = resource.local_file.example.id
}

output "content" {
  value = var.content
}

output "letter" {
  value = sort(["A", "B"])[0]
}