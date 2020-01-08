-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 08, 2020 lúc 07:19 AM
-- Phiên bản máy phục vụ: 10.1.39-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(5) NOT NULL,
  `email` char(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pass` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `email`, `name`, `pass`, `level`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', 1),
(2, 'txp@gmail.com', 'txp', 'txp', 2),
(3, 'hellokitty@gmail.com', 'hellokitty', '123456', 3),
(4, 'aaa@gmail.com', 'aaa', '1', 3),
(5, 'txphu@gmail.com', 'phu', '123456', 3),
(6, 'user1@gmail.com', 'user1', 'user1', 3),
(7, 'user2@gmail.com', 'user2', '1', 3),
(8, 'user3@gmail.com', 'Phong', '1', 3),
(9, 'user4@gmail.com', 'Quân', '1', 3),
(10, 'user5@gmail.com', 'Hưng', '1', 3),
(11, 'user6@gmail.com', 'Tài', '1', 3),
(12, 'user7@gmail.com', 'Lộc', '1', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `username` char(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contentcomment` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `timecomment` date NOT NULL,
  `idcomment` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`username`, `contentcomment`, `timecomment`, `idcomment`) VALUES
('aaa', 'Tuyệt Vời!', '2019-11-27', 12),
('aaa', 'Wao', '2019-11-27', 11),
('aaa', 'Thật Tội nghiệp', '2019-11-27', 8),
('aaa', 'Hay\r\n', '2019-11-27', 4),
('aaa', 'Chất Lượng', '2019-11-27', 15),
('aaa', 'Kinh Quá Nhỉ', '2019-11-27', 6),
('aaa', 'Keo Kiệt', '2019-11-27', 14),
('aaa', 'Hay Quá Nhỉ', '2019-11-27', 9),
('aaa', 'Tội Nhiệp Bé\r\n', '2019-11-27', 7),
('Hưng', 'Vô lý Nhưng rất thuyết phục', '2019-11-27', 4),
('Hưng', 'Vô lý Nhưng rất thuyết phục', '2019-11-27', 4),
('Hưng', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2019-11-27', 4),
('Hưng', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2019-11-27', 4),
('Hưng', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2019-11-27', 4),
('Hưng', 'Vô lý mà thuyết phục', '2019-11-27', 6),
('Hưng', 'Vô lý mà thuyết phục', '2019-11-27', 16),
('Hưng', '', '2019-11-27', 16),
('Hưng', 'Vô lý mà thuyết phục', '2019-11-27', 16),
('Hưng', 'Cầu nguyện cho bé', '2019-11-27', 7),
('Hưng', 'đẹp quá', '2019-11-27', 17),
('Lộc', 'đẹp vl', '2019-11-27', 17),
('Lộc', 'tội nghiệp', '2019-11-27', 5),
('Lộc', 'tội nghiệp', '2019-11-27', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin`
--

CREATE TABLE `tin` (
  `id` int(5) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time` date NOT NULL,
  `content` varchar(10000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `keycontent` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `view` int(10) NOT NULL,
  `tag` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `comment` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tin`
--

INSERT INTO `tin` (`id`, `name`, `image`, `title`, `time`, `content`, `keycontent`, `view`, `tag`, `comment`) VALUES
(1, 'The best 2019', 'img/messi.jpg', 'Messi giành giải the best 2019 do FiFa bình chọn', '2019-10-10', 'Với những nỗ lực không mệt mỏi ở mùa bóng 2018/19, tiền đạo Lionel Messi đã giành chiến thắng ở cuộc đua danh hiệu FIFA The Best năm nay trước hai đối thủ Ronaldo và Van Dijk trong buổi lễ vinh danh được tổ chức tại Nhà hát Opera La Scala ở Milan (Italia).\r\nĐây cũng là lần đầu tiên M10 đoạt danh hiệu này kể khi giải thưởng ra đời năm 2016. Và có lẽ cũng vì quá vui sướng khi trở thành người chiến thắng nên ngôi sao người Argentina đã không đề cập quá nhiều vào chuyên môn, mà hầu hết chỉ nhắc tới gia đình và các con trai của mình sau khi nhận danh hiệu.\r\n\r\n\"Đối với tôi, giải thưởng cá nhân là điều thứ yếu và tập thể mới là ưu tiên hàng đầu. Song được ở bên cạnh những người thân yêu nhất để tận hưởng niềm vui này thật sự là một điều vô cùng quý giá. \r\n\r\nHôm nay là một ngày đặc biệt đối với tôi. Tôi có vợ và các con ở đây và đây là lần đầu tiên họ tới tham dự\", Messi chia sẻ.\r\n\r\nTrong mùa giải vừa qua, Messi đã ghi được 51 bàn thắng trên tất cả các mặt trận, trong đó có 35 bàn ở La Liga. Đ', 'thethao', 45619, 'bóng đá', 0),
(2, 'Thể Thao Việt', 'img/tin2.jpg', 'Tuyển Việt Nam mơ World Cup, thầy Park táo bạo đổi chiêu', '2019-10-09', 'Giành 7 điểm sau 3 trận với lối chơi khá ấn tượng, cho thấy đẳng cấp của nhà ĐKVĐ AFF Cup, có thể nói cơ hội lấy vé vào vòng loại cuối cùng của World Cup đối với tuyển Việt Nam là khá lạc quan..\r\n\r\nKết quả khởi đầu là thành tích tốt nhất trong lịch sử tham dự vòng loại World Cup mà bóng đá Việt Nam có được, bên cạnh đó với tài cầm quân của HLV Park Hang Seo đang khiến người hâm mộ hoàn toàn có thể mơ đến kết quả tốt hơn nữa trong tương lai.\r\nNhìn tuyển Việt Nam đá vào lúc này, nhiều người tin rằng muốn “ăn” được thầy trò HLV Park Hang Seo là điều không dễ dàng, chưa nói tới chuyện ở những lần tập trung gần đây chiến lược gia người Hàn Quốc luôn không có được đội hình hay sự chuẩn bị tốt nhất.Bởi lúc này tuyển Việt Nam tiếp tục cho thấy được một lối chơi khó lường khi HLV Park Hang Seo xây dựng trên một hệ thống phòng ngự vững vàng với những con người bản lĩnh, dù tuổi đời còn rất trẻ.\r\nKhông dễ ăn tuyển Việt Nam, nhưng ngược lại với những gì đang diễn ra trên hàng công rõ ràng HLV Park', 'thethao', 45136, 'bóng đá', 0),
(3, 'Ô nhiễm sông Đà', 'img/tin1.jpg', 'Phó GĐ nước sạch sông Đà: Chúng tôi là nạn nhân chịu thiệt hại nhất', '2019-10-09', '15h30 chiều nay, UBND tỉnh Hòa Bình tổ chức họp báo thông tin vụ việc nước nhiễm dầu thải khiến hàng vạn người dân phía Tây Nam Hà Nội khổ sở trong suốt hơn 1 tuần qua. Cuộc họp báo do  Trưởng Ban Tuyên giáo Tỉnh ủy Nguyễn Văn Toàn chủ trì với sự tham gia của đại diện Công an tỉnh, Sở Xây dựng, Sở TN&MT, UBND huyện Kỳ Sơn và Công ty CP Đầu tư nước sạch Sông Đà.\r\n\r\nDù chưa đến giờ họp báo nhưng hội trường tầng 3 UBND tỉnh đã chật kín các phóng viên báo chí.\r\n\r\nSáng nay, nhiều bên liên quan tới sự cố nước sạch của công ty cổ phần đầu tư nước sạch sông Đà cũng có buổi họp kín.\r\n\r\nHôm nay, UBND tỉnh Hòa Bình cho biết, sau khi Thủ tướng yêu cầu UBND tỉnh cũng đã chỉ đạo công ty cổ phần đầu tư nước sạch sông Đà khắc phục sự cố, kịp thời cung cấp nguồn nước sạch, bảo đảm chất lượng cho nhân dân.', 'thoisu', 46431, 'nguồn nước', 0),
(4, 'Ngoại Giao Việt - Mỹ', 'img/tin3.jpg', 'Bộ trưởng Quốc phòng Mỹ sẽ thăm Việt Nam', '2019-10-02', 'Chiều 17/10, trong họp báo thường kỳ Bộ Ngoại giao, được đề nghị xác minh thông tin Bộ trưởng Quốc phòng Mỹ sẽ thăm Việt Nam thời gian tới? Người phát ngôn Bộ Ngoại giao Việt Nam Lê Thị Thu Hằng cho biết thời gian qua, quan hệ quốc phòng Việt Nam - Mỹ tiếp tục phát triển phù hợp trên cơ sở các cơ chế hợp tác hiện có cũng như khuôn khổ quan hệ đối tác toàn diện giữa hai nước.  \r\n\r\nTheo tinh thần đó, Bộ trưởng Quốc phòng Mỹ Mark Esper dự kiến sẽ có chuyến thăm Việt Nam theo lời mời của Bộ trưởng Quốc phòng Ngô Xuân Lịch vào thời điểm thích hợp. \r\n\r\nĐược đề nghị cho biết thông tin về đoàn thanh tra EC sẽ sang làm việc tại Việt Nam để kiểm tra về việc khắc phục “thẻ vàng” của thủy hải sản Việt Nam? Và được đề nghị trả lời câu hỏi: Việt Nam thời gian qua đã thực hiện những biện pháp gì để khức phục việc này?, bà Hằng trả lời: Đoàn thanh tra của Tổng cục biển và hải sản châu Âu sẽ sang làm việc tại Việt Nam từ 4-14/11.  \r\n\r\nDự kiến đoàn sẽ chào xã giao lãnh đạo cấp cao của Việt Nam, làm việc', 'thoisu', 76575, 'mỹ', 6),
(5, 'Tai Nạn Giao Thông', 'img/tin4.jpg', 'Nữ tạp vụ quét rác bị xe tải lùi cán chết thương tâm ở Bình Dương', '2019-10-17', 'Vụ việc xảy ra trong công ty TNHH MTV Quang Du (chuyên sản xuất đồ gỗ), thuộc phường Khánh Bình, thị xã Tân Uyên, tỉnh Bình Dương.\r\nKhoảng 8h sáng nay, nữ tạp vụ khoảng 50 tuổi (quê Cà Mau) đang quét dọn phía sau xe tải trong khu vực công ty thì chiếc xe bất ngờ lùi về sau. Do không quan sát thấy người nên tài xế đã cán chết nạn nhân.\r\n\r\nPhát hiện sự việc, các công nhân hô hoán tài xế dừng xe nhưng nạn nhân đã tử vong do bị cán qua người.\r\n\r\nLực lượng chức năng thị xã Tân Uyên sau đó khám nghiệm hiện trường, điều tra nguyên nhân vụ việc.\r\n\r\nTheo các công nhân, nạn nhân làm tạp vụ cho công ty nhiều năm nay. Công việc thường ngày là quét dọn các khu vực xung quanh khuôn viên công ty này, đến sáng nay thì không may gặp nạn.', 'anninh', 1006, 'giao thông', 2),
(6, 'Cấm Vận', 'img/tin5.jpg', 'Huawei vẫn đạt doanh thu \'khủng\' bất chấp lệnh cấm của Mỹ', '2019-10-18', 'Theo báo cáo từ Huawei, tổng doanh thu giai đoạn Q1 - Q3 đạt 610,8 tỷ CNY (khoảng 86 tỷ USD), tăng 24,4% so với cùng kỳ năm ngoái.\r\n\r\nỞ mảng smartphone, Huawei đã xuất xưởng 185 triệu chiếc trong 3 quý đầu năm, tăng 26% so với năm trước.\r\nHuawei không cung cấp số liệu cụ thể doanh số smartphone trong Q3/2019. Nhưng một nguồn tin ước tính cho thấy, hãng smartphone hàng đầu Trung Quốc đã xuất xưởng khoảng 67 triệu máy trong quý này, tăng 13,5% so với Q2/2019 với chỉ 59 triệu chiếc.\r\n\r\nĐây là lần đầu tiên Huawei có doanh số smartphone tăng kể từ khi hãng này bị đưa vào \'Danh sách đen\' của Mỹ.\r\nBáo cáo cũng cho biết, Huawei đã có hơn 60 hợp đồng thương mại 5G với các nhà mạng trên toàn thế giới.\r\n\r\nNgoài ra, có hơn 700 thành phố và 220 công ty Fortune 500 đã hợp tác với Huawei cho Nền tảng kỹ thuật số Horizon.\r\n\r\nHuawei hiện là nhà sản xuất thiết bị viễn thông lớn nhất thế giới. Tập đoàn này đã bị cuốn vào cuộc chiến thương mại Mỹ - Trung khi hai cường quốc kinh tế hàng đầu thế giới lần lư', 'thoisu', 45676, 'mỹ', 2),
(7, 'Bệnh Nhân Ung Thư', 'img/tin6.jpg', 'Bé 3 tuổi nhỏ nhất Việt Nam mắc ung thư tuyến giáp di căn', '2019-10-18', 'Ngày 17/10, PGS.TS Trần Ngọc Lương, Giám đốc BV Nội tiết TƯ cho biết, bé trai N.Q.D., 3 tuổi ở Lệ Thủy, Quảng Bình mắc ung thư tuyến giáp di căn là trường hợp vô cùng hy hữu, nhỏ tuổi nhất Việt Nam.\r\n\r\nTrước đó, BV cũng đã có những trường hợp trẻ khoảng 6 - 9 tuổi mắc ung thư tuyến giáp và phẫu thuật, nhưng chưa bao giờ ghi nhận ca bệnh 3 tuổi bị ung thư tuyến giáp thể tủy di căn.\r\n\r\nGia đình bệnh nhi cho biết, cách đây khoảng hơn 2 tháng, D. xuất hiện các triệu chứng khò khè, khó nuốt, khó thở, sờ thấy tại vùng cổ xuất hiện các hạch nhỏ. Gia đình đã đưa bé tới cơ sở y tế và bệnh viện tại địa phương để kiểm tra nhưng không phát hiện ra ung thư. \r\nSau một thời gian sử dụng đơn thuốc được kê không thấy có dấu hiệu thuyên giảm, thậm chí tình trạng khò khè, khó thở của bé có dấu hiệu nặng hơn nên bố mẹ bé D. đã đưa con ra BV Nội tiết TƯ khám.\r\n\r\nTại đây, sau khi thực hiện các chỉ định cận lâm sàng, bé D. được chẩn đoán ung thư tuyến giáp di căn, 2 bên cổ chi chít hạch. Khối u đã phát triển', 'khoahoc', 42151, 'y tế', 2),
(8, 'Sulli', 'img/tin7.jpg', 'Căn bệnh đã lấy đi sinh mạng của Sulli - cựu thành viên f(x) nguy hiểm thế nào?', '2019-10-17', 'Chiều 14/10 vừa qua, sở cảnh sát Seongnam Sujeong, Hàn Quốc nhận được thông báo từ quản lý của Sulli, 25 tuổi, cựu thành viên nhóm nhạc f(x) rằng cô gái trẻ đã qua đời tại nhà riêng. Ngày 16/10, cảnh sát Seongnam đã tiến hành khám nghiệm tử thi và công bố Sulli tự tử do suy nghĩ cực đoan, những người thân thiết cũng tiết lộ nữ ca sĩ từng nhiều năm vật lộn với căn bệnh trầm cảm.\r\n\r\nĐại diện cảnh sát cho biết các dấu hiệu ở hiện trường cho thấy cô gái trẻ đã tự tử, không để lại di thư nhưng có một cuốn sổ nhật ký. Và khi nội dung trang cuối trong nhật ký của Sulli được tiết lộ chỉ có vẻn vẹn 2 chữ \"Đau khổ\", khiến mọi người phải sợ hãi trước căn bệnh mang tên trầm cảm này.\r\n\r\nTheo nhiều nguồn tin, Sulli từng tự tử bất thành vào năm 2016 sau khi chia tay bạn trai Choiza. Và vào tháng 6/2018, Sulli đã khiến người hâm mộ vô cùng hoang mang khi có biểu hiện buồn bã, im lặng không nói gì và bật khóc ngay trên livestream.\r\nNhư vậy, trầm cảm là gì và nó ảnh hưởng nhiều đến tinh thần một người n', 'giaitri', 78651, 'hàn quốc', 1),
(9, 'Bổ Trưởng Y Tế', 'img/tin8.jpg', 'Dự kiến bỏ phiếu kín miễn nhiệm Bộ trưởng Y tế vào ngày 25/11', '2019-10-19', 'Tổng thư ký QH Nguyễn Hạnh Phúc cho biết, dự kiến tổng thời gian làm việc của QH là 27 ngày, bế mạc vào ngày 27/11.\r\nCác đại biểu sẽ xem xét, thông qua dự án luật sửa đổi, bổ sung điều 3 luật Quản lý, sử dụng vũ khí, vật liệu nổ và công cụ hỗ trợ; dự thảo nghị quyết về thí điểm không tổ chức HĐND tại các phường thuộc quận, thị xã của Hà Nội.\r\n\r\nQH cũng sẽ cho ý kiến 2 dự án: luật Đầu tư (sửa đổi); luật Doanh nghiệp sửa đổi (thay cho dự án luật sửa đổi, bổ sung một số điều của luật Đầu tư và luật Doanh nghiệp); xem xét báo cáo nghiên cứu khả thi về dự án Cảng hàng không quốc tế Long Thành giai đoạn 1...\r\n\r\nNhư vậy, dự kiến QH xem xét, thông qua 12 dự án luật, 3 dự thảo nghị quyết; cho ý kiến vào 9 dự án luật tại kỳ họp này.\r\n\r\nQH sẽ dành 3 ngày cho phiên chất vấn các thành viên Chính phủ.\r\n\r\nLiên quan đến việc bố trí xem xét, quyết định công tác nhân sự vào cuối kỳ họp, ông Nguyễn Hạnh Phúc đề nghị báo cáo QH cho phép không bố trí họp đoàn ĐBQH đối với dự kiến nhân sự bầu Chủ nhiệm UB P', 'thoisu', 12367, 'y tế', 1),
(10, 'Giao Thông', 'img/tin9.jpg', 'Chủ ô tô tá hỏa vì ngồi nhà Hà Nội vẫn bị bắn tốc độ ở Hà Tĩnh', '2019-10-26', 'Trao đổi với Xe VietNamNet, chị Nguyễn Cúc (Hai Bà Trưng, Hà Nội) bức xúc cho biết vào ngày 15/10/2019 có nhận được một giấy thông báo vi phạm hành chính về trật tự, an toàn giao thông do công an Hà Tĩnh gửi, đính kèm là hình ảnh chụp chiếc xe Ford EcoSport mang biển số 30F-18386 chạy tốc độ 64km/h, vi phạm quá tốc độ từ 10 - 20km/h. Tá hỏa vì mình bị bắn tốc độ chạy quá tốc độ ở Hà Tĩnh trong khi ô tô vẫn đỗ ở nhà vào thời điểm bị chụp hình, chị Cúc nói: “Thông báo xe tôi vi phạm thuộc Km 649 +800 qua Quốc lộ 1A, đoạn đường Nghệ An - Quảng Bình vào khoảng 13 giờ chiều ngày 6/10/2019. Nhưng lúc này gia đình tôi lại đang ở nhà bố mẹ đẻ tại Linh Đàm, Hà Nội. Xe không cho ai mượn và cũng không thể phi gần 400 km ra Hà Tĩnh ngay tức thì được”. Để minh chứng cho lời nói, chị Cúc đã bật điện thoại và cho xem ảnh chụp lúc khoảng 11 giờ 30 phút ngày 6/10/2019 tại nhà mẹ mình. “Kể cả có phi hết tốc độ cũng không thể đến kịp địa điểm vi phạm sau đó trong 2 tiếng tiếng đồng hồ được”, chị Cúc nhận', 'anninh', 1345, 'giao thông', 0),
(11, 'Tỷ giá ngoại: USD giảm', 'img/tin10.jpg', 'Tỷ giá ngoại tệ ngày 17/10, USD giảm nhanh, bảng Anh tăng vọt', '2019-10-27', 'Ngày 17/10, Ngân hàng Nhà nước công bố tỷ giá trung tâm của đồng Việt Nam với đô la Mỹ ở mức: 23.159 đồng (tăng 2 đồng). Tỷ giá tham khảo tại Sở giao dịch NHNN hiện mua vào ở mức 23.200 đồng (không đổi) và bán ra ở mức 23.802 đồng (tăng 7 đồng).\r\n\r\nĐầu giờ sáng 17/10, đa số các ngân hàng thương mại giữ tỷ giá ngoại tệ đồng đô la Mỹ hôm nay không đổi so với cuối giờ phiên liền trước, phổ biến ở mức 23.145 đồng (mua) và 23.265 đồng (bán).\r\n\r\nVietcombank, Vietinbank và BIDV niêm yết ở mức: 23.145 đồng (mua) và 23.265 đồng (bán). ACB: 23.155 đồng (mua) và 23.255 đồng (bán).\r\n\r\nĐầu phiên giao dịch ngày 17/10 (giờ Việt Nam), trên thị trường thế giới, tỷ giá ngoại tệ biến động mạnh. Chỉ số US Dollar Index (DXY), đo lường biến động đồng bạc xanh với 6 đồng tiền chủ chốt (EUR, JPY, GBP, CAD, SEK, CHF) đứng ở mức 98,16 điểm.\r\n\r\nUSD đứng ở mức: 1 euro đổi 1,1055 USD; 108,67 yen đổi 1 USD  và 1,2839 USD đổi 1 bảng Anh.\r\n\r\nĐầu giờ sáng, đồng USD trên thị trường thế giới quay đầu giảm nhanh sau khi nước Mỹ công bố một báo cáo khá u ám về nền kinh tế nước này. Trong khi đó, niềm tin vào đàm phán Mỹ-Trung không thực sự lớn.\r\n\r\nĐồng bảng Anh treo trên đỉnh cao 4 tháng với những kỳ vọng mới từ châu Âu sau khi các quan chức tham gia đàm phán của Anh với EU cho biết sự khác biệt giữa hai bên đã được thu hẹp đáng kể.\r\n\r\nĐồng bạc xanh còn giảm do đồng yên của Nhật trở thành nơi trú ẩn an toàn sau khi Bắc Kinh chỉ trích luật pháp mới của Hoa Kỳ được coi là ủng hộ các cuộc biểu tình ủng hộ dân chủ ở Hong Kong. Những dấu hiệu căng thẳng mới giữa Mỹ và Trung Quốc đã khiến kỳ vọng vào một thỏa thuận thương mại giữa  nước này giảm xuống cho dù trước đó cả 2 bên đều đã xác nhận về những kết quả cho “giai đoạn 1”.\r\n\r\nĐồng USD giảm con fdo Mỹ công bố một báo cáo kinh tế đáng thất vọng. Theo Bộ Thương mại Mỹ, doanh thu bán lẻ của Mỹ trong tháng 9 giảm 0,3%, khá tiêu cực so với dự báo tăng 0,3% và mức tăng 0,6% trong tháng 8.\r\n\r\nTriển vọng u ám của kinh tế thế giới cũng đẩy vàng tăng giá. Quỹ tiền tệ quốc tế (IMF) vừa công bố một báo cáo dự báo tăng trưởng kinh tế thế giới chỉ đạt 3% trong năm 2019, thấp hơn so với mức 3,2% trong dự báo của tổ chức này hồi tháng 7.\r\n\r\nTrên thị trường trong nước phiên ngày 16/10, tỷ giá USD/VND ở một số ngân hàng phổ biến ở quanh mức: 23.145 đồng/USD và 23.265 đồng/USD.\r\n\r\nTới cuối phiên 16/10, BIDV và Vietinbank niêm yết tỷ giá ở mức: 23.145 đồng/USD và 23.265 đồng/USD. Vietcombank: 23.240 đồng/USD và 23.260 đồng/USD. ACB: 23.155 đồng/USD và 23.255 đồng/USD.\r\n\r\nTính từ đầu năm 2019, đồng đô la Mỹ trong hệ thống ngân hàng tăng 40 đồng ở cả 2 chiều mua vào và bán ra.\r\n\r\nChốt phiên giao dịch 16/10, tỷ giá Euro đứng ở mức: 25.482 đồng (mua) và 26.273 (bán). Tỷ giá Bảng Anh: 29.507 đồng (mua) và 29.795 (bán). Tỷ giá yên Nhật ở mức 209,9 đồng và bán ra ở mức 216,6 đồng.', 'taichinh', 78663, 'tiền tệ', 1),
(12, 'Thực Phẩm Sạch', 'img/tin11.jpg', 'Nhận biết tôm khô sạch và tôm tẩm hóa chất', '2019-10-28', 'Để nhận biết tôm khô sạch và tôm tẩm hóa chất, trước hết cần dựa vào cảm quan. Quan sát trực tiếp, tôm bẩn có màu sắc bắt mắt, sặc sỡ nhưng trông kém tự nhiên.Tôm khô tẩm ướp hóa chất thường màu sắc sặc sỡ, đốt ngửi mùi khét; trong khi tôm sạch màu hồng tự nhiên, khi giã thịt bung ra từng mảng. Tôm khô tự nhiên có tôm nõn chế biến từ tôm sú tươi, bóc sạch vỏ, cắt bỏ đầu rồi phơi khô dưới nắng mặt trời. Tôm khô bóc sẵn là tôm tươi sống sau khi đánh bắt, làm sạch, được hấp sơ và tiến hành lột vỏ. Giá mỗi loại khác nhau, tùy thuộc mùa vụ và kích thước con tôm. Tôm khô tự nhiên chất lượng rất ngon, ngọt, an toàn sức khỏe người dùng. Một số nơi chế biến đã tẩm ướp tôm khô bằng formol để tăng độ dai, giòn, màu sắc đẹp. Hóa chất formol tồn lưu trong tôm khô ảnh hưởng đến sức khỏe người dùng. Formol có thể gây bệnh viêm da dị ứng, nổi mề đay, rối loạn tiêu hóa, viêm dạ dày. Thai phụ dùng thực phẩm nhiễm formol sẽ ảnh hưởng đến sự phát triển của thai nhi, hấp thụ lượng lớn còn làm thai nhi bị dị dạng. Ăn tôm tẩm hóa chất lâu ngày sẽ tăng nguy cơ ung thư đường tiêu hóa, hệ hô hấp...\r\n\r\n \r\nNgoài cách chọn mua ở những cơ sở uy tín, để đảm bảo an toàn thực phẩm, nhiều bà nội trợ tự sấy tôm khô tại nhà. Tôm sau khi làm sạch, sấy ở nhiệt độ 55-70 độ trong 5-7 giờ. Nên chọn nguyên liệu tôm tươi để làm, sau khi sấy khô cần bảo quản trong túi nilon hoặc hộp thủy tinh đậy kín để đảm bảo dinh dưỡng và an toàn.', 'khoahoc', 413436, 'thực phẩm', 1),
(13, 'Giá rao bán trung bình nhà mặt phố', 'img/tin12.jpg', 'Nhà mặt phố quận Hoàn Kiếm rao bán hơn nửa tỷ đồng/m2, cao hơn quận 1', '2019-10-28', 'Trong báo cáo thị trường bất động sản quý III/2019 của Batdongsan.com.vn, công ty này ghi nhận giá giao bán nhà riêng và nhà mặt phố ở Hà Nội và TP.HCM tăng đáng kể trong giai đoạn quý III/2019. \r\n\r\nĐặc biệt, báo cáo cho thấy giá rao bán nhà mặt phố ở khu vực quận Hoàn Kiếm dao động ở mức khoảng 520 triệu đồng/m2. Trong khi nhà mặt phố ở quận 1, TP.HCM có giá khoảng 500 triệu đồng/m2. \r\n\r\nNhà mặt phố khu vực cận trung tâm Hà Nội như quận Hai Bà Trưng và Ba Đình cũng đang được rao ở mức khá cao, khoảng 315-325 triệu đồng/m2, ở quận Đống Đa và Cầu Giấy lần lượt là 288 triệu đồng/m2 và 275 triệu đồng/m2.\r\n\r\nNha mat pho quan Hoan Kiem rao ban hon nua ty dong/m2, cao hon quan 1 hinh anh 1 \r\nGiá rao bán trung bình nhà mặt phố ở khu vực quận 1 lên đến nửa tỷ đồng/m2. Ảnh: Quỳnh Trang.\r\nTuy nhiên hầu hết nhà riêng và nhà mặt phố tại TP.HCM có giá rao bán tăng nhanh hơn so với Hà Nội. Riêng quận 3 và quận 5 giá rao bán tăng lần lượt là 13% và 18% so với cùng kỳ 2018. \r\n\r\nĐối với sản phẩm nhà riêng, giá rao bán trung bình ở Hà Nội là 103 triệu đồng/m2 với diện tích trung bình 63 m2, cao hơn 10% so với quý III/2018. Trong khi đó con số này ở TP.HCM là 111 triệu đồng/m2 với diện tích rao bán trung bình là 88 m2, tăng 26% so với cùng kỳ năm trước. \r\n\r\nỞ phân khúc nhà mặt phố, TP.HCM cũng có tốc độ tăng giá nhanh hơn, lên đến 12,6% so với quý III/2018 với mức giá 272 triệu đồng/m2. Thị trường Hà Nội có tốc độ tăng chậm hơn với 7,2% nhưng giá rao bán lên đến 294 triệu đồng/m2.\r\n\r\nDiện tích rao bán trung bình ở Hà Nội cũng thấp hơn với 87 m2, trong khi ở TP.HCM là 132 m2. ', 'taichinh', 7777, 'nhà đất', 0),
(14, 'Thủ tướng ấn Độ Narendra Modi', 'img/tin13.jpg', 'Ấn Độ bẻ hướng sông, không để giọt nước nào lọt tới Pakistan?', '2019-10-28', 'Theo The Hindu, ông Modi nói Ấn Độ sẽ đổi hướng dòng sông chảy qua Paksistan để đảm bảo rằng từng giọt nước sẽ được sử dụng cho nông dân. Kế hoạch táo bạo này hiện đã được khởi động nhưng không rõ chi tiết.\r\n\r\nPhát biểu ở Haryana, ông Modi nói nước từ các dòng sông Ấn Độ đã chảy qua Pakistan trong 70 năm qua. Điều đó sẽ không còn xảy ra nữa.\r\n\r\n\"Trong 70 năm qua, nước thuộc về Ấn Độ và nông dân tại Haryana đã chảy về Pakistan. Modi sẽ chấm dứt tình trạng này và đem nước về cho các hộ gia đình\", ông Modi nói trong cuộc tiếp xúc cử tri ở bang Haryana.\r\n\r\nẤn Độ và Pakistan chia sẻ nguồn nước từ 6 con sông chảy qua lãnh thổ hai nước này, theo Hiệp định Các nguồn nước Indus ký năm 1960. Ấn Độ kiểm soát nguồn nước từ sông Ravi, Beas và Sutlej, trong khi Pakistan có toàn quyền sử dụng nước sông Indus, Chenab và Jhelum.\r\n\r\nTrong hang thập kỷ, Ấn Độ đã chia sẻ nước với quốc gia láng giềng Pakistan. Nhưng chính phủ của ông Modi muốn chấm dứt việc này. Ước tính khoảng 5% nước trên các con sông thuộc quyền sử dụng của Ấn Độ chảy về phía hạ nguồn thuộc lãnh thổ Pakistan mỗi năm.\r\n\r\nNhiều thành phố Ấn Độ đang đối mặt tình trạng thiếu nước trầm trọng do khô hạn bất thường. Ít nhất 21 thành phố, bao gồm cả thủ đô New Delhi, sẽ cạn kiệt nước ngầm vào năm 2020, khiến khoảng 100 triệu người rơi vào cảnh thiếu nước, theo truyền thông Ấn Độ.', 'thoisu', 10, 'nguồn nước', 1),
(15, 'Qatar là quốc gia nhỏ bé ở vùng Vịnh', 'img/tin14.jpg', 'Ả Rập Saudi \"chặt\" Qatar khỏi đất liền, bắt trở thành hòn đảo khổng lồ', '2019-10-28', '', 'thoisu', 56461, 'tranh chấp', 1),
(16, 'Đập Miaowei trên thượng nguồn sông Mekong', 'img/tin15.jpg', 'Mỹ cảnh báo mối nguy từ hàng loạt đập TQ xây trên sông Mekong', '2019-10-28', 'Theo AP, Ngoại trưởng Mỹ đưa ra phát biểu hôm 1/8 tại Bangkok, Thái Lan, trong cuộc gặp với bộ trưởng Ngoại giao các nước mà sông Mekong chảy qua như Việt Nam, Thái Lan, Campuchia và Lào. Ngoại trưởng 10 nước thành viên của Hiệp hội các quốc gia Đông Nam Á (ASEAN) đang có cuộc họp thường niên tại thủ đô của Thái Lan.\r\n\r\n\"Chúng tôi nhận thấy một loạt con đập được Trung Quốc xây dựng ở thượng nguồn sông Mekong để kiểm soát dòng chảy. Mực nước sông Mekong hiện ở mức thấp nhất trong một thập kỷ qua - liên quan tới việc Bắc Kinh chặn nguồn nước ở thượng nguồn. Không dừng ở đó, Trung Quốc còn lên kế hoạch để nổ mìn và nạo vét lòng sông. Thậm chí, Trung Quốc còn tổ chức tuần tra trên đoạn sông ngoài lãnh thổ nước này\", ông Pompeo phát biểu.\r\n\r\nNgoại trưởng Mỹ cũng cảnh báo việc Bắc Kinh đang \"đẩy nhanh việc xây dựng các quy tắc mới để quản lý sông Mekong, làm lu mờ vai trò của Ủy ban sông Mekong. \r\n\r\nAP cho biết Trung Quốc đã xây 10 con đập dọc theo thượng nguồn sông Mekong. Bắc Kinh còn cố nạo vét và dọn đường để các tàu hàng lớn có thể điều hướng khi lưu thông trên sông. Những người chỉ trích từ lâu đã cảnh báo những hành động này của Trung Quốc có thể gây ảnh hưởng tới môi trường và kinh tế của các quốc gia ở khu vực hạ lưu.\r\n\r\nTheo Reuters, trên thực tế, mực nước sông Mekong ở Thái Lan đã rơi xuống mức thấp chưa từng có và cá ở đây nếu có cũng rất bé.\r\n\r\nCác nhà khoa học và người dân sống dọc sông Mekong đang lo ngại đợt hạn hán nghiêm trọng nhất trong nhiều năm qua càng trở nên trầm trọng do các con đập ở đầu nguồn của Trung Quốc.\r\n\r\nMột vấn đề khác là số lượng các dự án thủy điện ngày càng tăng đang làm thay đổi dòng chảy và tăng lo ngại về thiệt hại sinh thái.\r\n\r\n\"Người dân địa phương Thái Lan và các nước ở hạ lưu sông Mekong hiểu rõ tác động của các con đập mà Trung Quốc xây dựng ở đầu nguồn. Chúng dấy lên lo ngại về những ảnh hưởng tiêu cực trong thời gian dài. Mực nước sông Mekong thấp kỷ lục ở Thái Lan là hậu quả thảm khốc của việc phá hủy hệ thống sông\", Pianporn Deetes, phát ngôn viên của tổ chức các con sông thế giới ở Thái Lan, cho biết.\r\n\r\nSông Mekong là con sông quan trọng ở khu vực Đông Nam Á, nơi hơn 60 triệu người sinh sống nhờ nguồn thực phẩm, nước uống và giao thông từ sông Mekong.\r\n\r\nCon sông dài hơn 3.000 km, xếp thứ 12 trong số các sông dài nhất thế giới, chạy từ vùng cao nguyên Tây Tạng xuống lục địa Đông Nam Á trước khi đổ ra khu vực Biển Đông thuộc Việt Nam.', 'thoisu', 45252, 'mỹ', 3),
(17, 'Yamaha YB125 SP 2020 giá sốc kèm ưu đãi khủng', 'img/moto.jpg', 'Yamaha YB125 SP 2020 mới đây đã xuất hiện tại Showroom Trường Trung Motor với giá bán cực số chỉ hơn 40 triệu đồng. Nhân dịp lễ Tết cuối năm, Showroom này tung ưu đãi cực hấp dẫn.', '2019-11-22', 'Số lượng Yamaha YB125 SP trên thị trường Việt Nam tăng mạnh nhờ các ưu điểm từ thiết kế đẹp mắt, giá cả phải chăng đến dễ dàng bảo dưỡng. Ở phiên bản mới nhất, mẫu xe này được trang bị động cơ 4 thì xy-lanh đơn dung tích 124 phân khối, làm mát bằng không khí kèm hộp số 5 cấp. Động cơ này cho công suất 9,52 mã lực tại vòng tua máy 7.800 vòng/phút, mô-men xoắn cực đại 9,9 Nm tại vòng tua máy 8.000 vòng/phút.\r\n\r\nKích thước Yamaha YB125 SP 2020 khá dài, cụ thể là 1.990 x 745 x 1.050 mm, chiều cao khoảng 760 mm. Thiết kế bên ngoài YB125 SP 2020 vừa đơn giản, truyền thống lại đậm chất cổ điển, tinh tế.', 'congnghe', 45626, 'xe máy', 2),
(18, 'OPPO đang tự phát triển chip xử lý của riêng mình', 'img/oppo.jpg', 'Giống như các nhà sản xuất smartphone khác như Samsung, Apple hay Huawei, OPPO cũng sẽ tự phát triển một dòng chip di động của riêng mình.', '2019-11-24', 'Theo GSMarena, OPPO đang lên kế hoạch để phát triển và sản xuất một dòng chip di động của riêng mình. Đây không phải lần đầu tiên thông tin này được đề cập, nhưng đến hôm nay mới có bằng chứng cụ thể về việc này.\r\nCụ thể, theo một nhãn hiệu được nộp tại EUIPO (Văn phòng sở hữu trí tuệ của Liên minh châu  u), chip di động của OPPO sẽ được gọi là OPPO M1. Một số nguồn tin cho biết OPPO đã thuê các kỹ sư từ Speadtrum và MediaTek để phát triển chip M1.\r\n\r\nHiện OPPO vẫn chưa chính thức lên tiếng về thông tin này nhưng các chuyên gia đều nhận định rằng nhà sản xuất này sẽ chính thức công bố thế hệ chip di động đầu tiên của mình tại triển lãm công nghệ MWC 2020 diễn ra vào tháng 2/2020.', 'congnghe', 45613, 'điện thoại', 0),
(19, 'Chuyển nhượng 22/11: Cú sốc Maddison, M.U ký gấp \"Pirlo 2.0\"; Mourinho tới, Tottenham nổ bom tấn đắt kỷ lục', 'img/kou.jpg', 'Thị trường chuyển nhượng mùa Hè đã khép lại nhưng các ông lớn vẫn tiếp tục lên kế hoạch cho các hoạt động mua bán cầu thủ khi mà phiên chợ Đông sắp mở cửa.', '2019-11-24', 'Gửi 95 triệu bảng đến Napoli, Mourinho có bản hợp đồng đầu tiên tại Tottenham. Theo The Sun, chiến lược gia người Bồ Đào Nha chuẩn bị đón Kalidou Koulibaly về Tottenham. Đây là món quà ra mắt mà BLĐ Tottenham sành cho og6. Trung vệ người Senegal đã được Mourinho nhắm đến khi còn dẫn dắt M.U và ông vẫn chưa từ bỏ khao khát được làm việc cùng chàng trai của Napoli.\r\n\r\nTrong quá khứ, Chủ tịch Aurelio De Laurentiis từng hét giá Koulibaly lên đến 120 triệu euro (tương đương 103 triệu bảng). Tuy nhiên, trung vệ 28 tuổi đã bị điền tên vào danh sách thanh lý sau những mâu thuẫn xảy ra trong thời gian gần đây. Dự kiến, Tottenham sẽ chấp nhận bỏ ra 95 triệu bảng để đưa Koulibaly về London. Đây sẽ là mức phí chuyển nhượng kỷ lục thế giới dành cho một hậu vệ.', 'thethao', 45614, 'bóng đá', 0),
(20, 'Davis Cup: Djokovic thắng đẹp, Serbia thẳng tiến vào tứ kết', 'img/nova.jpg', 'Novak Djokovic tiếp tục tỏa sáng để giúp đội tuyển quần vợt nam Serbia đánh bại Pháp để tiến vào vòng knock-out Davis Cup 2019 với 2 điểm trọn vẹn.', '2019-11-25', 'Dù được đánh giá cao nhưng Benoit Paire rõ ràng không phải là đối thủ xứng tầm với Novak Djokovic. Tay vợt Serbia hoàn toàn làm chủ thế trận ngay từ đầu.\r\nSau một chút chệch choạc ở game giao bóng đầu tiên, tay vợt số 2 thế giới dần bắt nhịp và không cho Benoit Paire thêm cơ hội tạo nên bất ngờ. Chỉ với 1 điểm break ở game 8, Novak Djokovic đã nhẹ nhàng giành chiến thắng 6-3 trong ván đầu. 6-3 cũng là tỷ số ở ván 2 khi Nole giành 2 điểm break trong các game 3 và 9 để khép lại trận đấu với thắng lợi 2-0.\r\nChia sẻ sau trận, Novak Djokovic cho biết: \"Tôi đã có những quãng nghỉ giải lao quan trọng đúng thời điểm ở cả 2 ván đấu.\" Tay vợt số 2 thế giới nói tiếp: \"Benoit là 1 đối thủ khó chơi. Anh ấy tài năng và khó dự đoán.\"\r\n\r\nChiến thắng của Djokovic giúp Serbia vươn lên dẫn 2-0 trong cuộc đối đầu với tuyển Pháp, bởi trước đó Filip Krajinovic cũng đã có chiến thắng bất ngờ trước Jo-Wilfried Tsonga với tỷ số 2-0 (7-5; 7-6). Và dù ở trận đánh đôi, Janko Tipsarevic và Viktor Troicki đã không thể vượt qua cặp Pierre-Hugues Herbert/Nicolas Mahut (thua 0-2 (4-6; 4-6)) thì đội tuyển Serbia vẫn chính thức giành vé vào vòng knock-out với 2 điểm trọn vẹn. Trước đó họ đã đánh bại đội tuyển Nhật Bản với tỷ số 3-0.\r\n\r\nỞ một diễn biến khác, đội tuyển Tây Ban Nha của Rafael Nadal cũng đã giành quyền vào vòng tứ kết sau 2 lượt toàn thắng trước Nga (2-1) và Croatia (3-0). Ở đó, ông vua sân đất nện góp công lớn khi giúp đội nhà toàn thắng cả 2 trận đánh đơn và 1 trận đánh đôi.', 'thethao', 45622, 'quần vợt', 0),
(21, 'Saigon Heat công bố ngoại binh cuối cùng ở ABL10', 'img/w.png', 'Suất ngoại binh cuối cùng của Saigon Heat cho mùa giải ABL 2019-2020 đã được đội chủ sân CIS hé lộ.', '2019-11-25', 'Trên fanpage chính thức, Saigon Heat đã công bố ngoại binh cuối cùng của mình tại giải bóng rổ ABL 2019 - 2020. Theo đó, Sam Thompson là cái tên được đại diện Việt Nam trao mặt gửi vàng.\r\nTrưởng thành và thi đấu từ giải NCAA trong màu áo đại học Ohio State, Sam Thompson đã trải qua bốn năm thi đấu tại NBA G League. Năm 2015, anh có tên trong danh sách NBA Draft và đã ký hợp đồng với Charlotte Hornets. Trở về NBA G-League sau 1 năm chinh chiến ở Châu Âu, Sam ghi tên mình vào đội hình Ông 30 với mong muốn tìm kiếm thử thách mới ở đấu trường châu Á.\r\n\r\nNgoài phong cách chơi bóng tốc độ và luôn sẵn sàng bùng nổ, chàng tiền phong 26 tuổi cao 2m01 này còn sở hữu khả năng phòng ngự đa vị trí cùng khả năng block đáng nể.\r\nTrước Sam, Saigon Heat đã thông báo việc chiêu mộ thành công 2 ngoại binh là Christien Charles và Gary Forbes. Bên cạnh đó, nhà vô địch VBA 2019 cũng xác nhận có được sự phục vụ của Chris Dierker, Vincent Nguyễn và Tâm Đinh ở ABL 10.', 'thethao', 45678, 'bóng rổ', 0),
(22, '2 triệu thông tin khách hàng bị lộ, ngân hàng nói gì?', 'img/2.jpg', 'Vừa qua có thông tin lộ dữ liệu cá nhân của 2 triệu khách hàng được cho là của Ngân hàng Thương mại Cổ phần Hàng hải Việt Nam (MSB). Vậy thực hư chuyện này ra sao?', '2019-11-26', 'Theo đó, trên diễn đàn hacker RaidForums, một thành viên đã đăng tải thông tin cho biết đang nắm thông tin của hơn 2 triệu khách hàng ở MSB. Trước đó, diễn đàn này cũng từng xuất hiện bài viết chứa dữ liệu gồm email, thẻ ngân hàng của khách hàng Thế Giới Di Động.\r\n\r\nCác thông tin bị lộ bao gồm họ tên, số chứng minh nhân dân, số điện thoại, địa chỉ nhà, ngày tháng năm sinh, giới tính, email và nghề nghiệp. \r\n\r\nTheo dữ liệu được hacker tung ra cho thấy, đây là những thông tin mới trong năm 2019, không phải dữ liệu cũ. Nếu muốn có dữ liệu này thì cần bỏ ra một khoản tiền cho hacker.\r\n\r\nSau khi những thông tin này được một số báo đăng tải và xác nhận có thông tin chính xác của một số khách hàng MSB, ngân hàng này đã lập tức đưa ra phản hồi.\r\n\r\n\"Về việc đăng tải thông tin khách hàng được cho là của MSB tại một diễn đàn trên internet, hiện chưa xác thực được đây có thực sự là thông tin từ MSB hay không bởi những thông tin trên hoàn toàn chỉ là thông tin cá nhân như tên, địa chỉ, điện thoại ... không có các thông tin liên quan đến giao dịch ngân hàng\" – MSB cho biết.\r\n\r\nBên cạnh đó, MSB cho hay ngân hàng này đang phối hợp với các cơ quan chức năng và chuyên gia an ninh mạng để kiểm tra và đánh giá về vụ việc này.\r\n\r\nĐể trấn an khách hàng, MSB thông tin rằng tất cả các dịch vụ của MSB đều tuân thủ theo các tiêu chuẩn bảo mật của Ngân Hàng Nhà Nước như TT18, TT47, TT13… Đồng thời, MSB cũng đang trong quá trình triển khai để đáp ứng các tiêu chuẩn về PCI DSS, ISO27001/2, ISO2000.\r\n\r\n\"Chúng tôi cũng cam kết chắc chắn với khách hàng của mình rằng tất cả mật khẩu của khách hàng đang giao dịch tại MSB đều được mã hóa, các giao dịch tài chính đều có xác thực nâng cao qua OTP, biometric, soft/hard token… Do đó, khách hàng có thể hoàn toàn yên tâm khi thực hiện các giao dịch tại MSB\" – MSB cho biết.\r\n\r\nNhư vậy, đến nay vẫn chưa thể khẳng định chắc chắn những thông tin nói trên bị tiết lộ trên Diễn đàn RaidForums có phải là của khách hàng của MSB hay không, tuy nhiên để phòng ngừa rủi ro, các chuyên gia an ninh mạng cho rằng khách hàng của MSB tốt nhất nên đổi lại các mật khẩu giao dịch của mình.\r\n\r\nÔng Nguyễn Quang Trung, chuyên gia công nghệ tài chính cũng cho rằng, các khách hàng của MSB cũng không nên quá lo lắng bị mất tiền trong tài khoản, bởi bảo mật của các ngân hàng nói chung hiện rất tốt, không dễ để hacker chỉ dựa vào một số thông tin cá nhân bị lộ lọt như trên mà có thể lấy được tiền từ tài khoản của khách hàng.\r\n\r\n\"Trong trường hợp bị lộ, lọt thông tin, khách hàng thường là người bị động. Họ không phải là người trực tiếp cung cấp thông tin cho hacker. Do đó, các ngân hàng cần nâng cao hệ thống bảo mật để bảo vệ thông tin cá nhân của khách hàng tốt hơn\", ông Trung nhấn mạnh.', 'taichinh', 54615, 'tiền tệ', 0),
(23, '', 'img/bang.jpg', 'Phạm Băng Băng xa hoa mua nội thất cao cấp cho nhà mới, xuất hiện sự kiện trong vòng vây bảo vệ dày đặc', '2019-11-26', 'Hình ảnh Phạm Băng Băng cùng mẹ xuất hiện tại Thượng Hải vào đầu tháng 11 được công bố. Ngày hôm đó, Phạm Băng Băng mặc một bộ đồ sọc lấp lánh với ốp điện thoại Pikachu màu vàng cùng chiếc túi sang trọng trên tay. Áo len hình Garfield được cô buộc ở thắt lưng trông khá dễ thương.', 'giaitri', 44645, 'trung quốc', 0),
(24, '', 'img/kpop.jpg', 'Lập kỉ lục không thua BLACKPINK và BTS, Jennie và Jungkook là idol Kpop duy nhất có hit solo vượt 100 triệu lượt stream trên Spotify', '2019-11-26', '', 'giaitri', 45615, 'hàn quốc', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tin`
--
ALTER TABLE `tin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tin`
--
ALTER TABLE `tin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
