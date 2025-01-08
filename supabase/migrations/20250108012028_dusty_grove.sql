/*
  # Cria tabela de posts para sistema de blog

  1. Novas tabelas
    - `postagens`
      - `id` (uuid, chave primária)
      - `título` (texto, obrigatório)
      - `conteúdo` (texto, obrigatório)
      - `user_id` (uuid, faz referência a auth.users)
      - `created_at` (carimbo de data e hora com fuso horário)
      - `updated_at` (carimbo de data/hora com fuso horário)

  2. Segurança
    - Habilitar RLS na tabela `posts`
    - Adicionar políticas para operações CRUD
*/

CREATE TABLE IF NOT EXISTS posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  content text NOT NULL,
  user_id uuid REFERENCES auth.users NOT NULL,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

ALTER TABLE posts ENABLE ROW LEVEL SECURITY;

-- Política de leitura de postagens (qualquer pessoa pode ler)
CREATE POLICY "Anyone can read posts"
  ON posts
  FOR SELECT
  USING (true);

-- Política para criação de postagens (somente usuários autenticados)
CREATE POLICY "Authenticated users can create posts"
  ON posts
  FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

-- Política para atualização de postagens (apenas proprietário da postagem)
CREATE POLICY "Users can update own posts"
  ON posts
  FOR UPDATE
  TO authenticated
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- Política para exclusão de postagens (apenas proprietário da postagem)
CREATE POLICY "Users can delete own posts"
  ON posts
  FOR DELETE
  TO authenticated
  USING (auth.uid() = user_id);