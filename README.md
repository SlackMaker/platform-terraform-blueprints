🚀 **Terraform Blueprints – Plataforma de Infraestrutura como Código**
Este repositório apresenta uma **plataforma de Terraform Blueprints** para criação de infraestrutura em nuvem de forma **segura, escalável e padronizada**, seguindo **boas práticas de Infraestrutura como Código (IaC), Platform Engineering, SRE e DevOps.**

A solução é **orientada à AWS**, utiliza **AWS Systems Manager (SSM)** como mecanismo padrão de acesso (eliminando a necessidade de SSH público) e já está **preparada para práticas de FinOps**, como análise de custos com **Infracost**.

🧱 **Plataforma Terraform Blueprints**
A plataforma foi desenhada para **separar responsabilidades** e **reduzir acoplamento**, organizando a infraestrutura em camadas bem definidas:
**- Módulos (modules/)**
  Componentes reutilizáveis e independentes, como:
  - VPC
  - Subnets
  - Security Groups
  - EC2
  - IAM
  - AWS SSM

**- Blueprints (blueprints/)**
Arquiteturas prontas que combinam múltiplos módulos, representando decisões de arquitetura padrão da plataforma.

***- Stacks por ambiente (stacks/)**
  Implementações específicas para cada ambiente:
  - dev
  - hml
  - prod

**- Bootstrap (bootstrap/)**
  Infraestrutura base responsável por:
  - Remote State (S3)
  - Lock de estado (DynamoDB)
  - Fundamentos para execução segura do Terraform
Essa abordagem permite que times criem ambientes completos com **mínima configuração**, mantendo **consistência, segurança e governança.**

🎯 **Objetivos do Projeto**
- Criar uma **base reutilizável e extensível** de infraestrutura
- Padronizar ambientes **Dev, HML e Prod**
- Reduzir o acoplamento entre recursos e stacks
- Demonstrar o uso de **AWS SSM Session Manager** como padrão de acesso (sem SSH público)
- Preparar o ambiente para **FinOps**, com visibilidade e controle de custos
- Facilitar a evolução para **multi-conta** e **multicloud**
- Servir como **referência prática** de Platform Engineering e DevOps

🧩 **Conceito de Blueprints**
**Blueprints8** representam **arquiteturas prontas**, compostas por múltiplos módulos Terraform, que abstraem a complexidade da infraestrutura.

Eles permitem que equipes:
- Provisionem ambientes completos rapidamente
- Sigam padrões corporativos de segurança e arquitetura
- Tomem decisões de arquitetura de forma centralizada

**Exemplos de Blueprints incluídos:**
- VPC padrão
- Bastion Host com acesso exclusivo via AWS SSM

✨ **Funcionalidades Principais**
- Design **modular, reutilizável e desacoplado**
- Blueprints como abstração de decisões arquiteturais
- Stacks organizadas por ambiente (dev, hml, prod)
- Bastion Host com **AWS SSM (sem SSH público)**
- Ambientes isolados por **conta AWS** ou **região**
- Preparado para integração com **Infracost (FinOps)**

📁 **Estrutura do Repositório**
```text
.
├── modules/     # Componentes reutilizáveis (VPC, Subnets, EC2, SG, SSM, etc.)
├── blueprints/  # Arquiteturas padrão compostas por múltiplos módulos
├── stacks/      # Stacks específicas por ambiente (dev, hml, prod)
└── bootstrap/   # Remote State, lock e infraestrutura base do Terraform
```text

▶️ **Fluxo de Execução**
1 - **Bootstrap**
Responsável por preparar a conta AWS para o uso do Terraform:
cd bootstrap
terraform init
terraform plan
terraform apply

2 - **Stacks por Ambiente**
Após o bootstrap, cada ambiente pode ser provisionado de forma independente:
cd stacks/dev   # ou hml / prod
terraform init
terraform plan
terraform apply

**Considerações Finais**
Este projeto foi criado para:
- Servir como **plataforma base corporativa**
- Facilitar a adoção de **boas práticas de IaC**
- Demonstrar um modelo moderno de **Platform Engineering**
- Evoluir naturalmente para **multi-conta, multi-região e multicloud**