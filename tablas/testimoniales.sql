/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `testimoniales`;
CREATE TABLE `testimoniales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `mensaje` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `testimoniales` (`id`, `nombre`, `correo`, `mensaje`) VALUES
(3, 'Gustavo', 'correo@correo.com', 'sembra una farfala se bloka lamia espala');
INSERT INTO `testimoniales` (`id`, `nombre`, `correo`, `mensaje`) VALUES
(4, 'Gustavo', 'correo@correo.com', 'sembra una farfala se bloka lamia espala');
INSERT INTO `testimoniales` (`id`, `nombre`, `correo`, `mensaje`) VALUES
(5, 'Gustavo', 'correo@correo.com', 'sembra una farfala se bloka lamia espala');
INSERT INTO `testimoniales` (`id`, `nombre`, `correo`, `mensaje`) VALUES
(6, 'Danielaso', 'qsd@qsdqd.com', 'Te devi sentire quelo que voi chi penso an qio que sei'),
(7, 'Danielaso', 'qsd@qsdqd.com', 'Te devi sentire quelo que voi chi penso an qio que sei'),
(8, 'sdf', 'sdfsdf@sdfsdf.com', 'sdfsdfsdf'),
(9, 'dddddddddddd', 'ddddddd@dddddddddddddddddddd.com', 'se me pego la D'),
(10, 'qsd', 'qsd', 'qsd'),
(11, 'wxcwxcwxcwxcwxc', 'wxcwxcwxc@wxc.com', 'wxcwxcwxc'),
(12, 'wxcwxcwxcwxcwxc', 'wxcwxcwxc@wxc.com', 'wxcwxcwxc'),
(13, 'qsdqdaeazetyui', 'aze', 'eret'),
(14, 'sdqsd', 'qsdqsd', 'qsdqsdqsd'),
(15, 'algo', 'algoà@algo.com', 'SUper Heroe a un paso da te...!');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;