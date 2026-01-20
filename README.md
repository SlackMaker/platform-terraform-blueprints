Usando Blueprints no Terraform 🚀

Este repositório apresenta Blueprints Terraform para criar infraestrutura em nuvem de forma segura, escalável e padronizada, utilizando AWS SSM, boas práticas de IaC e preparado para FinOps.

Plataforma Terraform Blueprints
Esta plataforma oferece uma base estruturada de Infraestrutura como Código (IaC), separando claramente:
- Módulos: componentes reutilizáveis (VPC, subnets, EC2, SG, SSM, etc.)
- Blueprints: arquiteturas prontas que combinam múltiplos módulos
- Stacks por ambiente: dev, hml e prod

O objetivo é demonstrar práticas profissionais de Platform Engineering, SRE e DevOps, permitindo que times criem ambientes completos com configuração mínima e máxima segurança e padronização.

Objetivos do Projeto
- Criar uma base reutilizável de infraestrutura
- Padronizar ambientes Dev, HML e Prod
- Reduzir acoplamento entre recursos
- Demonstrar o uso de AWS SSM Session Manager (sem SSH público)
- Preparar o terreno para FinOps com Infracost
- Facilitar evolução para multicloud

Conceito de Blueprints

Blueprints representam arquiteturas prontas, compostas por múltiplos módulos Terraform, abstraindo a complexidade da infraestrutura. Eles permitem que equipes criem ambientes completos com mínima configuração, mantendo consistência e boas práticas.

Exemplos de Blueprints incluídos:
- VPC padrão
- Bastion host com acesso via SSM
- Funcionalidades Principais
- Design modular e reutilizável
- Blueprints para decisões de arquitetura
- Stacks organizadas por ambiente (dev, hml, prod)
- Bastion host via AWS SSM sem necessidade de SSH público
- Ambientes isolados por conta ou região

Estrutura do Repositório
- modules/     -> Componentes reutilizáveis (VPC, subnets, EC2, SG, SSM, etc.)
- blueprints/  -> Arquitetura padrão para diferentes workloads
- stacks/      -> Stacks específicas de cada ambiente (dev, hml, prod)
- bootstrap/   -> Configuração do Terraform Remote State e infraestrutura base
