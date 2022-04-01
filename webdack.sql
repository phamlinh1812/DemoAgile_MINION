-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 05:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdack`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Position` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Position`) VALUES
(1, 'Cà phê pha sẵn', 0),
(2, 'Cà phê hòa tan', 0),
(3, 'Cà phê nguyên chất', 0),
(4, 'Cà phê hạt', 0),
(5, 'Trà khô', 0),
(6, 'Trà túi lọc', 0),
(7, 'Trà sữa hòa tan ', 0);
-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `GroupID` int(11) NOT NULL,
  `GroupName` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`GroupID`, `GroupName`) VALUES
(1, 'Admin - Quản lý'),
(2, 'NV Bán hàng'),
(3, 'Khách hàng'),
(5, 'NV Giao hàng');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `ManufacturerID` int(11) NOT NULL,
  `ManufacturerName` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`ManufacturerID`, `ManufacturerName`) VALUES
(1, 'Cà phê thượng hạng'),
(2, 'Cà phê sáng tạo'),
(3, 'Cà phê tiện lợi'),
(4, 'Quà tặng'),
(5, 'Trà cao cấp'),
(6, 'Trà dưỡng sinh');


-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderID`, `ProductID`, `Quantity`) VALUES

(1, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `namere` varchar(400) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `reDay` date DEFAULT NULL,
  `Sum` int(11) DEFAULT NULL,
  `Status` text NOT NULL DEFAULT 'Chưa xác nhận',
  `Mode` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `UserID`, `AddedDate`, `namere`, `Address`, `Phone`, `reDay`, `Sum`, `Status`, `Mode`) VALUES
