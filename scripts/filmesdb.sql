-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/11/2024 às 02:37
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `filmesdb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `favorito`
--

CREATE TABLE `favorito` (
  `usuario_id` int(11) NOT NULL,
  `filme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `filme`
--

CREATE TABLE `filme` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `ano` int(11) NOT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filme`
--

INSERT INTO `filme` (`id`, `titulo`, `ano`, `descricao`) VALUES
(1, 'Um Sonho de Liberdade', 1994, 'Dois homens presos se reúnem ao longo de vários anos, encontrando consolo e eventual redenção através de atos de decência comum.'),
(2, 'O Poderoso Chefão', 1972, 'O patriarca idoso de uma dinastia do crime organizado transfere o controle de seu império clandestino para seu filho relutante.'),
(3, 'Batman: O Cavaleiro das Trevas', 2008, 'Agora com a ajuda do tenente Jim Gordon e do promotor público Harvey Dent, Batman tem tudo para banir o crime de Gotham City de uma vez por todas. Mas em breve, os três serão vítimas do Coringa, que pretende lançar Gotham em uma anarquia.'),
(4, 'O Poderoso Chefão: Parte II', 1974, 'Em 1950, Michael Corleone, agora à frente da família, tenta expandir o negócio do crime a Las Vegas, Los Angeles e Cuba. Paralelamente, é revelada a história de Vito Corleone, e de como saiu da Sicília e chegou a Nova Iorque.'),
(5, '12 Homens e uma Sentença', 1957, 'O julgamento de um assassinato em Nova Iorque é frustrado por um único membro, cujo ceticismo força o júri a considerar cuidadosamente as evidências antes de dar o veredito.'),
(6, 'O Senhor dos Anéis: O Retorno do Rei', 2003, 'Gandalf e Aragorn lideram o Mundo dos Homens contra o exército de Sauron para desviar o olhar de Frodo e Sam quando eles se aproximam á Montanha da Perdição com o Um Anel.'),
(7, 'A Lista de Schindler', 1993, 'Na Polônia ocupada pelos alemães durante a Segunda Guerra Mundial, o industrial Oskar Schindler começa a ser preocupar com seus trabalhadores judeus depois de testemunhar sua perseguição pelos nazistas.'),
(8, 'Pulp Fiction: Tempo de Violência', 1994, 'As vidas de dois assassinos da máfia, um boxeador, um gângster e sua esposa, e um par de bandidos se entrelaçam em quatro histórias de violência e redenção.'),
(9, 'O Senhor dos Anéis: A Sociedade do Anel', 2001, 'Um manso hobbit do Condado e oito companheiros partem em uma jornada para destruir o poderoso Um Anel e salvar a Terra-média das Trevas.'),
(10, 'Três Homens em Conflito', 1966, 'Um impostor se junta com dois homens para encontrar fortuna num remoto cemitério.'),
(11, 'Oppenheimer', 2023, 'O físico J. Robert Oppenheimer trabalha com uma equipe de cientistas durante o Projeto Manhattan, levando ao desenvolvimento da bomba atômica.'),
(12, 'Homem-Aranha: Através do Aranhaverso', 2023, 'Depois de se reunir com Gwen Stacy, Homem-Aranha é jogado no multiverso. Lá, o super-herói aracnídeo encontra uma numerosa equipe encarregada de proteger sua própria existência.'),
(13, 'Barbie', 2023, 'Depois de ser expulsa da Barbieland por ser uma boneca de aparência menos do que perfeita, Barbie parte para o mundo humano em busca da verdadeira felicidade.'),
(14, 'John Wick 4: Baba Yaga', 2023, 'O ex-assassino de aluguel John Wick é procurado pelo mundo todo e a recompensa por sua captura aumenta cada vez mais. Wick descobre um caminho para derrotar a Alta Cúpula, mas antes de conquistar sua liberdade, ele precisa enfrentar um novo inimigo com alianças poderosas e forças que transformam velhos amigos em inimigos.'),
(15, 'Guardiões da Galáxia Vol. 3', 2023, 'Peter Quill deve reunir sua equipe para defender o universo e proteger um dos seus. Se a missão não for totalmente bem-sucedida, isso pode levar ao fim dos Guardiões.'),
(16, 'Assassinos da Lua das Flores', 2023, 'Os assassinatos dados a partir de circunstâncias misteriosas na década de 1920, assolando os membros da tribo Osage, acaba desencadeando uma grande investigação envolvendo o poderoso J. Edgar Hoover, considerado o primeiro diretor do FBI.'),
(17, 'Missão: Impossível - Acerto de Contas Parte Um', 2023, 'Ethan Hunt e sua equipe devem rastrear uma nova arma que pode ameaçar toda a humanidade se cair em mãos erradas. Com o destino do mundo em jogo, se inicia uma corrida mortal ao redor do globo. Confrontado por um inimigo misterioso e poderoso, Ethan é forçado a considerar que talvez nada importe mais do que a missão, nem mesmo as vidas daqueles com quem ele mais se importa.'),
(18, 'Dungeons & Dragons: Honra Entre Rebeldes', 2023, 'Um ladrão e um bando de aventureiros embarcam em uma jornada épica para recuperar uma relíquia.'),
(19, 'Indiana Jones e a Relíquia do Destino', 2023, 'O lendário herói arqueólogo está de volta neste aguardado capítulo final da icônica franquia, uma incrível e empolgante aventura cinematográfica.'),
(20, 'As Tartarugas Ninja: Caos Mutante', 2023, 'Os irmãos Tartaruga enfrentam um misterioso crime, mas logo se metem em confusão quando um exército de mutantes é lançado sobre eles.'),
(21, 'Putz! A Coisa Tá Feia', 2006, 'Ratso, um roedor esfomeado, convence a todos de que ele é o pai do patinho feio. Ratso e o patinho mais feio do mundo partem para uma arriscada jornada com inimigos perigosos, problemas de adolescentes e sentimentos paternos inesperados esperando-os pela frente.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `name`) VALUES
(1, 'xavier'),
(2, 'broly'),
(3, 'freeza'),
(4, 'kakaroto'),
(5, 'vegeta'),
(6, 'trunks'),
(7, 'gohan'),
(8, 'janemba'),
(9, 'srpopo'),
(10, 'majin boo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `filme`
--
ALTER TABLE `filme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
