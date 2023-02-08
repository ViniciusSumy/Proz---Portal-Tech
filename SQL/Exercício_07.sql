CREATE TABLE artista (
    ID SERIAL PRIMARY KEY,
    nome VARCHAR(20) UNIQUE
)

CREATE TABLE musica (
    ID SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    duracao_seg INT NOT NULL
)

CREATE TABLE artista_musica (
    fk_id_artista INT,
    fk_id_musica INT,
    CONSTRAINT artista_musica_pk PRIMARY KEY(fk_id_artista, fk_id_musica),
    CONSTRAINT fk_id_artista FOREIGN KEY(fk_id_artista) REFERENCES artista(ID),
    CONSTRAINT fk_id_musica FOREIGN KEY(fk_id_musica) REFERENCES musica(ID)
);

------- INSERT -------

INSERT INTO artista
    (nome)
VALUES
    ('Anitta'), 
    ('Lana Del Rey'),
    ('Dua Lipa'),
    ('Pabblo Vittar');

INSERT INTO musica
    (nome, duracao_seg)
VALUES
    ('Envolver', 180),
    ('Cola', 200),
    ('Dont Start now', 210),
    ('Todo dia', 170);

INSERT into artista_musica
	(fk_id_artista, fk_id_musica)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4);

