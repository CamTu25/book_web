-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2018 at 05:55 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bansach`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `book_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pub_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `manxb` (`pub_id`,`cat_id`),
  KEY `maloai` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `description`, `price`, `img`, `pub_id`, `cat_id`) VALUES
('gk1', 'Âm nhạc và Mỹ Thuật', 'Âm Nhạc Và Mỹ Thuật Lớp 9 :Sách giáo khoa môn Âm Nhạc và môn Mỹ Thuật lớp 9 \r\nSsản phẩm không được tặng kèm bọc plastic. Mong quý khách hàng lưu ý.', 19000, 'gk1.png', 'gd', 'gk'),
('gk2', 'Sinh học lớp 9', 'Di truyền và biến dị cùng với sinh vật và môi trường là hai phần cơ bản trong nội dung chương trình Sinh Học 9. Bước sang năm học thứ tư và cũng là năm học cuối của bậc THCS, chương trình học có phần chuyên sâu hơn, kiến thức ngày một khó hơn. Các em được tiếp cận từ ADN và gen cho đến ứng dụng của di truyền học đối với con người, công nghệ gen, thành tựu chọn giống vật nuôi và cây trồng. Chưa hết, nâng cao chương trình các năm trước, các em được nắm thêm kiến thức về hệ sinh thái, con người, dân số và môi trường cũng như được xây dựng ý thức bảo vệ môi trường sống của chúng ta.', 25000, 'gk2.png', 'gd', 'gk'),
('gk3', 'Đạo Đức lớp 4', 'Đạo Đức Lớp 4 là sách giáo khoa cơ bản do Bộ Giáo Dục Đào Tạo tổ chức biên soạn. Tập sách gồm 14 bài học đạo đức về các đức tính tốt cần có và cách ứng xử với môi trường và xã hội.\r\n\r\nTập sách gồm những nội dung chính như sau:\r\n\r\nTrung thực trong học tập\r\n\r\nVượt khó trong học tập\r\n\r\nBiết bày tỏ ý kiến\r\n\r\nTiết kiệm tiền của\r\n\r\nTiết kiệm thời giờ\r\n\r\nHiếu thảo với ông bà, cha mẹ\r\n\r\nBiết ơn thầy giáo, cô giáo\r\n\r\nYêu lao động', 6500, 'gk3.png', 'gd', 'gk'),
('gk4', 'Lịch sử lớp 10', 'Xã hội nguyên thủy:Thời kì xã hội nguyên thủy là bước đi đầu tiên chập chững của loài người, dân tộc nào cũng trải qua.Con người tìm ra lửa, chế tác công cụ lao động từ thô sơ đến chính xác, đa dạng, sử dụng có hiệu quả, luôn luôn cải tiến công cụ lao động, không ngừng cải thiện đời sống. Sản xuất phát triển, con người chủ động với cuộc sống hơn, biết trồng trọt và chăn nuôi, dựng lều làm nhà để ở.Thời kì này trình độ loài người thấp kém…', 15000, 'gk4.png', 'gd', 'gk'),
('gk5', 'Công nghệ lớp 11', 'Sau khi học xong bài này HS cần:- Hiểu được khái niệm và công dụng của mặt cắt và hình cắt.- Nhận biết được các mặt cắt và hình cắt trên bản vẽ kỹ thuật.- Biết cách vẽ mặt cắt và hình cắt của vật thể đơn giản', 16000, 'gk5.png', 'gd', 'gk'),
('gk6', 'Toán lớp 3', 'Trọng tâm và hạt nhân của chương trình toán ở Tiểu học là nội dung Số học. Trong đó phép nhân, phép chia các số tự nhiên là nội dung cơ bản, quan trọng trong nội dung số học. Bởi vì, nhiệm vụ trọng yếu của môn toán Tiểu học là hình thành cho học sinh kĩ năng tính toán – một kĩ năng rất cần thiết trong cuộc sống, lao động và học tập của học sinh. Vì vậy giáo viên cần tìm hiểu, nghiên cứu để dạy tốt cho học sinh bộ môn này.', 6500, 'gk6.png', 'gd', 'gk'),
('gk7', 'Ngữ văn lớp 12', 'Nhằm mục đích giúp các em học tập tốt hơn, Booktoan.com xin trân trọng giới thiệu loạt bài Văn lớp 12 được biên soạn bám sát theo nội dung sách giáo khoa Văn 12  hiện hành.', 17000, 'gk7.png', 'gd', 'gk'),
('gk8', 'Địa lí lớp 10', 'Hướng dẫn trả lời câu hỏi lý thuyết: Giúp các em làm rõ các câu hỏi lý thuyết ở phần bài học trong sách giáo khoa.Hướng dẫn trả lời câu hỏi và bài tập: Giúp các em làm rõ các câu hỏi và bài tập ở phần cuối bài trong sách giáo khoa. Bài tập trắc nghiệm: Được biên soạn theo hình thức bốn lựa chọn, trong đó có một phương án đúng nhất. Các câu hỏi này nhằm giúp các em  tự đánh giá nhanh khả năng nắm kiến thức của mình sau mỗi bài học và phục vụ cho việc kiểm tra, thi cử.', 13000, 'gk8.png', 'gd', 'gk'),
('kt1', 'Thịnh vượn tài chính tuổi 30', 'Một trong số những mong muốn chung của mọi người là việc sống mà không cần phải lo lắng về tiền. Dù gì đi nữa nếu thiếu tiền hoặc không có tiền thì sẽ có nhiều khi phiền não, đôi khi sẽ trở nên khốn khổ. Nếu trong cuộc sống nhất thiết phải lựa chọn thời kỳ không có tiền thì nên chọn khi nào?\r\nDù sao thì không có tiền khi còn nhỏ là tốt nhất. Khi còn nhỏ dù mệt nhọc hay thiếu thốn thì cũng còn tốt hơn là giàu có, an nhàn khi có tuổi. Trong quá khứ dù vất vả thì hiện tại giàu có hơn, hiện tại dù có hơi vất vả thì tương lai thoải mái hơn.\r\n\"Tuổi già\" chính là tương lai đó. Về già khi năng lực tài chính đã mất, đến tiền còn không có thì không phải là quá khốn khổ ư? Vì thế dù chỉ là một ngày thì cũng phải nhanh chóng chuẩn bị cho một tuổi già không phải lo lắng về tiền bạc.', 130000, 'kt1.png', 'tn', 'kt'),
('kt2', 'Những vấn đề kinh tế Việt Nam', 'Kinh tế Việt Nam là nền kinh tế thị trường định hướng xã hội chủ nghĩa, phụ thuộc cao vào xuất khẩu thô và đầu tư trực tiếp nước ngoài. Đây là nền kinh tế lớn thứ 6/11 ở Đông Nam Á; lớn thứ 44 trên thế giới xét theo quy mô GDP danh nghĩa hoặc lớn thứ 34 nếu xét GDP theo sức mua tương đương (năm 2016), đứng thứ 127 xét theo GDP danh nghĩa bình quân đầu người hoặc đứng thứ 117 nếu tính GDP bình quân đầu người theo sức mua tương đương. Tổng sản phẩm nội địa GDP năm 2016 là 202 tỷ USD theo danh nghĩa hoặc 595 tỷ USD theo sức mua tương đương.', 100000, 'kt2.png', 'tn', 'kt'),
('kt3', 'Luật kinh tế', 'Nội dung sách bao gồm các văn bản quy phạm pháp luật điều chỉnh hai nhóm quan hệ cã hội chủ yếu, đó là những quan hệ trong quá trình quản lý nhà nước đối với hoạt động kinh doanh. Cuốn sách nhằm nâng cao nhận thức chung về ngành Luật kinh tế, cung cấp tài liệu cho bạn đọc tìm hiểu về những nội dung cơ bản cảu ngành luật.', 90000, 'kt3.png', 'tn', 'kt'),
('kt4', 'Siêu kinh tế học hài hước', 'Bùng nổ sau Kinh tế học hài hước.Kinh tế học hài hước – cuốn sách bán chạy nhất theo bình chọn của New York Times. Với hơn 4 triệu bản được dịch ra 35 thứ tiếng, đây thực sự là cuộc cách mạng trong tư duy khiến bất cứ ai từng đọc qua cũng phải thay đổi cách nhìn nhận về thế giới xung quanh. Giờ đây, Steven D. Levitt và Stephen J. Dubner cùng cuốn Siêu kinh tế học hài hước sẽ lại một lần nữa mở ra cho những độc giả quen thuộc cũng như lần đầu biết đến họ một cái nhìn mới sâu sắc hơn, dí dỏm hơn và cũng đầy ngạc nhiên hơn.', 111000, 'kt4.png', 'tn', 'kt'),
('kt5', 'Tuần làm việc 4 giờ', 'Nếu bạn biết cách quản lí thời gian, các mục tiêu cũng như thứ tự ưu tiên các công việc một cách hợp lí thì bạn hoàn toàn có khả năng tạo ra nguồn thu nhập đầy đủ dù chỉ làm việc 4 giờ mỗi tuần. Và thế là, tạm biệt nhé - những ngày làm việc 8 tiếng đồng hồ nặng nhọc!Cuốn sách THE 4-HOUR WORK WEEK đã làm dấy lên một làn sóng tư tưởng mới mẻ tại thung lũng Silicon. Marc Andreesen - chuyên gia về tối ưu hoá năng suất làm việc cá nhân đồng thời là một trong những doanh nhân nổi tiếng nhất ở trung tâm công nghệ cao của thế giới trong một bài phỏng vấn cho biết: \"Về cơ bản, việc Tim đã làm là tập hợp và chắt lọc những học thuyết về quản lý thời gian cùng năng suất lao động trong vòng 2, 3 thập kỷ vừa qua, sau đó tối ưu hoá nó và đưa ra những khái niệm mới, rất hữu dụng\".', 65000, 'kt5.png', 'tn', 'kt'),
('kt6', 'Marketing hiện đại', '“Marketing là môn khoa học và nghệ thuật lựa chọn thị trường mục tiêu và xây dựng mối quan hệ sinh lợi với chúng. Mục đích của chuyên gia marketing là tìm kiếm, thu hút, giữ chân và phát triển các khách hàng mục tiêu bằng việc tạo dựng và mang lại giá trị vượt trội cho khách hàng.”Philip Kotler', 70000, 'kt6.png', 'tn', 'kt'),
('kt7', 'Nghệ thuật kiếm tiền của người do Thái', 'Là một dân tộc nhỏ bé, dân tộc Do Thái sở dĩ có thể tồn tại ngoan cường và tạo nên nhiều thành tựu rực rỡ chính là vì họ có sự khao khát thành công mãnh liệt. Đối với họ, thành công trong sự nghiệp và sở hữu nhiều của cải không chỉ là lý tưởng và hoài bão, mà còn là trách nhiệm và nghĩa vụ. Sức mạnh tinh thần to lớn này giúp họ không ngừng phấn đấu trở thành những người kiếm tiền giỏi nhất thế giới.Người Do Thái cho rằng kiếm tiền là một quá trình vận dụng trí tuệ. Mọi của cải đều có thể bị mất đi, chỉ có trí tuệ là tài sản đi theo họ suốt đời. Do vậy, người Do Thái không bao giờ tiếc tiền đầu tư cho trí tuệ. Với họ, càng hiểu biết nhiều thì càng dễ kiếm được nhiều tiền.', 69000, 'kt7.png', 'tn', 'kt'),
('kt8', 'Kinh tế phát triển', 'Trong thập niên 1960 và thập niên 1970, các nhà kinh tế học Marxist mới (American Marxist) đưa ra lý thuyết phát triển phụ thuộc (dependent development). Thế giới chia làm hai nhóm: nhóm nước giàu và nhóm nước nghèo. Sự phát triển của nhóm nước nghèo là \"sự phát triển phụ thuộc\", theo đó sự phát triển này phụ thuộc vào vốn, thương mại và công nghệ mang đến từ các nước giàu. Các nước kém phát triển thường phụ thuộc vào các nước phát triển và bị bóc lột. Ngay trong một nước nghèo có thể có tầng lớp thống trị (bao gồm chính trị gia, quân nhân,...) có quan hệ khăng khít với các nước phát triển và các tổ chức quốc tế bóc lột tầng lớp lao động trong nước. Vì vậy, các nước nghèo không nên đi theo con đường tư bản chủ nghĩa để phát triển kinh tế và không nên quan hệ kinh tế với các nước tư bản chủ nghĩa. Chủ trương này hàm ý phát triển kinh tế với nền kinh tế đóng cửa và tự cấp tự túc.', 89000, 'kt8.png', 'tn', 'kt'),
('ls1', 'Tiến trình lịch sử Việt Nam', 'Tập sách được biên soạn theo tinh thần bám sát đề cương môn học Tiến trình lịch sử Việt Nam của Trường ĐH Thủ Dầu Một, bảo đảm cung cấp cho sinh viên những kiến thức vừa cơ bản, vừa hệ thống quá trình phát triển liên tục của lịch sử Việt Nam từ khi có con người xuất hiện trên đất nước ta cho đến nay. Để phù hợp với thời lượng môn học, tập sách cấu trúc theo từng bài, tương ứng với các thời kỳ phát triển của lịch sử dân tộc.', 100000, 'ls1', 'vhtt', 'ls'),
('ls2', 'Việt nam một thiên Lịch Sử', 'Trong một chuyến thăm ngoại giao sang Mỹ vào thế kỷ 20, một tổng thống Mỹ đã bắt tay trưởng đoàn ngoại giao của ta và nói: “Xin gửi lời chào của đất nước với 200 triệu dân!”. Khi đó, nước ta mới chỉ có khoảng 20 triệu dân, nghèo khó, chiến tranh, lấy gì để đối lại sự tự đắc của nước Mỹ? Và vị đại biểu của ta đã bình tĩnh mỉm cười: “Còn tôi, cũng xin gửi tới ngài lời chào từ đất nước với 4000 năm lịch sử”.\r\nViệt Nam Một Thiên Lịch Sử của tác giả Nguyễn Khắc Viện được đánh giá là trình bày chặt chẽ và sáng rõ, có những hình tượng hay với dáng vẻ bình tĩnh, tự tin, đã giải thích về ý chí của một dân tộc quyết tâm vượt qua mọi gian khổ.', 104000, 'ls2', 'vhtt', 'ls'),
('ls3', 'Hoàng Lê Thống Nhất chí', 'Đây là một cuốn tiểu thuyết lịch sử viết theo lối chương hồi, ghi chép về sự thống nhất vương triều nhà Lê vào thời điểm Tây Sơn diệt Trịnh trả lại Bắc Hà cho Vua Lê đến khi Nguyễn Ánh đánh bại Tây Sơn, thống nhất cả nước. Đây là tác phẩm viết theo thể chí - 1 lối văn ghi chép sự vật, sự việc, do một số tác giả kế tục nhau viết, trong những thời điểm khác nhau. Toàn bộ tác phẩm gồm có 17 hồi.Bảy hồi đầu là phần chính biên do Ngô Thì Chí viết, mười hồi tiếp theo là phần tục biên, trong đó có 7 hồi được cho là Ngô Thì Du viết, còn 3 hồi cuối cùng viết có tính chất chắp vá, lại có cả những sự việc thời Tự Đức, tương truyền do Ngô Thì Thuyết (có người đọc là Thiến), còn các nhà nghiên cứu cho là có thể của một tác giả vô danh khác', 150000, 'ls3', 'vhtt', 'ls'),
('ls4', '36 Danh Hương Thăng Long Hà Nội', '36 danh hương Thăng Long - Hà Nội (36 làng nổi tiếng Thăng Long - Hà Nội): Phần 1 giới thiệu về các làng nổi tiếng ở Hà Nội như làng Bát Tràng, Vùng Bưởi, làng Cố Đô, làng Chèm và Ba chạ anh em, làng chuông, làng Đa Sĩ, làng Đại Áng... Mời bạn đọc tham khảo nội dung phần 1 cuốn sách.', 98000, 'ls4', 'vhtt', 'ls'),
('ls5', 'Lịch Sử Mĩ Thuật Việt Nam', 'Trải qua hàng nghìn năm lịch sử từ thời cổ đại đến nay, mỹ thuật Việt Nam cũng phát triển và đạt được nhiều thành tích đáng kể. Có rất nhiều bài viết nghiên cứu trên các báo, các tạp chí về vấn đề này, nhưng một công trình nghiên cứu thực sự đầy đủ và khoa học thì chưa có. Từ trước đến nay chỉ mới có cuốn Lược sử Mỹ Thuật Việt Nam, một công trình nghiên cứu của tác giả Nguyễn Phi Hoanh - đã được xuất bản. Và tiếp theo hiện nay là cuốn Lược Sử Mỹ Thuật Việt Nam của tác giả Trịnh Quang Vũ đã đoạt giải A của Hội Mỹ thuật Việt Nam năm 2000. Cuốn sách này bao gồm 2 phần, nhiều minh hoạ sinh động giúp bạn đọc hình dung một cách đầy đủ về diện mạo Mỹ thuật Việt Nam gồm các loại hình: nghệ thuật kiến trúc, điêu khắc, hội hoạ, trang trí... từ thời Văn Lang, Âu Lạc đến Đinh, Lý, Trần, Lê, Trịnh, Nguyễn.', 78000, 'ls5', 'vhtt', 'ls'),
('ls6', 'Triều nguyễn và lịch sử của chúng ta', 'Bài thơ được trang trọng in trên bìa cuối cuốn sách cùng ảnh lăng vua Khải Định, vốn là bài ngũ ngôn tứ tuyệt được sơn son, thiếp vàng treo tại gian chính, trung tâm của điện Thái Hoà, kinh thành Huế.Các nhà nghiên cứu cho rằng bài thơ như là lời tuyên ngôn về độc lập, về tinh thần dân tộc của người dân Việt Nam.', 163000, 'ls6', 'vhtt', 'ls'),
('ls7', 'Lịch sử nội chiến ở Việt Nam', 'Thoát khỏi sự ràng buộc bắt nguồn từ những định kiến và lập trường chính trị, Lịch sử nội chiến ở Việt Nam từ 1771 đến 1802 đã dựng lại chi tiết bàn cờ quyền lực trong xã hội Đại Việt nửa cuối thế kỷ 18.Những liên minh và đối địch, tạm thời hay lâu bền dựa trên căn bản quyền lợi thiết thân được tái hiện sinh động: những giáo sĩ thừa sai và các nhà buôn Tây phương, nhóm di dân Hoa kiều và cướp biển Tề Ngôi, các thế lực ngoại bang Xiêm La và Mãn Thanh, nhà Lê-Trịnh thời mạt diệp và những vị hoàng thân chạy loạn... Vượt lên trên hết là gương mặt hai đối thủ lớn nhất của thời đại: Quang Trung Nguyễn Huệ và Gia Long Nguyễn Ánh.', 85000, 'ls7', 'vhtt', 'ls'),
('ls8', 'Các Triều đại Việt Nam', 'Các sử gia phong kiến thường chỉ chép về cuộc đời và hành động của các vị vua chúa qua mỗi triều đại. Ngược lại, các biên soạn của các nhà sử học ngày nay lại phân kỳ và đánh giá sự phát triển lịch sử theo các hình thái kinh tế xã hội và dấu tranh giai cấp, không chú ý nhiều đến cuộc đời của các ông vua, bà chúa. Thảng hoặc chỉ có một số vị vua có công tích nổi bật trong sự nghiệp dựng nước và giữ nước mới được đề cập đến. Vì vậy, độc giả trẻ khi đọc các cuốn thông sử hay các giáo trình lịch sử ở trung học trong mấy chục năm trở lại đây, chưa có được một niệm đầy đủ về sự mở đầu kế tục của các triều đại, các đời vua trong lịch sử dân tộc.', 79000, 'ls8', 'vhtt', 'ls'),
('pl1', 'Pháp luật đại cương', 'Môn học pháp luật đại cương là một môn học quan trọng trong chương trình đào tạo đại học, cao đẳng và trung học chuyên nghiệp được Bộ giáo dục và Đào tạo phê duyệt trong đề cương chương trình chung và được đưa vào giảng dạy chính thức tại các trường đại học, cao đẳng và trung học chuyên nghiệp trong cả nước.Các mục tiêu, yêu cầu của cuốn sách pháp luật đại cương: Giúp cho học sinh, sinh viên có sự hiểu biết và nắm bắt một cách có hệ thống những vấn đề cơ bản về nhà nước và pháp luật nói chung và các ngành luật cụ thể của hệ thống pháp luật Việt Nam nói riêng. Giúp cho học sinh, sinh viên có điều kiện dễ dàng tiếp cận với các môn học khác có liên quan đến pháp luật.', 45000, 'pl1.png', 'tn', 'pl'),
('pl2', 'Bảo vệ tự do và an ninh cá nhân', 'Tại  Việt Nam,  Nhà  nước  CHXHCN  Việt Nam  đảm bảo và  thực  hiện quyền con người bằng Hiến pháp và pháp luật, đó là sợi chỉ đó xuyên suốt toàn bộ tiến trình đấu tranh cách mạng, tiến hành công cuộc đổi mới, xây dựng và bảo vệ Tổ quốc Việt Nam xã hội chủ nghĩa. Hiến pháp năm  2013 quy  định rằng: “Ở nước Cộng  hòa xã  hội  chủ nghĩa  Việt  Nam, các quyền  con người, quyền công dân về chính trị, dân sự, kinh tế, văn hóa, xã hội được công nhận, tôn trọng, bảo vệ, bảo đảm theo Hiến pháp và pháp luật” [23, Điều 14].', 56000, 'pl2.png', 'tn', 'pl'),
('pl3', 'Pháp luật về lao động', 'Trong những năm qua, cùng với sự phát triển mạnh mẽ của hoạt động sản xuất - kinh doanh, quan hệ lao động trong các doanh nghiệp từng bước dược cải thiện, thu nhập và đời sống của người lao động được nâng cao, lợi nhuận cùa người sử dụng lao động được bảo đảm. Tuy nhiên, ở một số doanh nghiệp, hiện tượng tranh chấp lao động tập thể vẫn tồn tại và đang có xu hướng tăng cả về quy mô và số kaợng. Một nguyên nhân của tình trạng này là cơ chế pháp lỹ dể giải quvết tranh chấp tuy đã được xây dựng, dược sửa đổi, bổ sung nhưng chưa thực sự phát huy hiệu quả trong thực tiễn. Yêu cầu sửa đổi pháp luật một cách cơ bản trong lĩnh vực này đã và đang được đặt ra. Tuy nhiên, do chúng ta chưa có nhiều kinh nghiệm xử lý nên việc nghiên cứu, tham khảo pháp luật nước ngoài là rất cần thiết.', 62000, 'pl3.png', 'tn', 'pl'),
('pl4', 'Luật đất đai', 'Nhằm giúp các cơ quan, tổ chức, cá nhân hoạt động trong lĩnh vực đất đai và bạn đọc quan tâm đến những quy định mới nêu trên, Nhà xuất bản Nông Nghiệp phối hợp với TRUNG TÂM SÁCH PHÁP LUẬT xuất bản cuốn sách: HỆ THỐNG TOÀN VĂN LUẬT ĐẤT ĐAI & CÁC NGHỊ ĐỊNH, THÔNG TƯ, QUYẾT ĐỊNH HƯỚNG DẪN THI HÀNH.Ngày 29/9/2017, Bộ Tài nguyên và môi trường đã ban hành Thông tư 33/2017/TT-BTNMT Quy định chi tiết Nghị định số 01/2017/NĐ-CP ngày 06/01/2017 của Chính phủ sửa đổi, bổ sung một số Nghị định quy định chi tiết thi hành Luật Đất đai và sửa đổi, bổ sung một số điều của các Thông tư hướng dẫn thi hành Luật Đất đai', 160000, 'pl4.png', 'tn', 'pl'),
('pl5', 'Luật Quốc phòng', 'Luật Quốc Phòng Và Các Văn Bản Hướng Dẫn Thi Hành\r\n\r\nNội dung sách bao gồm các văn bản quy phạm pháp luật quy định về chính sách quốc phòng, nguyên tắc, nội dung cơ bản về hoạt động quốc phòng; hoạt động của lực lượng vũ trang nhân dân; nhiệm vụ, quyền hạn của cơ quan, tổ chức, quyền và nghĩa vụ của công dân về quốc phòng...', 29000, 'pl5.png', 'tn', 'pl'),
('pl6', 'Pháp luật về doanh nghiệp', 'Cuốn sách này được viết chủ yếu dành cho luật sư, người tham gia công tác giảng dạy và sinh viên luật mong muốn hiểu biết các vấn đề pháp lý cơ bản từ góc độ lý luận và thực tiễn liên quan đến việc thành lập, tổ chức quản lý và hoạt động của doanh nghiệp. Cuốn sách cũng được dành cho người quản lý doanh nghiệp và những ai quan tâm muốn tìm hiểu khía cạnh pháp lý của các chủ đề trên. \r\n\r\nKhi viết cuốn sách này, tác giả không có ý định mô tả và liệt kê các quy định của pháp luật về doanh nghiệp. Thay vào đó, cuốn sách tập trung vào việc trình bày các vấn đề pháp lý cơ bản liên quan đến các chủ đề trên, đặc biệt đối với hai loại hình doanh nghiệp thông dụng ở Việt Nam là CTTNHH và CTCP (bao gồm cả công ty đại chúng). Cuốn sách trình bày các quy định của pháp luật về doanh nghiệp đang có hiệu lực tại thời điểm 31 tháng 12 năm 2015. Đây là thời điểm mà Luật Doanh nghiệp 2014 và Luật Đầu tư 2014 bắt đầu có hiệu lực. Mặc dù vậy, cuốn sách cũng trình bày một số thay đổi luật sau thời điểm ngày 31 tháng 12 năm 2015.\r\n', 230000, 'pl6.png', 'tn', 'pl'),
('pl7', 'Bộ luật tố tụng hình sự', 'Nội dung sách bao gồm các văn bản quy phạm pháp luật quy định trình tự, thủ tục khởi tố, điều tra, truy tố, xét xử và thi hành án hình sự; chức năng, nhiệm vụ, quyền hạn và mối quan hệ giữa các cơ quan tiến hành tố tụng; nhiệm vụ, quyền hạn và trách nhiệm của những người tiến hành tố tụng; quyền và nghĩa vụ của những người tham gia tố tụng...', 99000, 'pl7.png', 'hcm', 'pl'),
('pl8', 'Hỏi đáp về pháp luật thi đua khen thưởng', 'Chương 1: Những quy định chung\r\n\r\nChương 2: Tổ chức thi đua, danh hiệu và tiêu chuẩn danh hiệu thi đua\r\n\r\nChương 3: Hình thức, đối tượng, tiêu chuẩn khen thưởng\r\n\r\nChương 4: Thẩm quyền quyết định, trao tặng, thủ tục, hồ sơ xét đề nghị danh hiệu thi đua và khen thưởng\r\n\r\nChương 5: Quyền và nghĩa vụ của cá nhân, tập thể được khen tặng danh hiệu thi đua và khen tưởng\r\n\r\nChương 6: Quản lý nhà nước về công tác thi đua, khen thưởng\r\n\r\nChương 7: Xử lý vi phạm\r\n\r\nChương 8: Điều khoản thi hành', 23000, 'pl8.png', 'tn', 'pl'),
('td1', 'Từ điển thuật ngữ phổ thông', 'Lựa chọn những thuật ngữ, khái niệm cơ bản trong sách giáo trình lịch sử và thường gặp trong các loại tài liệu tham khảo có liên quan, nhằm giúp học sinh hiểu sâu, chính xác, phong phú hơn lịch sử dân tộc và thế giới.', 150000, 'td1.png', 'gd', 'td'),
('td2', 'Từ điển Việt Nhật', 'Từ điển từ vựng là linh hồn của người học tiếng, trong nó chứa tất cả những gì cơ bản nhất cấu tạo nên một ngôn ngữ.Trong bối cảnh Nhật Bản và Việt Nam đang mở rộng mối quan hệ hợp tác, nhu cầu học tập tiếng Nhật là điều tất yếu. Đối với việc học ngoại ngữ nói chung và học tiếng Nhật nói riêng, việc sở hữu một cuốn từ điển hay là một điều vô cùng quan trọng. Một cuốn từ điển tốt, giải nghĩa, chú thích rõ ràng sẽ giúp ích cho bạn học rất nhiều trong quá trình học tập và rèn luyện các kỹ năng của mình. Vì thế, việc lựa chọn một quyển từ điển phù hợp là hết sức cần thiết. Hãy cùng Giáo trình tiếng Nhật khám phá cuốn Từ điển Nhật Việt của nhóm Kamiya Taeko nhé', 77000, 'td2.png', 'gd', 'td'),
('td3', 'Từ điển chính tả Việt Nam', 'Chính tả là chuẩn mực hóa ngôn ngữ về mặt văn tự. Đây là một thuật ngữ Hán Việt dịch ra là viết đúng. Muốn viết đúng người viết phải hiểu các quy ước của chính văn tự đang dùng nhưng cũng phải nắm được đặc điểm của các khu vực chức năng mà phương tiện đang hoạt động. Đối với tiếng Việt, điều này có nghĩa là phải có hiểu biết nhất định về đặc điểm chữ viết, đặc điểm âm thanh và đặc điểm phân tầng chức năng của tiếng Việt. Tiếng Việt là ngôn ngữ thống nhất. Chính tả tiếng Việt căn bản là một chính tả thống nhất. Tuy nhiên, do tiếng Việt có nhiều phương ngữ, thổ ngữ, nên bên cạnh tính thống nhất là chủ đạo, nó cũng có những nét dị biệt khá rõ ràng trong cách phát âm, cách sử dụng từ ngữ giữa các vùng miền khác nhau. Sự khác biệt về cách phát âm đã tạo ra ấn tượng mạnh mẽ về sự tồn tại trong thực tế ba vùng phương ngữ khác nhau: phương ngữ Bắc Bộ, phương ngữ Trung Bộ và phương ngữ Nam Bộ. Mỗi vùng phương ngữ có những đặc điểm phát âm tiếng Việt khác nhau đã tạo nên ba giọng nói khác nhau: giọng miền Bắc, giọng miền Trung và giọng miền Nam. Chẳng hạn, đặc điểm nổi bật của phương ngữ Bắc Bộ là sự phát âm không phân biệt các từ có phụ âm đầu là s và x (sương - xương), tr và ch (trồng - chồng), gi với d/r (gia đình - da thịt - ra đi), phát âm lẫn lộn các phụ âm l và n (lợn - nợn, nón - lón). Đặc điểm của phương ngữ Trung Bộ và Nam Bộ là không phân biệt thanh hỏi và thanh ngã, không phân biệt các âm tiết có âm cuối là n và ng (bàn - bàng), ch và t (kịch - kịt), t và c (mặt - mặc), nh và n (canh - căn), các từ có âm đầu là d và v (dề - về), các từ có vần ai và ay (tai - tay),v.v...', 185000, 'td3.png', 'gd', 'td'),
('td4', 'Từ điển Anh Việt', '\"Cuốn từ điển Anh – Anh – Việt biên dịch dựa theo cuốn từ điển Oxford\r\n\r\nĐây là cuốn từ điển tiếng Anh được biên dịch dựa theo cuốn từ điển Oxford là một công trình liên tục được đổi mới và công bố bởi một nhà xuất bản uy tín trên thế giới với nhiều ấn phẩm khác nhau đã có mặt tại Việt Nam, trợ giúp cho các nhà nghiên cứu, các giảng viên và đặc biệt là sinh viên Việt Nam nhiều thập kỷ qua.\r\n\r\nCuốn từ điển bao gồm hơn 3500 mục từ mới mẻ, cập nhật, những lời giải thích ngắn gọn mà rõ ràng, kèm với những ví dụ cụ thể mà sinh động, những mẫu câu, kết cấu phổ dụng mà đa dạng của mỗi mục từ nhằm giúp người đọc biết cách sử dụng từ ngữ chính xác, phù hợp.\r\n\r\nĐặc biệt, phần giải thích và chuyển dịch tiếng Việt ở mỗi mục từ là kiểm tra lại để đảm bảo chúng chính xác, sát nghĩa, trung thành với nguyên bản tiếng Anh mà không “Việt hóa” theo phép tắc, văn phong hoặc cách nói thông thường trong tiếng Việt.', 130000, 'td4.png', 'gd', 'td'),
('td5', 'Từ điển Anh Việt cho THPT', 'Từ điển Anh Việt dành cho học sinh Trung Học phổ thông.', 78000, 'td5.png', 'gd', 'td'),
('td6', 'Từ điển Vua Chúa Việt Nam', 'Việt Nam có hàng ngàn năm lịch sử, kể từ khi lập quốc cho đến nay, đã từng tồn tại nhiều quốc gia, với nhiều tên gọi khác nhau, nhiều triều đại khác nhau, hoặc cùng tồn tại với nhau, hay nối tiếp thừa kế nhau, và với hàng trăm đời vua chúa trị vì như: Xích Quỷ, Hồ Tôn, Việt Thường Thị, Văn Lang của Hùng Vương. Gần đây, giới nghiên cứu lịch sử đã chứng minh được sự tồn tại của nhà nước cổ đại Việt Thường Thị.Mỗi một thời đại, mỗi một triều vua hay từng niên hiệu vua là một mốc lịch sử cần làm sáng tỏ, không chỉ riêng đối với nhà nghiên cứu lịch sử, mà cần cho tất cả mọi người yêu mến, muốn tìm hiểu lịch sử, riêng đối với học sinh các cấp từ phổ thông đến đại học, đó là kiến thức không thể thiếu được trong quá trình học tập lịchsử dân tộc - đất nước.', 130000, 'td6.png', 'gd', 'td'),
('td7', 'Từ điển Việt Ý Ý Việt', 'Đây là bản in lại Từ điển Việt-Ý và Từ điển Ý-Việt xuất bản năm 2004, in gộp, có bổ sung và sửa chữa Từ điển Việt - Ý in năm 1999 và Từ điển Ý-Việt in năm 2002. Từ điển có hơn 32.000 từ, gồm những từ thông dụng và thuật ngữ nhiều ngành tri thức nhân văn. Về cú pháp có nhiều kiểu nói đặc biệt và tục ngữ được sử dụng nhiều trong hai ngôn ngữ.Công trình này mong giúp ích những người học tiếng Ý và mong sữ là một cống hiến cụ thể vào việc phát triển những quan hệ văn hóa và hữu nghị giữa Việt Nam và Italia.  ', 120000, 'td7.png', 'gd', 'td'),
('td8', 'Từ điển Tiếng Việt', 'Từ điển tiếng Việt được khởi thảo Đề cương biên soạn ngay sau khi Viện Ngôn ngữ học được thành lập vào năm 1968. Trên cơ sở gần ba triệu phiếu ngữ cảnh được trích từ các nguồn tài liệu sách báo khác nhau, trong đó có kho tàng ca dao, tục ngữ, thành ngữ Việt Nam, các tác phẩm văn chương, các công trình viết về các lĩnh vực khoa học, cuốn từ điển lần đầu tiên được ra mắt độc giả vào năm 1988. Tác phẩm có sự đóng góp về trí tuệ và công sức lao động của rất nhiều nhà văn hoá, nhà khoa học nổi tiếng khác ở Việt Nam khi thảo luận đề cương hoặc trực tiếp tham gia biên soạn, đặc biệt là các thuật ngữ.[1]', 89000, 'td8.png', 'gd', 'td'),
('th1', 'Thương mại điện tử', 'Về nguồn gốc, thương mại điện tử được xem như là điều kiện thuận lợi của các giao dịch thương mại điện tử, sử dụng công nghệ như EDI và EFT. Cả hai công nghệ này đều được giới thiệu thập niên 70, cho phép các doanh nghiệp gửi các hợp đồng điện tử như đơn đặt hàng hay hóa đơn điện tử. Sự phát triển và chấp nhận của thẻ tín dụng, máy rút tiền tự động (ATM) và ngân hàng điện thoại vào thập niên 80 cũng đã hình thành nên thương mại điện tử. Một dạng thương mại điện tử khác là hệ thống đặt vé máy bay bởi Sabre ở Mỹ và Travicom ở Anh.', 76000, 'th9.png', 'hcm', 'th'),
('th2', 'Tiếp thị 4.0', 'Quyển cẩm nang vô cùng cần thiết cho những người làm tiếp thị trong thời đại số. Được viết bởi cha đẻ ngành tiếp thị hiện đại, cùng hai đồng tác giả là lãnh đạo của công ty MarkPlus, quyển sách sẽ giúp bạn lèo lái thế giới không ngừng kết nối và khách hàng không ngừng thay đổi để có được nhiều khách hàng hơn, xây dựng thương hiệu hiệu quả hơn, và cuối cùng kinh doanh thành công hơn. Ngày nay khách hàng không có nhiều thời gian và sự chú ý dành cho thương hiệu của bạn – và họ còn bị bao quanh bởi vô số các chọn lựa. Bạn phải tách khỏi đám đông, phải nổi trội, để gây sự chú ý và truyền đạt thông điệp mà khách hàng muốn nghe. “Tiếp thị 4.0” tận dụng tâm lý thay đổi của khách hàng để tiếp cận nhiều khách hàng hơn và khiến họ gắn bó với thương hiệu hơn bao giờ hết. Quyển sách cho bạn kiến thức sâu rộng để bạn thành công trong thế giới tiếp thị ngày nay: Khám phá những nguyên tắc mới trong tiếp thị; Nổi bật và tạo ra những khoảnh khắc WOW; Xây dựng nền tảng khách hàng trung thành và có tiếng nói; và Biết ai sẽ là người định hình tương lai của các chọn lựa của khách hàng…', 100000, 'th10.png', 'hcm', 'th'),
('th3', 'Tự học nhanh Microsoft Office', 'Cuốn sách trình bày các kiến thức cơ bản về Hệ điều hành Windows XP, Microsoft Office 2003, về ứng dụng Internet, nhằm giúp người học trang bị nhanh nhất các kiến thức về tin học văn phòng.\r\n\r\nNội dung sách gồm 5 phần:\r\n\r\n- Khám phá và làm việc trên hệ điều hành Windows\r\n\r\n- Các kiến thức Microsoft Word 2003\r\n\r\n- Các kiến thức về Microsoft Excel 2003\r\n\r\n- Các kiến thức về PowerPoint 2003\r\n\r\n- Cách lập hòm thư gmail và Blog trên Google Internet', 43000, 'th11.png', 'hcm', 'th'),
('th4', 'Quản lí dự án CNTT', 'Quản lý dự án thành công là công việc không hề dễ dàng. Tuy nhiên, sự bù đắt lại là rất lớn, cả cho công ty lẫn công việc của bạn. Quản lý dự án sẽ mang lại cho bạn những tri thức thiết yếu để trở thành một nhà quản lý dự án có năng lực cao, được đánh giá tốt, và - trong mọi khả năng - được tưởng thưởng xứng đáng.', 140000, 'th12.png', 'hcm', 'th'),
('th5', 'Học nhanh Word 2013', 'Cuốn sách Học Nhanh Soạn Thảo Văn Bản Trên Word 2013 gồm những nội dung chính như sau:\r\n\r\nBài 1: Làm quen với Microsoft Word 2013\r\n\r\nBài 2: Soạn thảo văn bản\r\n\r\nBài 3: Hiệu chỉnh văn bản\r\n\r\nBài 4: Làm việc với bảng biểu\r\n\r\nBài 5: Chèn các đối tượng vào văn bản\r\n\r\nBài 6: In ấn.\r\n\r\n', 19200, 'th13.png', 'hcm', 'th'),
('th6', 'Giáo trình tin học đại cương', 'Trên thế giới, sinh viên ở tất cả các khoa của các trường đại học được học một môn chung về “Tin học”  với tên tiếng Anh là “Information Technology and Professional Skills” . Môn học này cung cấp những kiến thức và kĩ năng cơ bản nhất về công nghệ thông tin (CNTT) mà bất kì sinh viên nào cũng phải nắm được để có thể sử dụng các thiết bị và phần mềm ứng dụng của CNTT một cách hiệu quả trong học tập và nghiên cứu. Việc sử dụng thành thạo những phương tiện của CNTT đã trở thành một tiêu chuẩn đối với bất kì công dân nào làm ra của cải vật chất cho xã hội, để nâng cao chất lượng sản phẩm lao động cũng như chất lượng cuộc sống. Ở Việt Nam, môn học này được gọi là môn “Tin học đại cương” và nó là môn học bắt buộc đối với sinh viên ở tất cả các ngành trong các trường đại học trên cả nước.', 59000, 'th14.png', 'hcm', 'th'),
('th7', 'Kỹ nghệ phần mềm', 'Công nghệ phần mềm hay kỹ nghệ phần mềm (tiếng Anh: software engineering) là sự áp dụng một cách tiếp cận có hệ thống, có kỷ luật, và định lượng được cho việc phát triển, sử dụng và bảo trì phần mềm.', 52000, 'th15.png', 'hcm', 'th'),
('th8', 'Luật khoa học và CNTT', 'Luật này quy định về tổ chức, cá nhân hoạt động khoa học và công nghệ; việc tổ chức thực hiện hoạt động khoa học và công nghệ; biện pháp bảo đảm phát triển khoa học và công nghệ; quản lý nhà nước về khoa học và công nghệ.', 45000, 'th16.png', 'hcm', 'th'),
('trtr1', 'Cái tết của Mèo con', 'Mèo con mới về nhà, đêm đầu tiên đã giáp mặt lão Chuột cống dữ dằn cùng lũ chuột nhắt hung hăng.\r\n\r\nMèo con khiếp sợ, nhưng vốn là một chú mèo dũng cảm, Mèo con bắt đầu học hỏi, can đảm đánh nhau với rắn hổ mang.\r\n\r\nKhông những thế, Mèo con còn truyền lòng quả cảm của mình cho cả bác Nồi đồng và chị Chổi. Họ đã cùng nhau đánh bại lão Chuột cống hung ác và đám chuột nhắt.', 31000, 'trtr1.png', 'pn', 'trtr'),
('trtr2', 'Chuột Hin trồng răng', 'Hin là một chú chuột hiếu động và hết sức hiếu kì, những khám phá và sáng kiến của chú ta có thể đem lại điều bất ngờ thú vị, hoặc có thể là trải nghiệm đáng giá. Xung quanh Chuột Hin, những người thân, khách quen, kẻ lạ, bạn bè,… với nhiều tính cách khác nhau, những “vấn đề” khác nhau, cho Hin nhảy ùm vào cùng tháo gỡ rắc rối hay tự biết điều chỉnh cách cư xử của chính mình. Tất cả vì tình thương mến thương! Sách dành cho trẻ 3-8 tuổi\r\n', 15000, 'trtr2.png', 'pn', 'trtr'),
('trtr3', 'Cô bé quàng khăn đỏ', 'Chuyển kể về một cô bé, gọi là cô bé quàng khăn đỏ, đi vào rừng để đến nhà bà đưa thức ăn cho người bà đang bị bênh. Một con sói theo dõi cô bé và lập kế hoạch để ăn thịt cô. Con sói hỏi cô bé đang đi đâu và cô đã ngây thơ trả lời, sau đó, con sói bảo cô bé đi hái hoa. Trong lúc đó, sói đến nhà ăn thịt người bà và đóng giả thành bà của cô bé quàng khăn đỏ. Khi cô bé đến, cô cũng bị sói ăn thịt luôn. Một bác thợ săn đã tới mổ bụng sói, cứu được cả cô bé và bà của cô. Đá được bỏ vào bụng sói và làm sói chết.', 35000, 'trtr3.png', 'pn', 'trtr'),
('trtr4', 'Cô bé tí hon', 'Bộ sách là sự kết hợp khéo léo giữa hình ảnh đẹp, giàu màu sắc và nội dung phong phú, sinh động, giúp trẻ tăng cường trí nhớ, trí tưởng tượng. Bé vừa nghe câu chuyện, xem hình vẽ, vừa có thể trực tiếp dán những miếng giấy dán hình ngộ nghĩnh, dễ thương vào trong sách nữa đấy.Thế giới cổ tích luôn là một xứ sở diệu kỳ đối với trẻ thơ. Cổ tích nuôi dưỡng tâm hồn, ước mơ, phát triển lòng yêu cái thiện, căm ghét cái ác, bước đầu giúp trẻ thành người. Những nhân vật cổ tích gần gũi với bé như: cô bé Lọ Lem, công chúa Bạch Tuyết, chú lính chì, nàng tiên cá... đã cùng bé đi vào cả những giấc mơ. Nhằm phát huy giá trị lớn lao, đẹp đẽ ấy của cổ tích, bằng một lối kể mượt mà, mới lạ, hấp dẫn, bộ sách Thế giới cổ tích của bé sẽ mang đến cho bé một thế giới thần tiên kỳ thú.', 24000, 'trtr4.png', 'pn', 'trtr'),
('trtr5', 'Nàng út ống tre', 'Từ xưa đến nay, đã có biết bao thế hệ người Việt Nam lớn lên cùng những câu chuyện cổ tích. Những câu chuyện diệu kỳ, thấm đẫm tâm hồn dân tộc ấy cứ tự nhiên đi vào tuổi thơ, lớn lên cùng năm tháng và trở thành hành trang trong suốt cuộc đời của nhiều người. Tự bản thân mỗi câu chuyện cổ tích đều ẩn chứa những giấc mơ tươi đẹp về một cuộc sống luôn tồn tại những điều thiện, cái tốt và những bài học làm người đầy tính nhân văn, nhẹ nhàng. Truyện cổ tích Việt Nam tập hợp những câu chuyện đã làm nên tuổi thơ của không ít độc giả sẽ mang đến những phút giây giải trí thật thư giãn cũng như giúp mỗi người trong chúng ta cùng hồi tưởng lại những năm tháng tuổi thơ ngọt ngào.', 39000, 'trtr5.png', 'pn', 'trtr'),
('trtr6', 'Có một con Mọt sách', 'Các câu chuyện cổ tích được BS. Đỗ Hồng Ngọc - \"bác sĩ của bà mẹ và trẻ con\" - viết lại một cách sáng tạo và độc đáo. Lồng vào những câu chuyện ngộ nghĩnh là lời khuyên vui nhộn, nhẹ nhàng nhắc bé biết giữ mắt khỏe để không cận thị, biết giữ gìn vệ sinh và sức khỏe cơ thể, tránh nhiễm giun sán và phòng tránh những tai nạn thường gặp.\"Thực ra đây là những chuyện kể tôi viết cho trẻ em trên một tờ báo Thiếu Nhi từ … 30 năm về trước, nhưng nội dung vẫn còn rất thời sự, nay có dịp được in lại thêm phần hình ảnh minh họa sinh động của các họa sĩ. Đây không phải là “truyện tranh” mà là “tranh truyện” dành cho bạn đọc từ… lớp 1 đến sau đại học vậy.\"\r\n', 36000, 'trtr6.png', 'pn', 'trtr'),
('trtr7', 'Nông trại vui vẻ', 'Câu chuyện \"Nông trại vui vẻ\"', 5000, 'trtr7.png', 'pn', 'trtr'),
('trtr8', 'Ếch xanh và bạn rùa nhỏ', 'Có một chú Ếch xanh rất ham chơi. Hằng ngày chú thường ra đồng cỏ xanh để tập nhảy. Một hôm, trong khi đang tập nhảy, chú phát hiện ra một ụ đất nhỏ. “Ôi, đây đúng là một chỗ tuyệt vời cho mình tập nhảy đây”. Chú thầm nghĩ và nhảy phốc ngay lên cái ụ đất đó.\r\n', 19000, 'trtr8.png', 'pn', 'trtr'),
('tth1', 'Đừng đi ăn một mình', '\"Trong chúng ta ai cũng có khả năng quyến rũ người khác - cho dù đó là đồng nghiệp, người xa lạ, bạn bè, hay sếp của mình. Nhưng có khả năng khác với biết cách vận dụng nó, và đó là lý do tại sao có những người đi qua cuộc đời này lặng lẽ như những cái bóng, trong khi có người luôn thu hút được sự chú ý bất cứ nơi đâu họ xuất hiện.\"\r\n\r\nCho nên, Đừng Bao Giờ Đi Ăn Một Mình.\r\n\r\nCó lẽ không cần phải chứng minh rằng giao tiếp và những mối quan hệ hiệu quả như thế nào trong cuộc sống hiện đại. Bạn không thể ngại giao tiếp trong thời đại mà người ta trao đổi với nhau mọi thứ, nắm bắt mọi cơ hội thông qua một câu nói. Đừng Bao Giờ Đi Ăn Một Mình khuyên bạn đừng ngại giao tiếp. Không những thế, cuốn sách còn đưa ra những lời khuyên hữu ích và thiết thực của việc vận dụng giao tiếp và những mối quan hệ để đạt được thành công không chỉ trong lĩnh vực kinh tế.', 89000, 'sm1.png', 'hnv', 'tth'),
('tth2', 'Vấp  ngã tuổi 20', 'Câu chuyện kể về hai nhân vật chính, Đàm Di Đan và Diệu Linh – hai chị em họ từ quê vào Sài Gòn học Đại học. Những bỡ ngỡ ở ngưỡng tuổi đang lớn, những va chậm lần đầu tiên bắt gặp nơi thành thị, những rung động đầu đời của tuổi trẻ… và từ đó là những vấp ngã ở tuổi hai mươi. Hai cô gái, hai sự trải nghiệm khác nhau, cả trong môi trường học lẫn cuộc sống cá nhân. Và cuối cùng họ đều nhất ra, tình cảm gia đình, tình chị em mới là điều quan trọng nhất.', 89000, 'sm2.png', 'hcm', 'tth'),
('tth3', 'Tình cát', 'Tình Cát tiếp tục truyện Xóm Cát đã dược tác giả viết ra cách đây ba mươi năm trong tiểu thuyết Những mảnh đời đen trắng và kịch nói Mùa hạ cay đắng. Bộ ba tác phẩm và cặp đôi nhân vật Hoàng - Thuỳ Linh đã cùng Nguyễn Quang Lập băng qua Sa Mạc Trắng cuộc đời và văn chương.\r\nNhận định:“Tình Cát - một tiểu thuyết hiện đại đậm chất dân gian, đầy kịch tính và giàu chất thơ”(Nguyễn Duy).“Ngấu nghiến từng chữ nhựng không phải đang đọc. Tình Cát là những thước phim, theo thì bị lôi kéo, dừng lại thì bị ám ảnh. Nguyễn Quang Lập lại thành công khi chứng minh, cho dù chân cẳng thế nào, anh vẫn sải những bước dài vững chắc”(Huy Đức).“Có một thứ gì đó như ma ám được sinh ra từ chiến tranh, khiến cho con người thời hậu chiến cứ mê mê, tỉnh tỉnh”(Lê Thanh Phong)', 87000, 'sm3.png', 'hcm', 'tth'),
('tth4', 'Tình yêu không phải thứ để dành', 'Câu chuyện được cộng đồng mạng truyền tay nhau cách đây ít lâu, về một cậu sinh viên dám bảo vệ người mình yêu trong thời khắc ngặt nghèo nhất của cuộc sống. Vì lầm đường lỡ bước, người cậu yêu phải mang thai với một kẻ khác, bị ruồng bỏ, bơ vơ.Ngay trong thời khắc sinh tử trước cửa phòng phá thai, cậu nhóc tưởng chừng yếu đuối, có lá gan mỏng teng lại vùng mình dậy, thét lên “để con, tôi nuôi”. Chỉ vài chữ trong cuộc đời, mà khiến cậu rẽ bước sang một hướng khác.Được xem là “ông bố vĩ đại” có thật của một diễn đàn lớn, câu chuyện như cánh cửa đẹp lộng lẫy của cuộc sống muôn màu, rằng người tốt đang vẫn còn đâu đó, trong những mảng màu u tối ngoài kia.Được sự đồng ký của Kraz Captain - nhân vật chính trong câu chuyện Em đã nuôi con người em yêu như thế nào - Nguyễn Phước Huy đã ghi chép lại dưới dạng tản văn, tả chân thật nhưng khung hình trong quá khứ của Kraz. Tản văn nằm ở vị trí trung tâm của quyển sách Tình yêu không phải thứ để dành, với nhiều nhức nhối, da diết nhưng cũng có phần hài hước, dí dỏm.', 99000, 'sm4.png', 'vh', 'tth'),
('tth5', 'Đi tìm lẽ sống', 'Đi tìm lẽ sống của Viktor Frankl là một trong những quyển sách kinh điển của thời đại. Thông thường, nếu một quyển sách chỉ có một đoạn văn, một ý tưởng có sức mạnh thay đổi cuộc sống của một người, thì chỉ riêng điều đó cũng đã đủ để chúng ta đọc đi đọc lại và dành cho nó một chỗ trên kệ sách của mình. Quyển sách này có nhiều đoạn văn như thế.', 68000, 'sm5.png', 'hcm', 'tth'),
('tth6', 'Nếu chỉ còn một ngày để sống', 'Nếu chỉ còn một ngày để sống” tên sách gốc Everything, Everything là cuốn tiểu thuyết bán chạy số 1 của New York Times – đồng thời được chuyển thể thành phim điện ảnh với sự góp mặt của hai diễn viên nổi tiếng là Amandla Stenberg trong vai Maddy và Nick Robinson trong vai Olly. Ngay từ khi công chiếu, bộ phim đã gây bão tại các phòng vé trên toàn thế giới kéo theo cơn sốt tìm đọc cuốn sách đặc biệt này đến từ các fan yêu thích bộ phim.Một chuyện tình cảm động được kể dưới ngòi bút tràn đầy những xúc cảm khác biệt đem đến cho người đọc những rung cảm chân thật chạm đến từng ngóc ngách trong trái tim. Một cuốn sách đã khiến hàng triệu độc giả phải khóc phải cười qua từng trang giấy', 90000, 'sm6.png', 'vh', 'tth'),
('tth7', 'Bí mật của những bí mật', 'Khi bạn trong tinh thần nguyên thủy thì bạn trong bản chất thực của bạn. Khi bạn sống trong tính cách của mình thì bạn không thực, bạn chỉ là một hiện tương nhào nặn. Hãy quan sát và bạn sẽ ngạc nhiên, rất nhieuf thứ được nhào nặn trong bạn.', 136000, 'sm7.png', 'vh', 'tth'),
('tth8', 'Tuổi trẻ đáng giá bao nhiêu', 'Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.\r\nBạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.\r\nBạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là việc của họ.\r\nSuy cho cùng, quyết định là ở bạn. Muốn có điều gì hay không là tùy bạn.\r\nNên hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.\r\nVì sau tất cả, chẳng ai quan tâm.', 90000, 'sm8.png', 'tn', 'tth'),
('vh1', 'Văn học Việt Nam Trung đại', 'Văn học trung đại Việt Nam (VHTĐVN) còn được gọi bằng những cái tên khác nhau như văn học thành văn, văn học phong kiến, văn học cổ điển. Bởi từ thế kỷ (TK) X đến TK XIX. VHTĐVN phát triển trong một môi trường xã hội phong kiến với ý thức hệ nho giáo, lực lượng sáng tác chủ yếu là tầng lớp trí thức, những người có trình độ cao, được đào tạo từ “cửa Khổng sân Trình” và những sáng tác chỉ lưu truyền trong tầng lớp công chúng ấy. Bên cạnh đó văn học thời kì này còn chịu ảnh hưởng bởi thi pháp văn chương cổ điển.', 89000, 'vh1.png', 'vh', 'vh'),
('vh2', '150 Thuật ngữ văn học', '150 Thuật Ngữ Văn Học - Với khoảng trên 150 mục từ THUẬT NGỮ VĂN HỌC, cuốnsách nhỏ này chưa thể bao quát toàn bộ các bình diện, cấp độ, sắc thái của một loại hiện tượng văn hoá nhân bản đặcsắc và vô cùng phong phú là văn học và các chuyên ngành nghiên cứu nó…', 160000, 'vh2.png', 'vh', 'vh'),
('vh3', 'Giết con chim nhại', 'Giết con chim nhại (nguyên tác tiếng Anh: To Kill a Mockingbird) là cuốn tiểu thuyết của Harper Lee; đây là cuốn tiểu thuyết rất được yêu chuộng, thuộc loại bán chạy nhất thế giới với hơn 10 triệu bản. Cuốn tiểu thuyết được xuất bản vào năm 1960 và đã giành được giải Pulitzer cho tác phẩm hư cấu năm 1961. Nội dung tiểu thuyết dựa vào cuộc đời của nhiều bạn bè và họ hàng tác giả, nhưng tên nhân vật đã được thay đổi. Tác giả cho biết hình mẫu nhân vật Jean Louise \"Scout\" Finch, người dẫn truyện, được xây dựng dựa vào chính bản thân mình.', 150000, 'vh3.png', 'vh', 'vh'),
('vh4', 'Nguyễn Công Hoang tác phẩm và lời bình', 'Bộ sách “Tác phẩm & lời bình” nằm trong tủ sách Văn học nhà trường bao gồm sáu cuốn, tập hợp các tác phẩm đặc sắc của sáu tác giả nổi tiếng trong văn học hiện đại Việt Nam là: Nguyễn Công Hoan, Nam Cao, Thạch Lam, Nguyễn Bính, Nguyễn Minh Châu, Xuân Quỳnh cùng rất nhiều tác phẩm phê bình văn học của nhiều nhà phê bình nổi tiếng như Hoài Thanh - Hoài Chân, Vương Trí Nhàn, Hà Minh Đức... mang tới cho người đọc một cái nhìn sâu sắc hơn về cuộc đời, sự nghiệp sáng tác, những nét đặc sắc về nội dung, nghệ thuật, thi pháp của từng tác giả. Đồng thời, việc lựa chọn sáu tác giả nổi bật thuộc nhiều chặng đường lịch sử, nhiều thể loại và phong cách sáng tác (từ phong trào Thơ mới tới cao trào Đổi mới, từ thơ tới truyện ngắn, từ hiện thực phê phán tới văn học Cách mạng) giúp cho người đọc phần nào nắm bắt được toàn diện hình thái nền văn học hiện đại nước nhà trong hơn nửa thế kỷ qua.', 55000, 'vh4.png', 'pn', 'vh'),
('vh5', 'Ma Văn Kháng 100 truyện ngắn', '“Hầu hết truyện ngắn của Ma Văn Kháng đều có cốt truyện đơn giản, không có nhiều tình huống nổi bật, then chốt, không có xung đột và mâu thuẫn lớn song mỗi tác phẩm đều cho thấy sự bứt phá, đóng góp đầy sáng tạo của tác giả.” TS. Đỗ Phương Thảo “Tập truyện của ông cho ta cắt qua rất nhiều cảnh ngộ với khoảng không thời gian muốn lan ra mọi chiều kích. Từ miền núi hoang ải cho đến tận chốn thị thành. Từ cuộc sống u tịch ở chùa chiền cho tới nơi chợ búa ồn ã.” - Nhà văn Mai Thanh\r\n\r\n“Tác phẩm của ông với những điển hình tột độ, nghệ thuật diễn đạt tinh vi, kỳ diệu của một nghệ sĩ tài ba, đặc biệt là về sự tinh xảo của ngôn ngữ... đã đem lại cho người đọc biết bao rung cảm, xúc động, gieo vào lòng người niềm tin, khát vọng và thổi bùng cả những ngọn lửa căm hờn đối với cái ác, góp phần đấu tranh thúc đẩy xã hội đi tới, ngày càng tiệm cận chân lý và cái đẹp.” - Nhà giáo Khánh Tình', 145000, 'vh5.png', 'pn', 'vh'),
('vh6', 'Tủ sách Hàn Mặc Tử', 'Tấm lòng chân thực và thành khẩn ấy, tự nó đã tạo giá trị nhân bản cho tác phẩm. Huống chi nhà thơ còn là bậc tài năng lớn, hoàn toàn làm chủ kỹ thuật điêu luyện, ngôn ngữ phong phú, hình tượng độc sáng, đi từ lối Đường luật cổ điển chuyển sang nguồn thi hứng hoàn toàn hiện đại, gần với trường phái siêu thực phương Tây thời đó - vẫn còn mới mẻ đến ngày nay.\r\n', 65000, 'vh6.png', 'pn', 'vh'),
('vh7', 'Gió lạnh đầu mùa', 'Buổi sáng hôm nay, mùa đông đột nhiên đến, không báo trước. Vừa mới ngày hôm qua giời hãy còn nắng ấm và hanh, cái nắng về cuối tháng mười làm nứt nẻ đất ruộng, và làm ròn khô những chiếc lá rơi. Sơn và chị chơi cỏ gà ở ngoài cánh đồng còn thấy nóng bứt, chảy mồ hôi.', 130000, 'vh7.png', 'pn', 'vh'),
('vh8', 'Nắng được thì cứ nắng', 'Cuốn sách được chia làm bốn phần: Ông chủ nhiệm báo Sông Hương, Đi về phía Việt Bắc, Nắng được thì cứ nắng, Vĩnh hằng Hợp Thiện – Bạc Hà,  đề cập tới tiểu sử của Phan Khôi trong 23 năm cuối đời, từ khi ông sáng lập tuần báo Sông Hương ở Huế cho tới khi ông qua đời tại Hà Nội vào năm 1959. Theo lời tác giả, toàn bộ nội dung của cuốn sách đều dựa vào các trước tác của Phan Khôi đã công bố và chưa công bố, khai thác các nguồn ký ức của các thành viên trong đại gia đình học giả này, nhất là hồi ức của bà Nguyễn Thị Huệ, mẹ tác giả, người phụ nữ luôn ở bên cạnh Phan Khôi từ năm 1934 đến năm 1946 tại Hà Nội, Huế, Sài Gòn, Quảng Nam và từ 1955 tới 1959 tại Hà Nội.  Nhan đề Nắng được thì cứ nắng được đặt theo câu cuối trong bài thơ Nắng chiều của Phan Khôi.', 153000, 'vh8.png', 'pn', 'vh');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cat_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
('gk', 'Giáo Khoa'),
('kt', 'Kinh Tế'),
('Ls', 'Lịch sử '),
('pl', 'Pháp Luật'),
('td', 'Từ Điển'),
('th', 'Tin Học'),
('trtr', 'Truyện tranh'),
('tth', 'Tiểu thuyết'),
('vh', 'Văn Học');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `name_user` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_user` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thongtin` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`email_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name_user`, `email_user`, `thongtin`) VALUES
('', '', ''),
('Trần Thị Mỹ Nhung', 'Cao Lỗ Quận 8', 'Giao hàng rất nhanh'),
('Ngô Minh Trinh', 'Quận 4 TPHCM', 'Rất tốt');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` varchar(100) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `email`, `order_date`, `name`, `address`, `phone`, `tinhtrang`) VALUES
('1544609799_thien@gmail.com', 'thien@gmail.com', '2018-12-12 00:00:00', 'Huỳnh Phúc Thiện', 'bình chánh', '941173528', '2'),
('1544861605_tu@gmail.com', 'tu@gmail.com', '2018-12-15 00:00:00', 'tran thi cam tu', 'cao lo quan 8', '0981036194', '2');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE IF NOT EXISTS `order_detail` (
  `order_id` varchar(100) NOT NULL,
  `book_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `tongtien` varchar(50) NOT NULL,
  PRIMARY KEY (`order_id`,`book_id`),
  KEY `masach` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `book_id`, `quantity`, `price`, `tongtien`) VALUES
