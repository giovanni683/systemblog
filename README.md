# Blog System

Um sistema de blog simples construído com React, Express.js e Supabase.

## Funcionalidades

- Listar todos os posts do blog ordenados por data de publicação
- Criar novos posts com título e conteúdo
- Visualizar posts individuais
- Editar e excluir posts existentes
- Design responsivo com Tailwind CSS

## Stack Tecnológico

- Frontend: React com Vite
- Backend: Supabase
- Banco de Dados: PostgreSQL (via Supabase)
- Estilização: Tailwind CSS
- Roteamento: React Router

## Como Começar

1. Clone o repositório
2. Instale as dependências:
   ```bash
   npm install
   ```
3. Configure o Supabase:
   - Crie um novo projeto no Supabase
   - Clique no botão "Connect to Supabase" no canto superior direito do editor
   - As variáveis de ambiente serão configuradas automaticamente

4. Execute o servidor de desenvolvimento:
   ```bash
   npm run dev
   ```

## Estrutura do Projeto

- `/src/components/` - Componentes React
- `/src/lib/` - Funções utilitárias e configurações
- `/supabase/migrations/` - Migrações do banco de dados

## Decisões Técnicas

1. **Supabase**: Escolhido por sua poderosa combinação de banco de dados PostgreSQL e sistema de autenticação, eliminando a necessidade de um backend personalizado.

2. **React + Vite**: Proporciona uma experiência de desenvolvimento rápida e builds otimizados para produção.

3. **Tailwind CSS**: Oferece uma abordagem utilitária para desenvolvimento rápido de UI.

4. **React Router**: Gerencia o roteamento no lado do cliente com uma API limpa.

## Melhorias Futuras

1. Adicionar autenticação de usuários
2. Adicionar sistema de comentários
3. Adicionar editor de texto rico
4. Adicionar suporte para upload de imagens
5. Adicionar categorias e tags
6. Adicionar funcionalidade de busca
7. Adicionar paginação para listagem de posts
