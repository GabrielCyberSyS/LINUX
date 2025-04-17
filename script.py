# Recebe a entrada do usuário e armazena na variável "entrada"
entrada = input()

# Função responsável por receber um conceito e retornar sua respectiva descrição.
def descrever_conceito(conceito):
  if conceito == "chgrp":
    return "Altera o grupo associado a arquivos ou diretórios"

# COMPLETE AQUI: Preencha corretamente cada conceito, considerando as descrições abaixo:
  elif conceito == "chmod":
    return "Altera permissões de um arquivo ou diretório"

  elif conceito == "chown":
    return "Altera o proprietário de um arquivo"

  elif conceito == "umask":
    return "Ajusta as permissões padrão para novos arquivos e diretórios"

# Imprime a descrição do conceito recebido na "entrada" através da função "descrever_conceito". 
print(descrever_conceito(entrada))
