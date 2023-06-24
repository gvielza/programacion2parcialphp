-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 23-06-2023 a las 19:36:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `thomy_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edad_recomendada`
--

CREATE TABLE `edad_recomendada` (
  `id` int(10) UNSIGNED NOT NULL,
  `estadio` varchar(256) NOT NULL,
  `caracteristicas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `edad_recomendada`
--

INSERT INTO `edad_recomendada` (`id`, `estadio`, `caracteristicas`) VALUES
(1, 'primario', 'En este primer estadio comprende desde los 0 a los 6 años. En esta etapa los niños tienen una mente absorbente y pasan por períodos sensibles en los que están especialmente receptivos para adquirir determinadas habilidades y conocimientos. Durante esta etapa, se enfatiza el desarrollo de la independencia, la coordinación motora, el lenguaje, la concentración y el orden. Se utilizan materiales educativos específicos y un entorno preparado para fomentar la exploración y el aprendizaje autónomo.'),
(2, 'sedundario', 'En esta segunda etapa, que comprende de los 6 a los 12 años, los niños son grandes exploradores curiosos y enérgicos. Se enfoca en el desarrollo de habilidades cognitivas más avanzadas, como la investigación, el pensamiento crítico y el razonamiento abstracto. Se fomenta el trabajo en proyectos y la colaboración entre los niños. También se valora la conexión con la naturaleza y el aprendizaje práctico.'),
(3, 'adolescencia temprana', 'Esta tercer etapa comprende desde los 12 a los 18 años. La adolescencia temprana es un período crítico de desarrollo en el que los jóvenes buscan establecer su identidad y encontrar su lugar en el mundo. Se enfoca en el desarrollo de habilidades de pensamiento abstracto, ética y responsabilidad social. Se fomenta el aprendizaje basado en proyectos y la conexión con la comunidad. Se busca que los jóvenes adquieran una perspectiva global y una conciencia social.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juguetes`
--

CREATE TABLE `juguetes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text NOT NULL,
  `tipo_juego_id` int(10) UNSIGNED NOT NULL,
  `material_id` int(10) UNSIGNED NOT NULL,
  `cantidad_piezas` smallint(6) NOT NULL,
  `edad_recomendada_id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(256) NOT NULL,
  `pedagogias_id` int(10) UNSIGNED NOT NULL,
  `coleccion` date NOT NULL,
  `precio` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juguetes`
--

INSERT INTO `juguetes` (`id`, `nombre`, `descripcion`, `tipo_juego_id`, `material_id`, `cantidad_piezas`, `edad_recomendada_id`, `imagen`, `pedagogias_id`, `coleccion`, `precio`) VALUES
(1, 'Juego de encastre', 'Un juego de encastre geométrico es un tipo de juego que consiste en ensamblar piezas con formas geométricas específicas para formar una estructura completa. Estos juegos suelen ser educativos y están diseñados para desarrollar habilidades espaciales, reconocimiento de formas y resolución de problemas.', 1, 1, 20, 1, 'enc1.png', 2, '2020-06-04', 5200.00),
(2, 'Camioncito de madera', 'Un camioncito de madera es un juguete que representa un camión o vehículo de carga y está hecho principalmente de madera. Estos juguetes son populares entre los niños y ofrecen una combinación de juego imaginativo, manipulación táctil y desarrollo motor.\r\nSon juguetes clásicos que ofrecen a los niños la oportunidad de explorar el mundo de los vehículos y el transporte de una manera segura y divertida. Además de proporcionar entretenimiento, también ayudan a desarrollar habilidades motoras finas, coordinación mano-ojo y habilidades imaginativas.', 1, 1, 30, 1, 'enc2.png', 1, '2019-05-03', 8500.00),
(3, 'Animales geométricos', 'Los animales encastrables son juguetes que consisten en piezas individuales con forma de animales que se pueden ensamblar o encajar entre sí para formar una estructura completa. Estos juguetes son populares entre los niños y ofrecen una combinación de juego imaginativo, habilidades motoras y reconocimiento de formas.', 1, 1, 25, 1, 'enc3.png', 3, '2022-12-19', 4800.00),
(4, 'Carro de formas', 'Un carro de formas de madera es un juguete que combina un carro o camión con bloques o piezas de diferentes formas geométricas. Este juguete está diseñado para ayudar a los niños a desarrollar habilidades motoras, reconocimiento de formas y coordinación mano-ojo de una manera divertida y educativa.\r\nEs un juguete versátil y educativo que ofrece a los niños la oportunidad de aprender y jugar de manera interactiva. Al combinar el juego motor y el reconocimiento de formas, este juguete estimula el desarrollo cognitivo, la destreza motora y la creatividad de los niños.', 1, 1, 15, 1, 'enc4.png', 2, '2018-01-16', 9600.00),
(5, 'Pizarra TOP', 'El juego de mesa de trabajo con pizarra y banco proporciona a los niños un espacio dedicado para desarrollar habilidades creativas, motoras y de aprendizaje práctico. Permite a los niños dibujar, escribir, practicar habilidades manuales y fomentar su imaginación en un entorno seguro y controlado. Además, este tipo de juego promueve la concentración, la coordinación motora y la interacción social mientras los niños comparten y juegan juntos en el área de trabajo.', 3, 1, 2, 2, 'pizz1.png', 3, '2017-09-22', 25000.00),
(6, 'Mesa de expresión', 'Una mesa de expresión con pizarra brinda a los niños la oportunidad de desarrollar su creatividad, habilidades motoras y expresión artística. Les permite explorar su imaginación, practicar la escritura, dibujar, jugar con formas y colores, y compartir su trabajo con otros. Esta mesa es un espacio dedicado que fomenta la concentración, la autoexpresión y el aprendizaje a través del arte y la escritura.', 3, 1, 5, 2, 'pizz2.png', 3, '2021-02-24', 32000.00),
(7, 'Mi primera Notebook', 'Un pizarrón en forma de notebook se refiere a un dispositivo que combina las características de un pizarrón tradicional con la apariencia y funcionalidad de una notebook o computadora portátil. Este tipo de pizarrón está diseñado para proporcionar una superficie de escritura y dibujo con tiza tradicional. Ideal para los más pequeños.\r\nIncluye tizas.', 3, 1, 2, 1, 'pizz3.png', 2, '2023-01-18', 7500.00),
(8, 'Pizarra de pie dual', 'Una pizarra dual para fibra y tiza ofrece versatilidad y opciones de escritura a los usuarios. Permite cambiar entre el uso de tiza y marcadores de fibra según las necesidades y preferencias individuales. Esta opción de pizarra es especialmente útil en entornos educativos, reuniones o cualquier otro lugar donde se desee utilizar tanto tiza como marcadores de fibra para la presentación de información o la expresión creativa.', 3, 1, 2, 2, 'pizz4.png', 1, '2019-03-15', 15000.00),
(9, 'Puzzle nocturno de monstruos', 'Un puzzle luminoso para niños es un tipo de rompecabezas que incorpora elementos de iluminación para brindar una experiencia interactiva y visualmente atractiva. Estos puzzles suelen estar diseñados para niños y tienen características especiales que los hacen brillar o emitir luces cuando se completan o se manipulan.', 2, 2, 81, 2, 'romp1.png', 1, '2023-04-12', 10000.00),
(10, 'Puzzle dinosaurio 3D', 'Un puzzle de dinosaurio 3D ofrece una experiencia de construcción divertida y educativa. Permite a los niños y adultos disfrutar del proceso de ensamblaje y aprender sobre la estructura y anatomía de los dinosaurios. Una vez completado, el puzzle se convierte en una figura decorativa que se puede exhibir en una estantería o utilizar para el juego imaginativo.', 2, 2, 50, 3, 'romp2.png', 1, '2023-01-18', 7500.00),
(11, 'Rompecabezas cuerpo humano', 'El rompecabezas de tres piezas del cuerpo humano es una herramienta didáctica que ayuda a los niños a aprender y familiarizarse con las partes básicas del cuerpo humano. A través de la manipulación y el ensamblaje de las piezas, los niños pueden comprender la estructura y la organización del cuerpo, así como aprender los nombres y la ubicación de las principales partes del cuerpo. Es una forma divertida y interactiva de explorar la anatomía humana y promover el aprendizaje activo.', 2, 1, 3, 1, 'romp3.png', 2, '2019-04-09', 6500.00),
(12, 'Robot city PUZZLE', 'El \"Robot City Puzzle\" ofrece una experiencia de construcción entretenida y desafiante, donde los jugadores deben combinar las piezas para recrear la imagen de la ciudad de robots. Es una actividad divertida para los amantes de los rompecabezas y los fanáticos de la temática de los robots y la ciencia ficción. Además de ser un pasatiempo relajante, el rompecabezas también estimula la concentración, la paciencia y las habilidades cognitivas, como la percepción visual y la resolución de problemas.', 2, 2, 36, 2, 'romp4.png', 1, '2023-01-20', 8000.00),
(13, 'Cubo sensorial', 'Los cubos sensoriales son juguetes versátiles que pueden adaptarse a las necesidades y preferencias individuales de cada niño. Además de proporcionar diversión y entretenimiento, los cubos sensoriales estimulan el desarrollo sensorial, la exploración táctil, la percepción visual y la coordinación motora. También pueden ser útiles para niños con necesidades especiales, ya que pueden brindarles una experiencia sensorial enriquecedora.', 4, 3, 1, 1, 'sens1.png', 2, '2023-02-14', 7400.00),
(14, 'Casitas en relieve', 'Estas casitas en relieve de tela para niños son ideales para promover el desarrollo sensorial, la coordinación mano-ojo y la imaginación de los niños. A través de la exploración táctil y el juego imaginativo, los niños pueden desarrollar habilidades motoras finas, estimular su curiosidad y disfrutar de una experiencia sensorial enriquecedora. Estas casitas son juguetes versátiles y seguros que pueden ser utilizados en el hogar, en entornos educativos o incluso como parte de actividades terapéuticas.', 4, 3, 8, 1, 'sens2.png', 2, '2021-08-07', 9000.00),
(15, 'Nido Zorrito', 'Estos nidos en forma de zorro para bebés brindan un espacio seguro y acogedor para que el bebé descanse o juegue bajo la supervisión de un adulto. Sin embargo, es esencial seguir las pautas de seguridad y utilizarlos de manera adecuada. Además, se deben tener en cuenta las recomendaciones de sueño seguro para los bebés, como colocar al bebé boca arriba y en una superficie firme y plana para dormir.', 4, 3, 1, 1, 'sens3.png', 2, '2018-05-02', 6900.00),
(16, 'Pizarra de estímulo', 'Estas pizarras de estímulo sensorial Montessori son herramientas versátiles y educativas que brindan a los niños la oportunidad de explorar y desarrollar sus sentidos de manera activa. Ayudan a promover habilidades sensoriales, cognitivas y motoras, así como la creatividad, la concentración y la resolución de problemas. Además, fomentan la autonomía y el aprendizaje autodirigido, que son aspectos clave del enfoque educativo Montessori.', 4, 1, 1, 1, 'sens4.png', 2, '2022-12-09', 13500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `caracteristicas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`id`, `nombre`, `caracteristicas`) VALUES
(1, 'madera', 'Principal tipo de material utilizado por su calidez y durabilidad. Se le da principal importancia al uso de materiales naturales y sostenibles.'),
(2, 'cartón', 'se suelen utilizar en juegos y actividades relacionadas con el lenguaje, como las tarjetas de palabras o los libros de lectura.'),
(3, 'tela y cuero', 'estos materiales suelen utilizarse en materiales sensoriales como las cajas de texturas o los juegos de discriminación táctil.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedagogias`
--

CREATE TABLE `pedagogias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `foto_perfil` varchar(256) NOT NULL,
  `caracteristicas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedagogias`
--

INSERT INTO `pedagogias` (`id`, `nombre`, `foto_perfil`, `caracteristicas`) VALUES
(1, 'Waldorf', 'waldorf.jpg', 'La pedagogía Waldorf, también conocida como educación Waldorf o método Waldorf, es un enfoque educativo basado en la filosofía del filósofo austriaco Rudolf Steiner. Este enfoque se centra en el desarrollo integral del niño, abarcando aspectos intelectuales, artísticos y prácticos.\r\n\r\nAlgunos de los principios fundamentales de la pedagogía Waldorf son los siguientes:\r\n\r\n1.Desarrollo de la individualidad: La pedagogía Waldorf considera que cada niño es único y tiene un potencial individual. Se busca desarrollar todas las capacidades del niño, incluyendo la creatividad, la imaginación, la inteligencia emocional y la inteligencia práctica.\r\n\r\n2.Aprendizaje holístico: Se enfatiza la integración de todas las áreas del conocimiento. No se separa el aprendizaje en materias estancas, sino que se busca una comprensión global y conectada de los diferentes temas. Se promueve el aprendizaje a través de la experiencia directa y la participación activa del niño.\r\n\r\n3.Importancia del juego y el arte: Se considera que el juego libre y el arte son herramientas fundamentales para el desarrollo del niño. Se brinda especial importancia a las actividades creativas, como el dibujo, la pintura, la música y la euritmia (una forma de expresión corporal).\r\n\r\n4.Respeto por el ritmo individual: Se valora el respeto por el ritmo de desarrollo de cada niño. Se busca evitar la presión académica prematura y se permite que los niños avancen a su propio ritmo. Se les brinda tiempo para explorar, investigar y comprender el mundo de manera gradual y respetuosa.\r\n\r\n5.Ambiente armonioso: Se presta atención al entorno en el que se desenvuelven los niños. Los espacios físicos suelen ser cálidos, acogedores y llenos de elementos naturales. Se procura un ambiente ordenado y estético, con materiales de calidad que fomenten la creatividad y la imaginación.\r\n\r\n6.Participación activa de los padres: La pedagogía Waldorf promueve una estrecha colaboración entre padres, maestros y la comunidad educativa en general. Se busca una participación activa de los padres en la vida escolar y se fomenta una relación de confianza y respeto entre las familias y la escuela.\r\n\r\nEn general, la pedagogía Waldorf busca educar a los niños de manera integral, promoviendo su desarrollo emocional, social, intelectual y artístico. Se enfoca en cultivar la curiosidad, la creatividad y el amor por el aprendizaje, brindando un ambiente propicio para el desarrollo de sus habilidades individuales.'),
(2, 'Montessori', 'montessori.jpg', 'La pedagogía Montessori es un enfoque educativo desarrollado por la médica y pedagoga italiana María Montessori a principios del siglo XX. Se basa en la idea de que cada niño es un ser único con su propio potencial de desarrollo y capacidad de aprendizaje.\r\n\r\nAlgunos de los principios clave de la pedagogía Montessori son los siguientes:\r\n\r\n1.Ambiente preparado: Se crea un entorno cuidadosamente preparado para el niño, con materiales y actividades adecuadas a su nivel de desarrollo. El ambiente es ordenado, estético y promueve la autonomía y la libertad de elección.\r\n\r\n2.Autoaprendizaje: Los niños tienen la libertad de elegir actividades que les interesen y trabajar a su propio ritmo. Se fomenta el autoaprendizaje y la capacidad de concentración. Los materiales Montessori están diseñados para ser manipulados de manera independiente por los niños, permitiéndoles descubrir y explorar conceptos por sí mismos.\r\n\r\n3.Educación sensorial: Se enfatiza la importancia de los sentidos en el proceso de aprendizaje. Los materiales Montessori están diseñados para estimular los sentidos y permitir a los niños explorar y comprender el mundo que les rodea. Se utilizan materiales sensoriales para desarrollar habilidades perceptivas, discriminación de tamaños, formas, texturas, sonidos, entre otros.\r\n\r\n4.Aprendizaje basado en la experiencia: Los niños aprenden a través de la experiencia directa y la manipulación de materiales concretos. Se fomenta el aprendizaje práctico y la resolución de problemas. Los materiales Montessori están diseñados para facilitar la comprensión de conceptos abstractos a través de la manipulación y la experimentación.\r\n\r\n5.Educación individualizada: Cada niño es respetado como un individuo único con sus propias necesidades y ritmo de desarrollo. Los maestros observan y guían a cada niño de manera individualizada, brindando apoyo y oportunidades de aprendizaje personalizadas. Se busca satisfacer las necesidades particulares de cada niño, respetando sus intereses y ritmos de aprendizaje.\r\n\r\n6.Educación para la vida: El objetivo último de la educación Montessori es preparar a los niños para la vida en sociedad. Se promueve el desarrollo de habilidades sociales, emocionales y éticas, así como la independencia, la responsabilidad y la autodisciplina. Se busca fomentar la formación de individuos autónomos, respetuosos y colaborativos.\r\n\r\nEn resumen, la pedagogía Montessori se centra en el desarrollo integral del niño, brindando un entorno preparado y materiales educativos adecuados para fomentar su autonomía, curiosidad y amor por el aprendizaje. Se basa en el respeto por el niño como un ser activo y único, que construye su propio conocimiento a través de la interacción con su entorno.'),
(3, 'Constructivismo de Lev Vygotsky ', 'vigotsky.jpg', 'La pedagogía de Lev Vygotsky se basa en la teoría sociocultural del desarrollo humano y del aprendizaje. Vygotsky propuso que el aprendizaje es un proceso social en el que la interacción con otras personas y el entorno cultural juegan un papel fundamental en el desarrollo cognitivo.\r\n\r\nEn el enfoque constructivista de Vygotsky, se destacan los siguientes aspectos:\r\n\r\n1.Zona de Desarrollo Próximo (ZDP): Vygotsky introdujo el concepto de Zona de Desarrollo Próximo, que se refiere a la brecha entre lo que un niño puede hacer de forma independiente y lo que puede hacer con la ayuda y el apoyo de un adulto o compañero más competente. El aprendizaje se produce cuando el niño se involucra en actividades y desafíos que están dentro de su ZDP, pero que aún no puede realizar por sí mismo. Los adultos o pares más capacitados pueden proporcionar la orientación necesaria para que el niño avance en su aprendizaje.\r\n\r\n2.Papel del lenguaje y la interacción social: Para Vygotsky, el lenguaje desempeña un papel crucial en el desarrollo cognitivo y en el aprendizaje. El lenguaje permite la comunicación y la mediación de conceptos y significados. A través de la interacción social y el diálogo con otros, los niños internalizan conocimientos y desarrollan habilidades cognitivas superiores.\r\n\r\n3.Importancia de las herramientas y los signos: Vygotsky enfatizó la importancia de las herramientas y los signos culturales en el proceso de aprendizaje. Las herramientas, tanto físicas como simbólicas, como los lápices, los libros, los mapas o los números, actúan como mediadores que ayudan al niño a resolver problemas y desarrollar habilidades cognitivas más avanzadas.\r\n\r\n4.Aprendizaje colaborativo: Según la perspectiva de Vygotsky, el aprendizaje se ve enriquecido a través de la colaboración y la interacción con otros. El trabajo en grupos, la discusión y la cooperación entre compañeros de aprendizaje promueven la construcción conjunta del conocimiento y el desarrollo de habilidades sociales.\r\n\r\nEn resumen, la pedagogía constructivista de Vygotsky destaca la importancia del aprendizaje social y la interacción con otros en el desarrollo cognitivo de los niños. Se enfoca en aprovechar la Zona de Desarrollo Próximo del niño, brindando apoyo y desafíos adecuados para fomentar su aprendizaje. El lenguaje, las herramientas y la colaboración se consideran elementos fundamentales en el proceso educativo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_juegos`
--

CREATE TABLE `tipos_juegos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipos` varchar(256) NOT NULL,
  `pedagogia_id` int(10) UNSIGNED NOT NULL,
  `edad_recomendada_id` int(10) UNSIGNED NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_juegos`
--

INSERT INTO `tipos_juegos` (`id`, `tipos`, `pedagogia_id`, `edad_recomendada_id`, `Descripcion`) VALUES
(1, 'Encastre', 2, 1, 'Los juegos de encastre son juguetes o actividades que consisten en ensamblar piezas o elementos de diferentes formas para formar una estructura completa o un diseño específico. Estos juegos suelen ser populares entre los niños pequeños y se utilizan como herramienta educativa para desarrollar habilidades motoras, cognitivas y de resolución de problemas.\r\nEn general, los juegos de encastre son una forma divertida y educativa de promover el desarrollo motor, cognitivo y creativo de los niños. Estos juegos ayudan a mejorar la coordinación, la destreza manual, el pensamiento lógico y la imaginación mientras los niños se divierten y exploran diferentes formas y diseños.'),
(2, 'Rompecabezas', 1, 2, 'Los rompecabezas son juegos o actividades que consisten en armar una imagen o un diseño completo a partir de piezas que se deben encajar correctamente. Estos juegos son populares entre niños y adultos, y ofrecen una combinación de desafío, entretenimiento y estimulación mental.\r\nEn general, los rompecabezas son una forma divertida y desafiante de entretenimiento que estimula el cerebro y desarrolla habilidades cognitivas. Ya sea como una actividad individual o compartida con otros, armar un rompecabezas proporciona un ejercicio mental gratificante y puede ser una excelente forma de relajarse y desconectar del mundo exterior.'),
(3, 'Pizarra', 3, 3, 'Una pizarra de juguete es un objeto diseñado para que los niños puedan dibujar, escribir y expresar su creatividad de una manera divertida y segura. A menudo se utiliza como herramienta educativa para fomentar el aprendizaje y la exploración.\r\nEn resumen, una pizarra de juguete es un juguete interactivo que permite a los niños dibujar, escribir y explorar su creatividad. Proporciona una plataforma divertida y segura para el aprendizaje y el desarrollo de habilidades artísticas y de escritura.\r\n\r\n\r\n\r\n\r\n\r\n'),
(4, 'Sensorial', 2, 1, 'Los juegos sensoriales son actividades diseñadas para estimular y desarrollar los sentidos de los niños a través de experiencias táctiles, visuales, auditivas, olfativas y gustativas. Estos juegos se centran en la exploración sensorial y brindan oportunidades para que los niños descubran y experimenten diferentes estímulos sensoriales de manera lúdica y divertida.\r\nEn resumen, los juegos sensoriales proporcionan a los niños experiencias enriquecedoras y estimulantes que promueven el desarrollo sensorial, cognitivo y creativo. Estas actividades permiten a los niños explorar y experimentar diferentes estímulos sensoriales, lo que contribuye al desarrollo de habilidades motoras, cognitivas y emocionales. Los juegos sensoriales son divertidos, interactivos y brindan una forma única de aprendizaje y descubrimiento para los niños.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_juguete_x_pedagogia`
--

CREATE TABLE `tipo_juguete_x_pedagogia` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_juguete_id` int(10) UNSIGNED NOT NULL,
  `tipo_pedagogia_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_usuario` varchar(256) NOT NULL,
  `nombre_completo` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `rol` enum('usuario','admin','superadmin','') NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `nombre_completo`, `password`, `email`, `rol`) VALUES
(1, 'carolina_bp', 'Carolina Pineiro', 'thomas0403', 'carolina_bp@outlook.com', 'superadmin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `edad_recomendada`
--
ALTER TABLE `edad_recomendada`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `juguetes`
--
ALTER TABLE `juguetes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `edad_recomendada_id` (`edad_recomendada_id`),
  ADD KEY `pedagogias_id` (`pedagogias_id`),
  ADD KEY `tipo_juego_id` (`tipo_juego_id`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedagogias`
--
ALTER TABLE `pedagogias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos_juegos`
--
ALTER TABLE `tipos_juegos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedagogia_id` (`pedagogia_id`),
  ADD KEY `edad_recomendada_id` (`edad_recomendada_id`);

--
-- Indices de la tabla `tipo_juguete_x_pedagogia`
--
ALTER TABLE `tipo_juguete_x_pedagogia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_juguete_id` (`tipo_juguete_id`),
  ADD KEY `tipo_pedagogia_id` (`tipo_pedagogia_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `edad_recomendada`
--
ALTER TABLE `edad_recomendada`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `juguetes`
--
ALTER TABLE `juguetes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedagogias`
--
ALTER TABLE `pedagogias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipos_juegos`
--
ALTER TABLE `tipos_juegos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_juguete_x_pedagogia`
--
ALTER TABLE `tipo_juguete_x_pedagogia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juguetes`
--
ALTER TABLE `juguetes`
  ADD CONSTRAINT `juguetes_ibfk_1` FOREIGN KEY (`tipo_juego_id`) REFERENCES `tipos_juegos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `juguetes_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `juguetes_ibfk_3` FOREIGN KEY (`pedagogias_id`) REFERENCES `pedagogias` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `juguetes_ibfk_4` FOREIGN KEY (`edad_recomendada_id`) REFERENCES `edad_recomendada` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipos_juegos`
--
ALTER TABLE `tipos_juegos`
  ADD CONSTRAINT `tipos_juegos_ibfk_1` FOREIGN KEY (`pedagogia_id`) REFERENCES `pedagogias` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tipos_juegos_ibfk_2` FOREIGN KEY (`edad_recomendada_id`) REFERENCES `edad_recomendada` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo_juguete_x_pedagogia`
--
ALTER TABLE `tipo_juguete_x_pedagogia`
  ADD CONSTRAINT `tipo_juguete_x_pedagogia_ibfk_1` FOREIGN KEY (`tipo_pedagogia_id`) REFERENCES `pedagogias` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tipo_juguete_x_pedagogia_ibfk_2` FOREIGN KEY (`tipo_juguete_id`) REFERENCES `tipos_juegos` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