('1544609799_thien@gmail.com', 'gk2', 1, 25000, '25000'),
('1544861605_tu@gmail.com', 'td2', 1, 77000, '77000');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE IF NOT EXISTS `publisher` (
  `pub_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pub_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`pub_id`, `pub_name`) VALUES
('gd', 'Giáo dục'),
('hcm', 'Tổng Hợp Hồ Chí Minh'),
('hnv', 'Hội Nhà Văn'),
('pn', 'Phụ Nữ'),
('tn', 'Thanh Niên'),
('vh', 'Văn Học'),
('vhtt', 'Văn Hóa Thông Tin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `username`, `password`, `name`, `address`, `phone`) VALUES
('', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', ''),
('nhung@gmail.com', 'my nhung', '25f9e794323b453885f5181f1b624d0b', 'tran thi my nhung', 'cao lo quan 8', '123456789'),
('thien@gmail.com', 'huynhthien', '25f9e794323b453885f5181f1b624d0b', 'Huỳnh Phúc Thiện', 'bình chánh', '941173528'),
('tranphuong@gamil.com', 'tranphuong', '25f9e794323b453885f5181f1b624d0b', 'Trần Phương', 'quận 7', '941173528'),
('trinh@gmail.com', 'minh trinh', '25f9e794323b453885f5181f1b624d0b', 'ngo minh trinh', 'quan 4 tphcm', '0981036194'),
('tu@gmail.com', 'cam tu', '25f9e794323b453885f5181f1b624d0b', 'tran thi cam tu', 'cao lo quan 8', '0981036194');

-- --------------------------------------------------------

--
-- Table structure for table `users_admin`
--

DROP TABLE IF EXISTS `users_admin`;
CREATE TABLE IF NOT EXISTS `users_admin` (
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_admin`
--

INSERT INTO `users_admin` (`email`, `password`, `name`) VALUES
('admin@gmail.com', '1234567', 'Ngô Minh Trinh'),
('admin1@gmail.com', '1234567', 'Trần Thị Mỹ Nhung');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publisher` (`pub_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