(1, 40, '2021-12-15 22:48:03', 'trinh', '125 hjhj', '013121', '2021-12-15', 49000, 'Chưa xác nhận', 'cod');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ManufacturerID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ImageUrl` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL DEFAULT 0,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `Description` varchar(1000) NOT NULL,
  `Body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ManufacturerID`, `CategoryID`, `ProductName`, `ImageUrl`, `Price`, `Quantity`, `Description`, `Body`) VALUES
-- (100,2,3,'Cà phê Trung Nguyên S','100.jpg',56000,10,'Cà phê Trung Nguyên chinh phục mang trong mình vị đắng quen thuộc và hương thơm tự nhiên vốn có, sản phẩm được tạo ra để mang đến niềm đam mê về một loại cà phê nguyên chất và thuần khiết.','Khối lượng: 500g. Thành phần: Arabica, Robusta, Catimor, Excelsa.');
(100,1,3,'Cà phê Trung Nguyên S','100.jpg',56000,10,'Cà phê Trung Nguyên chinh phục mang trong mình vị đắng quen thuộc và hương thơm tự nhiên vốn có, sản phẩm được tạo ra để mang đến niềm đam mê về một loại cà phê nguyên chất và thuần khiết.','Khối lượng: 500g. Thành phần: Arabica, Robusta, Catimor, Excelsa.'),
(101,3,2,'Cà phê Net Việt','101.jpg',109000,10,'Vị cà phê đắng đặc trưng, mạnh mẽ nay được bổ sung thêm hương vị cà phê nguyên chất cho hương vị cực mạnh càng thêm hấp dẫn, khơi dậy nguồn hứng khởi cho thể chất và tinh thần. ','Khối lượng: 560g.'),
(102,3,1,'Cà phê sữa đá Highlands','102.jpg',57000,10,'Chế biến từ những hạt cà phê đã qua tuyển chọn kỹ càng, với công thức pha chế tinh tế, vẫn giữ nguyên hương vị đậm đà, thơm ngon của cà phê nguyên chất. phẩm cà phê pha sẵn tiện lợi và thơm ngon cho bạn cảm giác tỉnh táo, sảng khoái nhanh chóng','Sản phẩm gồm 1 lốc/ 6 lon. Dung tích: 235ml/lon'),
(103,1,3,'Cà Phê Arabica Cầu Đất Rang Mộc DalatFarm - Hộp 250gr (Dạng Bột)','103.jpg',150000,10,'Cà phê Arabica Cầu Đất được trồng từ vùng nguyên liệu cà phê Cầu Đất - Đà Lạt, nơi được mệnh danh là thủ phủ Arabica, chất lượng lâu đời tại Việt Nam. ','Thành phần: 100% từ những trái cà phê Arabica chín cây từ vùng nguyên liệu cà phê Cầu Đất - Đà Lạt tốt nhất Việt Nam.'),
(104,1,3,'Hộp cà phê sáng tạo 8( kèm phin) Trung nguyên','104.jpg',458000,10,'Hộp SÁNG TẠO 8 của Trung Nguyên được gọi là "Cà phê của nguyên thủ và ngoại giao” vì sự đặc biệt trong hương vị của nó. với các loại cà phê thông thường. Đó là sự tinh túy của sản phẩm này. ','Trong hộp quà sáng tạo 8 combo gồm: Hộp cà phê sáng tạo 8 với trọng lượng cà phê 500gam được đóng gói hút chân không rất đảm bảo cho chất lượng của cà phê.'),
(105,3,2,'Cà phê sữa G7 3 in 1 ','105.jpg',53400,10,'Cà phê hòa tan G7 3 trong 1 được chiết xuất từ những phần tinh túy nhất có trong từng hạt cà phê với hương vị khác biệt, đậm đà, hương thơm độc đáo quyến rũ mà không một sản phẩm cà phê hòa tan nào khác đạt được giúp bạn nhanh chóng tỉnh táo, sảng khoái tinh thần để tập trung làm việc.','Khối lượng : 336g'),
(106,3,2,'Cà phê sữa G7 gu mạnh X2','106.jpg',48400,10,'G7 gu mạnh X2 là dòng sản phẩm cà phê hòa tan có hương vị có hương vị cà phê đậm đặc gấp đôi cho những người có gu cà phê mạnh thứ thiệt, mang đến cho bạn một ly cà phê đậm đà đúng gu với chất cà phê mạnh mẽ.','Khối lượng : 300g'),
(107,3,2,'Cà phê đen đá G7 2 in 1','107.jpg',49000,10,'G7 2 in 1 là sản phẩm cà phê hòa tan mang hương vị đặc trưng thuần túy của cà phê đen đá thứ thiệt, đúng gu hương vị của cà phê rang xay Trung Nguyên.','Khối lượng : 240g'),
(108,3,2,'Cà phê sữa TNI King Coffee 3 in 1','108.jpg',33400,10,'Cà phê sữa TNI King Coffee 3 in 1 240g được tuyển chọn từ những hạt cà phê tốt nhất trên vùng đất Buôn Mê Thuột trứ danh kết hợp với vị sữa thơm ngọt, cho bạn một tách cà phê sữa hấp dẫn.','Khối lượng : 240g'),
(109,3,2,'Cà phê đen đá MacCoffee Café Phố','109.jpg',28300,10,'Cà phê đen đá MacCoffee Café Phố mang đến cho người dùng những trải nghiệm cà phê đầy tinh tế với những ly cà phê đen sánh quyện, đậm đặc cùng hương thơm nồng nàn quyến rũ.','Khối lượng : 160g'),
(110,3,1,'Cà phê sữa TASTY chai 200ml','110.jpg',88000,10,'Chai thủy tinh dẹt, dung tích 200m (4 lần uống).Cách bảo quản: để trong ngăn mát tủ lạnh (3°C - 5°C).HSD: 72 giờ, nên sử dụng trong 24H kể từ khi mở nắp.Thành phần: cà phê Lâm Đồng pha phin, sữa đặc, sữa béo.','Khối lượng : 200ml'),
(111,3,1,'Cà Phê Sữa Acafela Caramel Macchiato Binggrae','111.jpg',23400,10,'Cà phê sữa Acafela được nhập khẩu trực tiếp từ Hàn Quốc. Thiết kế đóng chai 240ml nhỏ gọn, có thể mang theo mọi lúc, mọi nơi. Sản phẩm phù hợp cho những người bận rộn không có thời gian ra quán cà phê, góp phần đem lại một buổi sáng bắt đầu hứng khởi cho bạn. Hương Caramel Macchiato thơm ngon, đem lại trải nghiệm thú vị cho người dùng.','Khối lượng : 240ml'),
(112,3,1,'Cà Phê Sữa Acafela Vanilla Latte Binggrae','112.jpg',23400,10,'Cà phê sữa Acafela được nhập khẩu trực tiếp từ Hàn Quốc. Thiết kế đóng chai 240ml nhỏ gọn, có thể mang theo mọi lúc, mọi nơi. Sản phẩm phù hợp cho những người bận rộn không có thời gian ra quán cà phê, góp phần đem lại một buổi sáng bắt đầu hứng khởi cho bạn. Hương Vanilla Latte thơm ngon, đem lại trải nghiệm thú vị cho người dùng.','Khối lượng : 240ml'),
(113,3,1,'Cà phê Cappuccino Sữa Dừa Hạt A Cafe pha sẵn ','113.jpg',65000,10,'Cà phê sữa dừa là một thức uống giúp thoải mái tinh thần và tốt cho sức khỏe. Cà phê pha sẵn đóng chai vị sữa dừa của HẠT A CAFE là sự kết hợp, hòa quyện tinh tế giữa cà phê nguyên chất cùng một chút vị ngọt, thơm, ngậy của dừa non, thêm lớp kem mỏng beo béo của Cappuccino giúp người dùng thưởng thức trọn vẹn các hương vị trong tách cà phê.','Khối lượng : 250ml'),
(114,3,1,'Cà phê Hạt Dẻ Mật Ong Hạt A Cafe pha sẵn','114.jpg',70000,10,'Cà phê pha sẵn đóng chai vị hạt dẻ mật ong là sản phẩm sáng tạo, độc đáo, đáp ứng sở thích của khách hàng.  Sử dụng nguyên liệu được chiết xuất từ hạt dẻ kết hợp vị ngọt nhẹ của mật ong đã tạo nên một loại cà phê hạt dẻ mật ong quyến rũ có một không hai. Vị vừa có sự hòa quyện của cà phê, hạt dẻ và mật ong, vừa tách biệt ba loại hương vị ra, giúp người thưởng thức trọn vẹn các hương vị trong tách cà phê. Thưởng thức một tách cà phê vào buổi sáng mang lại cho bạn tinh thần phấn chấn, tỉnh táo và làm việc có hiệu quả cao.  Cà phê hạt dẻ mật ong đóng chai giúp tiết kiệm thời gian mà vẫn có thể thưởng thức tách cà phê thơm ngon, trọn vẹn. Thích hợp với nhiều đối tượng, nhiều độ tuổi. ','Khối lượng : 250ml'),
(115,3,3,'Cà phê Arabica Cầu Đất nguyên chất','115.jpg',159000,10,'Cà phê Arabica Cầu Đất nguyên chất là một loại cà phê thơm ngon nức lòng người thưởng thức, không chỉ nổi tiếng ở thị trường nội địa Việt Nam, mà hầu hết những nơi rang xay chuyên nghiệp trên thế giới đều biết đến cà phê Arabica Cầu Đất bởi hương vị, chất lượng được đánh giá rất cao không thua kém gì các loại cà phê trên thế giới. Đặc Trưng: Vị chua thanh, thơm nhẹ, hậu ngọt, hương trái cây phong phú Phù hợp: Gu Nhẹ, tinh tế. Dùng pha phin, pha máy Espresso','Khối lượng : 500g, Nguyên liệu: 100% Từ hạt cà phê Arabica được hái lựa trái chín, lên men, chế biến ướt, phơi giàn trong nhà kính.'),
(116,2,3,'Cà phê nguyên chất GUfill - 100% Robusta Đăk Lăk rang mộc ','116.jpg',160000,10,'Robusta là loại cà phê có hàm lượng caffeine vượt trội (tới 2,2 - 2,7%), gần gấp đôi so với Arabica (chỉ có 1,2% - 1,5%). ','Khối lượng : 500g, Nguyên liệu: 100% Robusta rang mộc nguyên chất.'),
(117,3,3,'Cà phê Culi (Thảo Nguyên)','117.jpg',125000,10,'Hạt cà phê Culi là những hạt cà phê no tròn. Đặc biệt là trong một trái chỉ có duy nhất một hạt. V','Khối lượng : 500g, Nguyên liệu: 100% Hạt cà phê Culi.'),
(118,1,3,'Cà phê Premium Blend Trung Nguyên Legend','118.jpg',154000,10,'Cà phê rang xay Premium Blend là một sản phẩm cà phê đặc biệt được chắt lọc từ những vùng nguyên liệu ngon nhất thế giới kết hợp công nghệ sản xuất hàng đầu và phương thức rang xay độc đáo không thể sao chép của Trung Nguyên,mang đến hương vị quyến rũ, đậm đà.','Khối lượng : 425g (Lon), Nguyên liệu: Arabica, Robusta, Excelsa, Catimor.'),
(119,4,3,'Cà phê chồn Legendee Trung Nguyên','119.jpg',880000,10,'Cà phê cao cấp chồn Legend Trung Nguyên là cafe được sản xuất bằng phương pháp “Lên men sinh học”. ','Khối lượng : 225g , Nguyên liệu: Arabica, Robusta, Excelsa.'),
(120,2,4,'Cà Phê Moka Nguyên Chất (Moka Pure Coffee)','120.jpg',319000,10,'Cà Phê Moka Hạt Nguyên Chất sạch 100% đặc biệt có vị đắng nhẹ xen lẫn chua thanh hài hòa cùng với vị béo cùng chất dầu trong hạt Moka. Mùi thơm nồng nàn gây ấn tượng và chinh phục. ','Khối lượng : 1kg , Cà Phê Moka Nguyên Chất Sạch 100%'),
(121,2,4,'ESPRESSO BLEND','121.jpg',219000,10,'Cafe Nguyên Chất Hạt Espresso Blend sạch 100% đặc biệt có hương vị tinh túy tự nhiên nhất được giữ nguyên vẹn trong từng giọt cà phê nguyên chất theo phong cách Ý.','Khối lượng : 1kg , Cà Phê Nguyên Chất Moka và Robusta Sạch 100%'),
(122,2,4,'CÀ PHÊ HẠT CULI THƯỢNG HẠNG','122.jpg',240000,10,'Cà phê hạt xay Drip – Premium Culi (hạt số 4) gồm những hạt Culi thượng hạng được của tất cả các loại cà phê Arabica, Robusta, Excelsa và Catimor, được Trung Nguyên sản xuất trên công nghệ hàng đầu và bí quyết không thể sao chép từ các chuyên gia trung nguyên nên có mùi vị rất thơm ngon, quyến rũ.','Khối lượng : 1kg , 100% Hạt Cà Phê thiên nhiên'),
(123,2,4,'CÀ PHÊ HẠT MỘC SUCCESS','123.jpg',330000,10,'Là loại cà phê siêu hạng có hương vị độc đáo và đầy thử thách. Mùi hương dịu nhẹ nhưng rất đa dạng; Thể chất mạnh nhưng cân bằng, hậu vị ngọt dịu.','Khối lượng : 1kg , Là loại cà phê siêu hạng có hương vị độc đáo và đầy thử thách. Mùi hương dịu nhẹ nhưng rất đa dạng; Thể chất mạnh nhưng cân bằng, hậu vị ngọt dịu.'),
(124,2,4,'CÀ PHÊ HẠT SUCSESS 8 TRUNG NGUYÊN','124.jpg',340000,10,'100% hạt Arabica mang lại hương vị trái cây, tròn vị, thể chất mạnh nhưng cân bằng, hậu vị ngọt dịu.','Khối lượng : 340g, Thành phần chính của cà phê mộc success 8 được chọn lọc từ những hạt Arabica cao cấp, ngon nhất trong nước và trên thế giới.'),
(125,6,5,'Trà Lài Thượng Hạng','125.jpg',175000,10,'Trà lài là loại trà được chế biến từ việc ướp trà xanh thái nguyên chung với hoa lài để tạo ra thức uống vừa có vị chát nhẹ, hậu ngọt và mang hương lài tươi thơm mát.','Khối lượng : 250g, Nguyên liệu: Trà xanh Tân Cương Thái Nguyên thượng hạng ướp hoa lài tươi'),
(126,6,5,'Trà Saffron Salam','126.jpg',450000,10,'Saffron Salam là dòng sản phẩm nhụy hoa nghệ tây cao cấp nhất, được canh tác, trồng trọt và thu hoạch theo tiêu chuẩn hữu cơ, xanh, sạch 100%. Saffron SALAM là những sợi nhụy hoa nghệ tây loại 1 được thu hoạch từ những cây hoa đang ở độ 4 – 5 năm tuổi, sinh trưởng và phát triển tốt nhất.','Khối lượng : 1g (500 sợi nhụy), Nguyên liệu: '),
(127,6,5,'Trà hoa cúc đường phèn','127.jpg',200000,10,'Trà hoa cúc đường phèn được ưa chuộng bởi chúng không những thơm, dễ uống, đẹp mắt mà còn mang lại rất nhiều lợi ích cho sức khỏe. Một ly trà hàng ngày sẽ giúp bạn có được một trái tim khỏe mạnh, tốt cho tim mạch, thị lực, giúp giải cảm, ngăn ngừa ung thư, ngủ ngon, hạ huyết áp.','Khối lượng : 250g, Nguyên liệu: Hoa cúc, đường phèn'),
(128,6,5,'Trà Atiso đỏ','128.jpg',200000,10,'Trà hoa Atiso đỏ là loài hoa nhiệt đới được cả thế giới yêu mến vì vẻ đẹp rực rỡ, vị chua đặc trưng và giá trị tuyệt vời cho sức khỏe. Qua quá trình gieo trồng tự nhiên đến khi những cánh hoa mềm rụng xuống từng đài quả sẽ được thu hoạch và chọn lọc trước khi đưa vào chế biến sấy khô. ','Khối lượng : 200g, Nguyên liệu: 100% hoa Atiso Đỏ tươi tự nhiên sấy lạnh.'),
(129,6,5,'Trà hoa đậu biếc khô','129.jpg',250000,10,'Trà Hoa Đậu Biếc hay còn được gọi với cái tên thân thương Trà Lam Hồ Điệp với màu tim tím đặc trưng. Đây cũng là một trong những loài hoa bền bỉ sống được chung với những đợt nắng hạn gay gắt. Bên cạnh đó loại trà này cũng mang lại những công dụng tuyệt vời đối với cơ thể chúng ta. ','Khối lượng : 500g, Nguyên liệu: Trà Hoa Đậu Biếc được sấy khô 100% từ hoa đậu biếc được chọn lọc kỹ càng, an toàn, hiệu quả đáp ứng đầy đủ tiêu chuẩn vệ sinh an toàn thực phẩm của Bộ Y tế.'),
(130,5,6,'Trà túi lọc Cozy 50g (25 túi x 2g/gói) - Đầy đủ các hương trái cây - Nguyên liệu pha chế trà sữa nhanh tiện lợi','130.jpg',40000,10,'Trà Cozy là thức uống bổ dưỡng, phù hợp với mọi lứa tuổi. Giúp tinh thần thoải mái tăng cường sức khỏe và làn da tươi trẻ. Với thành phần chính là tinh chấtthiên nhiên thơm mát, đậm đà vị trà tự nhiên. ','hộp 50g(25 túi x2g)'),
(131,5,6,'Trà túi lọc Lipton nhãn vàng 50G(25 túi x2g)','131.jpg',117000,10,'Trà Túi Lọc Lipton Nhãn Vàng với công thức được pha chế từ hơn 30 loại trà khác nhau, trà có vị chát nhẹ và đọng lại dư vị thanh ngọt, là sự lựa chọn của những người sành thưởng thức trà nhưng mong muốn có sự tiện lợi, nhanh chóng. Trà túi lọc Lipton nhãn vàng rất tốt cho sức khỏe, với hoạt chất Flavonoid giúp giảm nguy cơ mắc bệnh tim mạch, ung thư, làm dịu các hiện tượng dị ứng do thức ăn, thời tiết. Bạn có thể sử dụng trà Lipton theo dạng nóng hoặc đá đều ngon, để bắt đầu những câu chuyện thú vị cho cả gia chủ và khách quí.','100G(50 túi x2g)'),
(132,5,6,'Trà túi lọc Atiso','132.jpg',70000,10,'Atiso đang được bình chọn là 1 trong những thương hiệu trà túi lọc ngon nhất bán tại thị trường trà túi lọc Việt Nam hiện nay. Nguyên liệu 100% từ thân, lá và hoa cây Atiso. Cây Atiso có nguồn gốc miền Nam Châu Âu được người Pháp di thực vào Việt Nam từ thế kỷ trước. Hiện Atiso được trồng nhiều ở Đà lạt, Sapa, Tam đảo. ','200g/100 túi'),
(133,5,6,'Trà túi lọc Dilmah','133.jpg',40000,10,'Trà túi lọc Dilmah hay còn được gọi là trà đen. Là một loại trà thường có vị đậm hơn và chứa nhiều caffeine hơn so với các loại trà xanh. – Khác hẳn trà xanh là trong quá trình chế biến, trà đen sẽ không qua giai đoạn diệt men ngay. Trà đen còn thêm giai đoạn lên men để tạo ra những biến đổi sinh hóa cần thiết làm cho màu sắc và hương vị của thành phẩm sau này có những đặc tính riêng mà các loại trà khác không có được. ','30g/20 túi'),
(134,5,6,'Trà túi lọc chùm ngây','134.jpg',45000,10,'Trà túi lọc chùm ngây được chế biến từ lá cây chùm ngây. Là loại lá có chứa tới 46 chất chống oxy hóa, đặc biệt là vitamin C và vitamin A.  Những chất chống oxy hóa này có tác dụng tàn phá gốc tự do, từ đó bảo vệ chúng ta khỏi bệnh ung thư và các bệnh thoái hóa như thoái hóa điểm vàng và bệnh xơ nang.ông sử dụng cho phụ nữ mang thai.','20 túi x 2.5g'),
(135,3,7,'Trà sữa hòa tan Trần Quang Tea ','135.jpg',57000,10,'Hương vị trà sữa truyền thống làm từ lá trà đen thơm đậm vị.Q Express Trà Sữa Tea mix dành cho bạn hương vị thơm ngon từ bột kem béo ngậy và vị ngọt thanh sảng khoái.','Khối lượng : 24 gói x20G'),
(136,3,7,'Trà Sữa Hòa Tan Vị Truyền Thống WIL Dạng Bột Bổ Sung Năng Lượng Thư Giãn Giải Khát','136.jpg',42000,10,'Trà Sữa Truyền Thống WIl với đậm vị trà hòa kết hợp cùng vị béo thơm của sữa mang đến một thức uống thơm ngon được nhiều người ưa thích. Chỉ với 2 bước thực hiện cùng trà sữa hòa tan vị truyền thống là bạn đã có ngay 1 ly trà sữa đậm trà béo sữa thơm ngon. Còn gì tuyệt vời hơn khi cùng bạn bè nhâm nhi một ly trà sữa thơm ngon đậm vị!','Khối lượng : 17g x 10 túi Thành phần: Non-dairy creamer, đường, đường dextrose, sữa bột nguyên kem (1%-5%), tinh chất trà (3%-5%), màu caramel tổng hợp (150c), hương sữa tổng hợp, hương trà đen tổng hợp, chất tạo ngọt tổng hợp (950), chất làm dày (415).'),
(137,3,7,'Matcha Trà Sữa Hòa Tan MaikaFood','137.jpg',40000,10,'Trà sữa Matcha Maika được sản xuất trên dây chuyền hiện đại mang đến một sản phẩm tuyệt hảo có hương vị đậm đà đặc trưng của trà xanh matcha.','Khối lượng : 17g x 10 túi Thành phần: Bột Trà Matcha Maika 3%, bột kem không sữa, bột sữa nguyên kem 0,2%, đường kính.'),
(138,3,7,'Trà sữa dâu hòa tan Blendy [VN] AJINOMOTO Strawberry Milk Tea','138.jpg',47900,10,'Trà Sữa Dâu Blendy phiên bản mới ra mắt vào tháng 4/2021 với công thức Ít đường có vị ngọt dịu, kết hợp vị chua nhẹ của dâu Đà Lạt tạo nên thức uống lạ miệng và hài hòa. ','Khối lượng :10 túi x 18g Thành phần: Đường, bột kem không sữa, maltodextrin, bột trà 4,9% (bột trà Thái Nguyên 2,9%), bột sữa nguyên kem (0,2%), bột chiết xuất dâu (3%),...'),
(139,3,7,'Trà sữa hòa tan [VN] NESTEA Milk Tea ','139.jpg',41900,10,'Trà Sữa NESTEA lấy cảm hứng từ vùng đất Đài Loan - thủ phủ của món trà sữa lừng danh. NESTEA nay giới thiệu trà sữa NESTEA Milk Tea hoàn toàn mới. Vị trà thơm quyến rũ kết hợp cùng vị sữa dịu ngọt sẽ đưa các giác quan của bạn đến xứ Đài chỉ với một ngụm trà. ','Khối lượng : 8 Gói x 20g Thành phần: Đường, bột kem (có chứa sữa), sữa bột tách kem, trà tinh chiết, maltodextrin, bột whey (có chứa sữa), hương tổng hợp (hương trà, hương sữa đặc). '),
(140,2,2,' Set Quây Quần món quà từ Cộng Cà Phê','140.jpg',550000,10,'Một mùa xuân mới lại sắp về vì thế trong thời điểm này, bạn có thể bắt đầu lên kế hoạch các món quá cũng như kinh phí cho dịp tết sắp tết và chắc rằng trong đó không thể thiếu những hộp quà ý nghĩa.','01 Túi vải địa phương xanh Cộng, 01 Bình giữ nhiệt Cộng 600ml, 01 cà phê bạc xỉu C+, 01 Camen Cộng 360ml, 01 Hộp ô mai đặc sản Hồng Lam, 01 Hộp bút bi vỏ lúa mạch, 01 Khay gỗ- 01 Túi vải địa phương xanh Cộng'),
(141,4,2,'Set quà tặng 2022, Set Liên Lạc mới, Cộng Cà Phê','141.jpg',310000,10,'Một mùa xuân mới lại sắp về vì thế trong thời điểm này, bạn có thể bắt đầu lên kế hoạch các món quá cũng như kinh phí cho dịp tết sắp tết và chắc rằng trong đó không thể thiếu những hộp quà ý nghĩa.','01 Hộp trà Cozy, 01 Hộp ô mai đặc sản Hồng Lam, 01 Cà phê bạc xỉu C+, 01 Stick Cà phê bạc xỉu C+, 01 Sổ liên lạc, 01 Túi vải địa phương xanh Cộng, 01 Khay gỗ'),
(142,4,5,'BỘ HỘP TRÀ LÀM QUÀ TẶNG - BAMBOO GIFT SET','142.jpg',335000,10,'Một mùa xuân mới lại sắp về vì thế trong thời điểm này, bạn có thể bắt đầu lên kế hoạch các món quá cũng như kinh phí cho dịp tết sắp tết và chắc rằng trong đó không thể thiếu những hộp quà ý nghĩa.','1 hộp đựng trà lớn 20cm (khắc theo yêu cầu hoặc mẫu khắc sẵn câu chúc ngẫu nhiên) (hộp đựng trà không bao gồm trà),3 ly tre nhỏ 8cm có khắc, 1 Hộp đựng bằng tre đan'),
(143,4,5,'Trà Ô Long Đài Loan - Hộp Phúc Lộc Đỏ 400gram','143.jpg',550000,10,'Đặc tính của trà ô long do công ty cung cấp là không sử dụng bất kì hương hay phụ gia nào trong quá trình chế biến, mà đó là mùi hương đặc trưng sẵn có của trà ô long. ',' 400gram bao gồm 02 gói 200gram được bảo quản trong bao nhôm hút chân không đựng trong 2 hộp sắt và đặt trong khay sang trọng'),
(144,4,2,'Hộp quà tặng Real Bean Coffee Combo Gift Set (Cà phê rang xay nguyên chất Culi)','144.jpg',250000,10,'Ý nghĩa, sang trọng dành tặng cho người thân, bạn bè và đối tác, đặc biệt là những ai yêu thích hương vị cà phê nguyên chất pha phin truyền thống của Việt Nam','1 túi cà phê 250g: cà phê rang xay nguyên chất. VỊ ĐẬM ĐÀ, HƯƠNG THƠM NỒNG, HẬU VỊ NGỌT KÉO DÀI,1 phin pha cafe nhôm chịu nhiệt, 1 ly sứ trắng có quai');
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `PassWord` varchar(32) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `GroupID`, `FullName`, `UserName`, `PassWord`, `Email`) VALUES
(39, 1, 'Vo Yen Nhi', 'vynhi', '202cb962ac59075b964b07152d234b70', 'voyennhi107@gmail.com'),
(38, 3, 'Anh', 'Anh1', 'fb62579e990da4e2a8f15c3d1e123438', 'abc@gmail.com'),
(37, 3, 'Anh', 'Anh', '250cf8b51c773f3f8dc8b4be867a9a02', 'abc'),
(40, 1, 'trinh', 'trinh', '2d969e2cee8cfa07ce7ca0bb13c7a36d', 'letrinh2203@gmail.com'),
(41, 2, 'huyen', 'huyen', 'd856125d827ac297307baf299a8ee1f1', 'huyen@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`GroupID`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`ManufacturerID`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderID`,`ProductID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `ManufacturerID` (`ManufacturerID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `GroupID` (`GroupID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `GroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `ManufacturerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
