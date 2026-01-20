# Usando Blueprints no Terraform !
Blueprints usados no Terraform para criar infraestrutura cloud segura, escalável e padronizada, utilizando AWS SSM, FinOps e boas práticas de IaC.

🚀 Platform Terraform Blueprints
Este repositório contém uma plataforma de blueprints Terraform para criação de infraestrutura em nuvem de forma padronizada, segura e reutilizável.
O objetivo é demonstrar como estruturar projetos de Infrastructure as Code (IaC) em nível profissional, separando claramente módulos, blueprints e stacks por ambiente, seguindo boas práticas adotadas em times de Platform Engineering, SRE e DevOps.

🎯 Objetivos do Projeto
Criar uma base reutilizável de infraestrutura
Padronizar ambientes dev, hml e prod
Reduzir acoplamento entre recursos
Demonstrar uso de AWS SSM Session Manager (sem SSH)
Preparar o terreno para FinOps com Infracost
Facilitar evolução para multicloud

🧱 Conceito de Blueprints
Os blueprints representam arquiteturas prontas, compostas por múltiplos módulos Terraform.
Eles abstraem a complexidade da infraestrutura e permitem que os times criem ambientes completos com pouca configuração.
Exemplos de blueprints:
VPC padrão
Bastion com acesso via SSM
Ambientes isolados por conta ou região
