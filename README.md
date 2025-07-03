# 🐚 Shell Scripts – Exemplos e IaC  
Este repositório reúne scripts desenvolvidos com Bash para fins **educacionais** e **práticos**, abrangendo:

- Provisionamento de infraestrutura (IaC com BASH)
- Automação de tarefas em sistemas GNU/Linux
- Exercícios de lógica com loops e estruturas de controle

---  

### Conteúdo

### `iac/`  
Scripts de Infrastructure as Code (IaC), voltados à automação de ambientes Linux:  

- `estrutura-usuarios-direta.sh` – Solução sequencial para criação de diretórios, grupos e usuários
- `estrutura-usuarios-direta-alternativa.sh` – Variação otimizada da solução direta, com permissões aplicadas no momento da criação
- `estrutura-usuarios-com-laços.sh` – Solução estruturada com uso de arrays e loops para maior escalabilidade
- `provisionamento-apache-debian.sh` – Provisionamento de servidor Apache em distribuições Debian-like
- `provisionamento-apache-redhat.sh` – Mesma finalidade do anterior, mas para sistemas baseados em Red Hat (RHEL, CentOS, AlmaLinux)
- `provisionamento-apache-unificado.sh` – Script único que detecta automaticamente a distribuição e executa o provisionamento do Apache para Debian ou Red Hat

### `exemplos-logicos/`

Exercícios didáticos de lógica com shell script:  

- `lacos.sh` – Demonstração de diferentes formas de laços `for` e verificação de múltiplos
- `padraoDecrescente.sh` – Impressão de padrão visual decrescente com laços aninhados  
  
  
> **!!! ATENÇÃO !!!**  
> Antes de executar qualquer script, torne-o executável:
> ```bash
> chmod +x nome_do_script.sh
> ./nome_do_script.sh
> ```  
> Alguns scripts exigem permissões de root (`sudo`) e dependem de pacotes como `openssl`, `apache2`, `httpd`, `unzip`, etc.  
