CREATE DATABASE  IF NOT EXISTS `rooms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rooms`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rooms
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `salas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `duracion` int(11) NOT NULL,
  `jugMin` int(11) NOT NULL,
  `jugMax` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `dificultad` varchar(45) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `imagen` varchar(45) NOT NULL,
  `nivelDificultad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (1,'Laboratorio',60,2,5,50,'FÁCIL','En el año 2018, el Dr. M. Boeiro creó un laboratorio en el que experimentaba con sustancias peligrosas y altamente contaminantes. A finales de año, Boeiro huyó y abandonó el laboratorio, aparentemente por no encontrar la fórmula para detener la salida de un gas muy nocivo que tras unos días de exposición al mismo provoca la muerte. Lamentablemente, alguien ha abierto la puerta del laboratorio y ahora la sociedad entera confía en que resolváis esta inminente amenaza. Tu equipo está integrado por reconocidos científicos que deben entrar al laboratorio secreto y eliminar los gases tóxicos… Buena suerte.','room1.expandida.jpg',3),(2,'Haunted Hospital',60,2,5,60,'DIFÍCIL','En este hospital nada es lo que parece… Os meteréis en el papel de unos pacientes que deben descubrir los misterios que esconden sus paredes. Con una emocionante historia de fondo en la que vosotros sois los protagonistas, durante 60 intensos y emocionantes minutos, deberéis resolver acertijos, puzzles y rompecabezas, y como no, descubrir el modo de salir del Hospital.','room2.expandida.jpg',5),(3,'El Búnker',60,2,5,55,'MEDIO','Nuestro mejor espía, Mr. Pig, ha resultado ser un agente doble. Ha robado las llaves de lanzamiento de un misil nuclear y planea comenzar la Tercera Guerra Mundial desde su Búnker. Por suerte, contamos con vosotros, los mejores agentes secretos del planeta. Habéis localizado el Búnker, pero, al llegar, solo quedan 60 minutos para el lanzamiento. ¡Buena suerte!','room3.expandida.jpg',4),(4,'El Dr. Nick',60,2,5,55,'MEDIO','La Dra. Muller, dirigía el psiquiátrico Uinta State Hospital desde hacía unos años. Se trataba del centro más prestigioso de la zona. Se empleaban las técnicas más novedosas y con mejores resultados para sus pacientes. Pero de repente un día empezaron a desaparecer varios pacientes. Las autoridades comenzaron a estudiar los diferentes casos y tras varios meses sin conseguir esclarecer los motivos de las desapariciones, el juez del condado decidió la clausura del centro y la entrada en prisión de la Dra. Muller. Vuestras vacaciones de verano os han traído al bosque nacional de Uinta. En uno de vuestras rutas vespertinas, el más curioso del grupo da con el psiquiátrico y os incita a entrar a inspeccionar. Por culpa de la curiosidad, el grupo pierde a un miembro, y el resto os veis obligados a descubrir su paradero. Pero para ello deberéis resolver los enigmas acontecidos allí. Justo ahora que vuestra curiosidad os ha hecho adentraros en el psiquiátrico, la Dra. Muller ha escapado de prisión y ha vuelto a desaparecer gente. Esta vez no son pacientes, son curiosos como vosotros que se han adentrado en sus dominios. ¿Seréis los siguientes en desaparecer? ¿O por el contrario resolveréis el enigma?','room4.expandida.jpeg',4),(5,'ZEO 101',60,2,5,60,'DIFÍCIL','¡Bienvenidos a RK Corporation ingenieros! Habéis sido los elegidos entre más de 300 candidatos para afrontar una importante misión. Si aceptáis el reto, viajaréis a la estación espacial ZEO 101. Una vez en la estación seréis trasladados a Crantor, un nuevo planeta descubierto por nuestro departamento astrofísico, donde pasaréis unos días realizando diversas pruebas científicas. Dichas pruebas determinarán si el planeta presenta los requisitos necesarios para proceder a su colonización. ¡Contamos con vosotros!','room5.expandida.jpg',5),(6,'Almacén soviético',60,2,5,50,'FÁCIL','Sois un equipo de periodistas. Un informador os ha dado el aviso de una posible transacción de armas ilegales en un viejo almacén soviético situado en el Muelle 14. No habéis podido localizar de nuevo al informador y no tenéis forma de comprobar si esa información es veraz…a menos que vayáis a comprobar si es así y podáis sacar a la luz una importante red de contrabando de armas. Escribir un artículo sobre lo que ocurre en este almacén es fundamental para vosotros, ya que esto os llevará a un éxito periodístico rotundo. El tiempo corre en vuestra contra y no podéis dejar escapar esta oportunidad. ¿Podréis hacerlo? ','room6.expandida.jpg',3);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `horario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSala` int(11) NOT NULL,
  `diaHoraInicio` datetime NOT NULL,
  `disponibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_horario_salas_idx` (`idSala`),
  CONSTRAINT `fk_horario_salas` FOREIGN KEY (`idSala`) REFERENCES `salas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2690 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (2354,1,'2019-07-18 10:00:00',1),(2355,1,'2019-07-18 11:00:00',1),(2356,1,'2019-07-18 12:00:00',1),(2357,1,'2019-07-18 13:00:00',1),(2358,1,'2019-07-19 10:00:00',1),(2359,1,'2019-07-19 11:00:00',1),(2360,1,'2019-07-19 12:00:00',1),(2361,1,'2019-07-19 13:00:00',1),(2362,1,'2019-07-20 10:00:00',1),(2363,1,'2019-07-20 11:00:00',1),(2364,1,'2019-07-20 12:00:00',1),(2365,1,'2019-07-20 13:00:00',1),(2366,1,'2019-07-21 10:00:00',1),(2367,1,'2019-07-21 11:00:00',1),(2368,1,'2019-07-21 12:00:00',1),(2369,1,'2019-07-21 13:00:00',1),(2370,1,'2019-07-22 10:00:00',1),(2371,1,'2019-07-22 11:00:00',1),(2372,1,'2019-07-22 12:00:00',1),(2373,1,'2019-07-22 13:00:00',1),(2374,1,'2019-07-23 10:00:00',1),(2375,1,'2019-07-23 11:00:00',1),(2376,1,'2019-07-23 12:00:00',1),(2377,1,'2019-07-23 13:00:00',1),(2378,1,'2019-07-24 10:00:00',1),(2379,1,'2019-07-24 11:00:00',1),(2380,1,'2019-07-24 12:00:00',1),(2381,1,'2019-07-24 13:00:00',1),(2382,1,'2019-07-25 10:00:00',1),(2383,1,'2019-07-25 11:00:00',1),(2384,1,'2019-07-25 12:00:00',1),(2385,1,'2019-07-25 13:00:00',1),(2386,1,'2019-07-26 10:00:00',1),(2387,1,'2019-07-26 11:00:00',1),(2388,1,'2019-07-26 12:00:00',1),(2389,1,'2019-07-26 13:00:00',1),(2390,1,'2019-07-27 10:00:00',1),(2391,1,'2019-07-27 11:00:00',1),(2392,1,'2019-07-27 12:00:00',1),(2393,1,'2019-07-27 13:00:00',1),(2394,1,'2019-07-28 10:00:00',1),(2395,1,'2019-07-28 11:00:00',1),(2396,1,'2019-07-28 12:00:00',1),(2397,1,'2019-07-28 13:00:00',1),(2398,1,'2019-07-29 10:00:00',1),(2399,1,'2019-07-29 11:00:00',1),(2400,1,'2019-07-29 12:00:00',1),(2401,1,'2019-07-29 13:00:00',1),(2402,1,'2019-07-30 10:00:00',1),(2403,1,'2019-07-30 11:00:00',1),(2404,1,'2019-07-30 12:00:00',1),(2405,1,'2019-07-30 13:00:00',1),(2406,1,'2019-07-31 10:00:00',1),(2407,1,'2019-07-31 11:00:00',1),(2408,1,'2019-07-31 12:00:00',1),(2409,1,'2019-07-31 13:00:00',1),(2410,2,'2019-07-18 10:00:00',1),(2411,2,'2019-07-18 11:00:00',1),(2412,2,'2019-07-18 12:00:00',1),(2413,2,'2019-07-18 13:00:00',1),(2414,2,'2019-07-19 10:00:00',1),(2415,2,'2019-07-19 11:00:00',1),(2416,2,'2019-07-19 12:00:00',1),(2417,2,'2019-07-19 13:00:00',1),(2418,2,'2019-07-20 10:00:00',1),(2419,2,'2019-07-20 11:00:00',1),(2420,2,'2019-07-20 12:00:00',1),(2421,2,'2019-07-20 13:00:00',1),(2422,2,'2019-07-21 10:00:00',1),(2423,2,'2019-07-21 11:00:00',1),(2424,2,'2019-07-21 12:00:00',1),(2425,2,'2019-07-21 13:00:00',1),(2426,2,'2019-07-22 10:00:00',1),(2427,2,'2019-07-22 11:00:00',1),(2428,2,'2019-07-22 12:00:00',1),(2429,2,'2019-07-22 13:00:00',1),(2430,2,'2019-07-23 10:00:00',1),(2431,2,'2019-07-23 11:00:00',1),(2432,2,'2019-07-23 12:00:00',1),(2433,2,'2019-07-23 13:00:00',1),(2434,2,'2019-07-24 10:00:00',1),(2435,2,'2019-07-24 11:00:00',1),(2436,2,'2019-07-24 12:00:00',1),(2437,2,'2019-07-24 13:00:00',1),(2438,2,'2019-07-25 10:00:00',1),(2439,2,'2019-07-25 11:00:00',1),(2440,2,'2019-07-25 12:00:00',1),(2441,2,'2019-07-25 13:00:00',1),(2442,2,'2019-07-26 10:00:00',1),(2443,2,'2019-07-26 11:00:00',1),(2444,2,'2019-07-26 12:00:00',1),(2445,2,'2019-07-26 13:00:00',1),(2446,2,'2019-07-27 10:00:00',1),(2447,2,'2019-07-27 11:00:00',1),(2448,2,'2019-07-27 12:00:00',1),(2449,2,'2019-07-27 13:00:00',1),(2450,2,'2019-07-28 10:00:00',1),(2451,2,'2019-07-28 11:00:00',1),(2452,2,'2019-07-28 12:00:00',1),(2453,2,'2019-07-28 13:00:00',1),(2454,2,'2019-07-29 10:00:00',1),(2455,2,'2019-07-29 11:00:00',1),(2456,2,'2019-07-29 12:00:00',1),(2457,2,'2019-07-29 13:00:00',1),(2458,2,'2019-07-30 10:00:00',1),(2459,2,'2019-07-30 11:00:00',1),(2460,2,'2019-07-30 12:00:00',1),(2461,2,'2019-07-30 13:00:00',1),(2462,2,'2019-07-31 10:00:00',1),(2463,2,'2019-07-31 11:00:00',1),(2464,2,'2019-07-31 12:00:00',1),(2465,2,'2019-07-31 13:00:00',1),(2466,3,'2019-07-18 10:00:00',1),(2467,3,'2019-07-18 11:00:00',1),(2468,3,'2019-07-18 12:00:00',1),(2469,3,'2019-07-18 13:00:00',1),(2470,3,'2019-07-19 10:00:00',1),(2471,3,'2019-07-19 11:00:00',1),(2472,3,'2019-07-19 12:00:00',1),(2473,3,'2019-07-19 13:00:00',1),(2474,3,'2019-07-20 10:00:00',1),(2475,3,'2019-07-20 11:00:00',1),(2476,3,'2019-07-20 12:00:00',1),(2477,3,'2019-07-20 13:00:00',1),(2478,3,'2019-07-21 10:00:00',1),(2479,3,'2019-07-21 11:00:00',1),(2480,3,'2019-07-21 12:00:00',1),(2481,3,'2019-07-21 13:00:00',1),(2482,3,'2019-07-22 10:00:00',1),(2483,3,'2019-07-22 11:00:00',1),(2484,3,'2019-07-22 12:00:00',1),(2485,3,'2019-07-22 13:00:00',1),(2486,3,'2019-07-23 10:00:00',1),(2487,3,'2019-07-23 11:00:00',1),(2488,3,'2019-07-23 12:00:00',1),(2489,3,'2019-07-23 13:00:00',1),(2490,3,'2019-07-24 10:00:00',1),(2491,3,'2019-07-24 11:00:00',1),(2492,3,'2019-07-24 12:00:00',1),(2493,3,'2019-07-24 13:00:00',1),(2494,3,'2019-07-25 10:00:00',1),(2495,3,'2019-07-25 11:00:00',1),(2496,3,'2019-07-25 12:00:00',1),(2497,3,'2019-07-25 13:00:00',1),(2498,3,'2019-07-26 10:00:00',1),(2499,3,'2019-07-26 11:00:00',1),(2500,3,'2019-07-26 12:00:00',1),(2501,3,'2019-07-26 13:00:00',1),(2502,3,'2019-07-27 10:00:00',1),(2503,3,'2019-07-27 11:00:00',1),(2504,3,'2019-07-27 12:00:00',1),(2505,3,'2019-07-27 13:00:00',1),(2506,3,'2019-07-28 10:00:00',1),(2507,3,'2019-07-28 11:00:00',1),(2508,3,'2019-07-28 12:00:00',1),(2509,3,'2019-07-28 13:00:00',1),(2510,3,'2019-07-29 10:00:00',1),(2511,3,'2019-07-29 11:00:00',1),(2512,3,'2019-07-29 12:00:00',1),(2513,3,'2019-07-29 13:00:00',1),(2514,3,'2019-07-30 10:00:00',1),(2515,3,'2019-07-30 11:00:00',1),(2516,3,'2019-07-30 12:00:00',1),(2517,3,'2019-07-30 13:00:00',1),(2518,3,'2019-07-31 10:00:00',1),(2519,3,'2019-07-31 11:00:00',1),(2520,3,'2019-07-31 12:00:00',1),(2521,3,'2019-07-31 13:00:00',1),(2522,4,'2019-07-18 10:00:00',1),(2523,4,'2019-07-18 11:00:00',1),(2524,4,'2019-07-18 12:00:00',1),(2525,4,'2019-07-18 13:00:00',1),(2526,4,'2019-07-19 10:00:00',1),(2527,4,'2019-07-19 11:00:00',1),(2528,4,'2019-07-19 12:00:00',1),(2529,4,'2019-07-19 13:00:00',1),(2530,4,'2019-07-20 10:00:00',1),(2531,4,'2019-07-20 11:00:00',1),(2532,4,'2019-07-20 12:00:00',1),(2533,4,'2019-07-20 13:00:00',1),(2534,4,'2019-07-21 10:00:00',1),(2535,4,'2019-07-21 11:00:00',1),(2536,4,'2019-07-21 12:00:00',1),(2537,4,'2019-07-21 13:00:00',1),(2538,4,'2019-07-22 10:00:00',1),(2539,4,'2019-07-22 11:00:00',1),(2540,4,'2019-07-22 12:00:00',1),(2541,4,'2019-07-22 13:00:00',1),(2542,4,'2019-07-23 10:00:00',1),(2543,4,'2019-07-23 11:00:00',1),(2544,4,'2019-07-23 12:00:00',1),(2545,4,'2019-07-23 13:00:00',1),(2546,4,'2019-07-24 10:00:00',1),(2547,4,'2019-07-24 11:00:00',1),(2548,4,'2019-07-24 12:00:00',1),(2549,4,'2019-07-24 13:00:00',1),(2550,4,'2019-07-25 10:00:00',1),(2551,4,'2019-07-25 11:00:00',1),(2552,4,'2019-07-25 12:00:00',1),(2553,4,'2019-07-25 13:00:00',1),(2554,4,'2019-07-26 10:00:00',1),(2555,4,'2019-07-26 11:00:00',1),(2556,4,'2019-07-26 12:00:00',1),(2557,4,'2019-07-26 13:00:00',1),(2558,4,'2019-07-27 10:00:00',1),(2559,4,'2019-07-27 11:00:00',1),(2560,4,'2019-07-27 12:00:00',1),(2561,4,'2019-07-27 13:00:00',1),(2562,4,'2019-07-28 10:00:00',1),(2563,4,'2019-07-28 11:00:00',1),(2564,4,'2019-07-28 12:00:00',1),(2565,4,'2019-07-28 13:00:00',1),(2566,4,'2019-07-29 10:00:00',1),(2567,4,'2019-07-29 11:00:00',1),(2568,4,'2019-07-29 12:00:00',1),(2569,4,'2019-07-29 13:00:00',1),(2570,4,'2019-07-30 10:00:00',1),(2571,4,'2019-07-30 11:00:00',1),(2572,4,'2019-07-30 12:00:00',1),(2573,4,'2019-07-30 13:00:00',1),(2574,4,'2019-07-31 10:00:00',1),(2575,4,'2019-07-31 11:00:00',1),(2576,4,'2019-07-31 12:00:00',1),(2577,4,'2019-07-31 13:00:00',1),(2578,5,'2019-07-18 10:00:00',1),(2579,5,'2019-07-18 11:00:00',1),(2580,5,'2019-07-18 12:00:00',1),(2581,5,'2019-07-18 13:00:00',1),(2582,5,'2019-07-19 10:00:00',1),(2583,5,'2019-07-19 11:00:00',1),(2584,5,'2019-07-19 12:00:00',1),(2585,5,'2019-07-19 13:00:00',1),(2586,5,'2019-07-20 10:00:00',1),(2587,5,'2019-07-20 11:00:00',1),(2588,5,'2019-07-20 12:00:00',1),(2589,5,'2019-07-20 13:00:00',1),(2590,5,'2019-07-21 10:00:00',1),(2591,5,'2019-07-21 11:00:00',1),(2592,5,'2019-07-21 12:00:00',1),(2593,5,'2019-07-21 13:00:00',1),(2594,5,'2019-07-22 10:00:00',1),(2595,5,'2019-07-22 11:00:00',1),(2596,5,'2019-07-22 12:00:00',1),(2597,5,'2019-07-22 13:00:00',1),(2598,5,'2019-07-23 10:00:00',1),(2599,5,'2019-07-23 11:00:00',1),(2600,5,'2019-07-23 12:00:00',1),(2601,5,'2019-07-23 13:00:00',1),(2602,5,'2019-07-24 10:00:00',1),(2603,5,'2019-07-24 11:00:00',1),(2604,5,'2019-07-24 12:00:00',1),(2605,5,'2019-07-24 13:00:00',1),(2606,5,'2019-07-25 10:00:00',1),(2607,5,'2019-07-25 11:00:00',1),(2608,5,'2019-07-25 12:00:00',1),(2609,5,'2019-07-25 13:00:00',1),(2610,5,'2019-07-26 10:00:00',1),(2611,5,'2019-07-26 11:00:00',1),(2612,5,'2019-07-26 12:00:00',1),(2613,5,'2019-07-26 13:00:00',1),(2614,5,'2019-07-27 10:00:00',1),(2615,5,'2019-07-27 11:00:00',1),(2616,5,'2019-07-27 12:00:00',1),(2617,5,'2019-07-27 13:00:00',1),(2618,5,'2019-07-28 10:00:00',1),(2619,5,'2019-07-28 11:00:00',1),(2620,5,'2019-07-28 12:00:00',1),(2621,5,'2019-07-28 13:00:00',1),(2622,5,'2019-07-29 10:00:00',1),(2623,5,'2019-07-29 11:00:00',1),(2624,5,'2019-07-29 12:00:00',1),(2625,5,'2019-07-29 13:00:00',1),(2626,5,'2019-07-30 10:00:00',1),(2627,5,'2019-07-30 11:00:00',1),(2628,5,'2019-07-30 12:00:00',1),(2629,5,'2019-07-30 13:00:00',1),(2630,5,'2019-07-31 10:00:00',1),(2631,5,'2019-07-31 11:00:00',1),(2632,5,'2019-07-31 12:00:00',1),(2633,5,'2019-07-31 13:00:00',1),(2634,6,'2019-07-18 10:00:00',1),(2635,6,'2019-07-18 11:00:00',1),(2636,6,'2019-07-18 12:00:00',1),(2637,6,'2019-07-18 13:00:00',1),(2638,6,'2019-07-19 10:00:00',1),(2639,6,'2019-07-19 11:00:00',1),(2640,6,'2019-07-19 12:00:00',1),(2641,6,'2019-07-19 13:00:00',1),(2642,6,'2019-07-20 10:00:00',1),(2643,6,'2019-07-20 11:00:00',1),(2644,6,'2019-07-20 12:00:00',1),(2645,6,'2019-07-20 13:00:00',1),(2646,6,'2019-07-21 10:00:00',1),(2647,6,'2019-07-21 11:00:00',1),(2648,6,'2019-07-21 12:00:00',1),(2649,6,'2019-07-21 13:00:00',1),(2650,6,'2019-07-22 10:00:00',1),(2651,6,'2019-07-22 11:00:00',1),(2652,6,'2019-07-22 12:00:00',1),(2653,6,'2019-07-22 13:00:00',1),(2654,6,'2019-07-23 10:00:00',1),(2655,6,'2019-07-23 11:00:00',1),(2656,6,'2019-07-23 12:00:00',1),(2657,6,'2019-07-23 13:00:00',1),(2658,6,'2019-07-24 10:00:00',1),(2659,6,'2019-07-24 11:00:00',1),(2660,6,'2019-07-24 12:00:00',1),(2661,6,'2019-07-24 13:00:00',1),(2662,6,'2019-07-25 10:00:00',1),(2663,6,'2019-07-25 11:00:00',1),(2664,6,'2019-07-25 12:00:00',1),(2665,6,'2019-07-25 13:00:00',1),(2666,6,'2019-07-26 10:00:00',1),(2667,6,'2019-07-26 11:00:00',1),(2668,6,'2019-07-26 12:00:00',1),(2669,6,'2019-07-26 13:00:00',1),(2670,6,'2019-07-27 10:00:00',1),(2671,6,'2019-07-27 11:00:00',1),(2672,6,'2019-07-27 12:00:00',1),(2673,6,'2019-07-27 13:00:00',1),(2674,6,'2019-07-28 10:00:00',1),(2675,6,'2019-07-28 11:00:00',1),(2676,6,'2019-07-28 12:00:00',1),(2677,6,'2019-07-28 13:00:00',1),(2678,6,'2019-07-29 10:00:00',1),(2679,6,'2019-07-29 11:00:00',1),(2680,6,'2019-07-29 12:00:00',1),(2681,6,'2019-07-29 13:00:00',1),(2682,6,'2019-07-30 10:00:00',1),(2683,6,'2019-07-30 11:00:00',1),(2684,6,'2019-07-30 12:00:00',1),(2685,6,'2019-07-30 13:00:00',1),(2686,6,'2019-07-31 10:00:00',1),(2687,6,'2019-07-31 11:00:00',1),(2688,6,'2019-07-31 12:00:00',1),(2689,6,'2019-07-31 13:00:00',1);
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idHorario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `nJugadores` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2019-07-18 23:15:22
