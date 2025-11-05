# 🚀 Script de Provisionamento de Servidor Linux (IaC)

Este projeto é um script de provisionamento em **Bash** para automatizar a criação de uma estrutura completa de usuários, grupos e diretórios em um servidor Linux. 
O objetivo é aplicar os conceitos de **Infraestrutura como Código (IaC)** para garantir que o ambiente do servidor seja configurável, seguro e replicável.

Este é um exercício fundamental para práticas de DevOps e Administração de Sistemas (SysAdmin).

---

## 🏗️ Estrutura Provisionada

O script foi projetado para criar automaticamente a seguinte estrutura de diretórios e grupos de trabalho no sistema:

### Diretórios
* `/publico`
* `/adm`
* `/ven`
* `/sec`

### Grupos
* `GRP_ADM`
* `GRP_VEN`
* `GRP_SEC`

---

## 🔐 Regras de Provisionamento e Segurança

O script segue um conjunto rigoroso de regras para garantir um ambiente limpo e seguro:

* **Propriedade:** O dono de todos os diretórios de departamento criados (`/adm`, `/ven`, `/sec`) será o usuário **`root`**.
* **Acesso Público:** O diretório `/publico` terá permissão total (leitura, escrita e execução) para **todos** os usuários do sistema.
* **Acesso por Grupo:** Usuários de um grupo (ex: `GRP_ADM`) terão permissão total para ler, escrever e executar arquivos **apenas** dentro do seu respectivo diretório (ex: `/adm`).
* **Isolamento (Sigilo):** Usuários **não poderão** acessar (ler, escrever ou executar) os diretórios de departamentos aos quais não pertencem.

---

## 🛠️ Como Executar (Requer Root)

Este script deve ser executado com privilégios de **usuário `root`** para ter as permissões necessárias para criar/excluir usuários, grupos e alterar a propriedade de diretórios do sistema.

### 1. Torne-se o Usuário Root

Antes de tudo, mude para o usuário `root` no seu terminal. O comando mais comum para isso é:

```bash
sudo su
```
*(Será solicitada a senha do seu usuário sudo para continuar)*

### 2. Clone e Execute o Script

Uma vez que você esteja logado como `root` (o prompt do seu terminal deve terminar com `#` em vez de `$`):

```bash
# 1. Clone o repositório

# 2. Entre na pasta do projeto

# 3. Dê permissão de execução ao script
# (Troque 'provision.sh' pelo nome real do seu arquivo)
chmod +x provision.sh

# 4. Execute o script
# (Sem 'sudo', pois você já é root)
./provision.sh
```

Após a execução, toda a estrutura de diretórios, grupos e usuários estará criada e com as permissões de segurança aplicadas.

---

## 💻 Tecnologias Utilizadas

* **Bash Script (Shell Script)**
* **Linux (Gerenciamento de Permissões de Usuário e Grupo)**
