use insight_places;
CREATE TABLE clientes (
    cliente_id VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(255),
    cpf VARCHAR(14),
    contato VARCHAR(255)
);

CREATE TABLE enderecos (
    endereco_id VARCHAR(255) PRIMARY KEY,
    rua VARCHAR(255),
    numero INT,
    bairro VARCHAR(255),
    cidade VARCHAR(255),
    estado VARCHAR(2),
    cep VARCHAR(10)
);

CREATE TABLE hospedagens (
    hospedagem_id VARCHAR(255) PRIMARY KEY,
    tipo VARCHAR(50),
    endereco_id VARCHAR(255),
    proprietario_id VARCHAR(255),
        ativo bool,
    FOREIGN KEY (endereco_id) REFERENCES enderecos(endereco_id),
    FOREIGN KEY (proprietario_id) REFERENCES proprietarios(proprietario_id)
);

CREATE TABLE alugueis (
    aluguel_id VARCHAR(255) PRIMARY KEY,
    cliente_id VARCHAR(255),
    hospedagem_id VARCHAR(255),
    data_inicio DATE,
    data_fim DATE,
    preco_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (hospedagem_id) REFERENCES hospedagens(hospedagem_id)
);

CREATE TABLE avaliacoes (
avaliacao_id VARCHAR(255) PRIMARY KEY,
cliente_id VARCHAR(255),
hospedagem_id VARCHAR(255),
nota INT,
comentario TEXT,
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
FOREIGN KEY (hospedagem_id) REFERENCES hospedagens(hospedagem_id)
);

select * from alugueis;

select * from avaliacoes	
where nota >= 4;

select * from hospedagens
where tipo = 'hotel' and ativo = 1;

select cliente_id, avg(preco_total) as ticket_medio
from alugueis
group by cliente_id;

select cliente_id, avg (datediff(data_fim,data_inicio)) as media
from alugueis
group by cliente_id 
order by media desc;

select e.rua as lugar, count(a.hospedagem_id) 
as numeros_hospedagens
from enderecos e
join alugueis a on e.endereco_id = a.hospedagem_id
group by e.rua
order by numeros_hospedagens;

select p.nome as nome_proprietario, count(h.hospedagem_id)
as total_hospedagens_ativas
from proprietarios p
join hospedagens h on p.proprietario_id = h.proprietario_id
where h.ativo = 1
group by p.nome
order by total_hospedagens_ativas desc
limit 10;

select p.nome as nome_proprietario, count(*) as total_hospedagens_inativas
from proprietarios p
join hospedagens h on p.proprietario_id = h.proprietario_id
where h.ativo = 0
group by p.nome;

select year(data_inicio) as ano,
month(data_inicio) as mes,
count(*) as total_alugueis
from alugueis
group by ano, mes
order by total_alugueis desc;

alter table proprietarios
add column qtd_hospedagens int ;

alter table alugueis rename to reservas;

alter table reservas rename column aluguel_id to reserva_id;

update hospedagens
set ativo = 1
where hospedagem_id in('1','10','100');

update proprietarios
set cntato = 'daniela_120@email.com'
where proprietario_id = '1009';

delete from hospedagens
where hospedagem_id in('10000','1001');

delete from avaliacoes
where hospedagem_id in('10000','1001');

delete from reservas
where hospedagem_id in('10000','1001');
