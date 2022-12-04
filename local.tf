// bloco  provider_tipo  nome do recurso     
resource "local_file" "exemplo" {
    filename = "exemplo.txt"
    content = var.conteudo
}

data "local_file" "conteudo_exemplo" {
    filename = "exemplo.txt"
}

variable "conteudo" {
    type = string
    # default = "hello world"
}

output "id-do-arquivo" {
    value = resource.local_file.exemplo.id  
}

output "conteudo" {
    value = var.conteudo
}

output "datasource-result" {
    value = data.local_file.conteudo_exemplo.content_base64
}