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

Este repositório demonstra uma arquitetura pronta para produção utilizando Terraform e AWS, com foco em modularidade, boas práticas de segurança.
Funcionalidades
- Design modular reutilizável
- Blueprints para decisões de arquitetura
- Stacks por ambiente (dev, hml, prod)
- Bastion host via AWS SSM sem necessidade de SSH público
- Ambientes isolados por conta ou região

modules/     -> Componentes reutilizáveis (VPC, subnets, EC2, SG, SSM, etc.)  
blueprints/  -> Arquitetura padrão para diferentes workloads  
stacks/      -> Stacks específicas de cada ambiente (dev, hml, prod)  
bootstrap/   -> Configuração do Terraform Remote State e infraestrutura base

