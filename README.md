# 📧 Email Notifier
Aplicação **Ruby on Rails** para agendar envios de e-mails de forma assíncrona utilizando **Sidekiq** e **Redis**.

---

## 🚀 Tecnologias Utilizadas
- **Ruby on Rails 7+**
- **Sidekiq** (processamento de jobs assíncronos)
- **Redis** (fila de jobs)
- **PostgreSQL** (banco de dados)
- **RSpec** (testes automatizados)
- **FactoryBot & Faker** (geração de dados para testes)

---

## 📂 Instalação e Configuração

### 1️⃣ **Clone o Repositório**
```bash
git clone https://github.com/amandaessilva/email_notifier.git
cd email_notifier
```

### 2️⃣ Instale as Dependências

```
bundle install
```

### 3️⃣ Configure o Banco de Dados

```
rails db:create db:migrate
```

### 4️⃣ Configure o Redis


Certifique-se de que o Redis está instalado e rodando. Caso não tenha o Redis instalado:

🔹 Ubuntu/Debian

```
sudo apt install redis -y
sudo systemctl start redis

```

🔹 MacOS (Homebrew)

```
brew install redis
brew services start redis
```

Verifique se o Redis está rodando com:

```
redis-server --version
```

### 🏃 Executando a Aplicação

1️⃣ Rodando o Servidor Rails

```
rails server
```

Acesse: http://localhost:3000

2️⃣ Rodando o Sidekiq

Em um novo terminal, rode:

```
bundle exec sidekiq
```

Acesse o painel do Sidekiq em: http://localhost:3000/sidekiq

### 🧪 Executando os Testes

```
bundle exec rspec
```

### 📬 Como Usar

1 - Acesse http://localhost:3000.

2- Preencha o formulário com um e-mail e uma mensagem.

3 - O sistema agendará o envio do e-mail via Sidekiq.

4- Você pode monitorar os jobs pendentes em /sidekiq.