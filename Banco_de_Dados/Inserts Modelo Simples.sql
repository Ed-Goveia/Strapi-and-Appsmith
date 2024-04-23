-- Inserir registros na tabela RACA
INSERT INTO RACA (nome) VALUES
  ('Pastor Alemão'),
  ('Labrador Retriever'),
  ('Golden Retriever'),
  ('Doberman'),
  ('Rottweiler');

-- Inserir registros na tabela ANIMAL
INSERT INTO ANIMAL (nome, sexo, condutor, qnt_de_racao_p_dia, FK_RACA_id) VALUES
  ('Rex', 'Macho', 'João', 1.5, 1),
  ('Luna', 'Fêmea', 'Maria', 1.2, 2),
  ('Rocky', 'Macho', 'Carlos', 1.8, 3),
  ('Bella', 'Fêmea', 'Laura', 1.3, 4),
  ('Max', 'Macho', 'Pedro', 1.6, 5);

-- Inserir registros na tabela VACINA
INSERT INTO VACINA (nome) VALUES
  ('V8'),
  ('Anti-Rábica'),
  ('Leptospirose'),
  ('Parvovirose'),
  ('Giardíase'),
  ('Cinomose'),
  ('Hepatite Infecciosa Canina'),
  ('Bordetella'),
  ('Coronavírus Canino'),
  ('Lyme');

-- Inserir registros na tabela necessita (relacionamento n,n)
INSERT INTO NECESSITA (fk_ANIMAL_id, fk_VACINA_id, data, qtd) VALUES
  (1, 1, '2023-01-15', 1.0),
  (1, 2, '2023-02-20', 0.8),
  (2, 1, '2023-01-10', 1.0),
  (2, 3, '2023-03-05', 0.9),
  (3, 4, '2023-04-12', 0.7),
  (3, 5, '2023-02-28', 0.6),
  (4, 1, '2023-01-03', 0.9),
  (4, 6, '2023-03-15', 0.8),
  (5, 7, '2023-05-20', 0.7),
  (5, 8, '2023-04-25', 0.6);
