-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 10:36 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0e7517141fb53f21ee439b355b5a1d0a', '2017-01-24 16:21:18', '22-05-2021 09:14:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Cat Foods', 'If cats could talk, they wouldnâ€™tâ€. Our cats cannot speak but the pet owners are supposed to understand their needs and their most important need is cat food for sure but which one to choose have always been a question mark for you therefore let petshub.pk help you in choosing the best answer. We have a large range of high quality food products that your cat canâ€™t refuse to eat. If your cats love to have a salmon treat then Bonnie Adult cat is surely the right choice for you.', '2017-01-24 19:17:37', '23-05-2021 05:52:08 PM'),
(4, 'Dog Foods', 'Providing your pet with Taste of the Wild â€“ Puppy formula as the best starter and proceeding to the Royal Canin Club Junior dog food is economically the best choices to meet your puppyâ€™s nutritional needs. Reflex and Reflex Plus is an attractive choice to meet high energy demands of active dogs. Nutra Gold offers tasty and wide range of flavors to satisfy your dogâ€™s taste buds whereas Mera Gold offers exclusive food range for your sport dogs. Like humans, dogs can also be sensitive to the grains but you donâ€™t need to worry since Farmina offers amazing low grain and grain free food range. Britz and Dr.Clauders also supply grain free and high endurance food for your dogs. Hence understand your dogâ€™s needs and choose the best product according to their requirement.', '2017-01-24 19:19:32', '23-05-2021 05:53:16 PM'),
(5, 'Bird Foods', 'Bird food or bird seed is food (often varieties of seeds, nuts, or dried fruits) eaten by birds. While most bird food is fed to commercial fowl, people also use bird food to feed their pet birds or wild birds. ... Sunflower seeds attract the widest variety of birds, and so often form the mainstay back yard bird feeders. Mixed Feed Moti kangni, lal kangni, Maunji, Barley Seeds, Oat Seeds, Saff Flower Seeds,Reg Jowar Grains & Hemp Seeds without bajra.', '2017-01-24 19:19:54', '23-05-2021 06:06:04 PM'),
(6, 'Pet Accessories', 'In Pakistan buying pet accessories with reliability and wide variety is always a big issue. One can only find hardly a few shops from where little range of accessories is available. To eliminate this difficulty petshub is the only online shop where you can find everything. Petshub not only provides endless accessories but also facilitate with COD and other payments facilities too. Thus, you can buy accessories while sitting at home.\r\n\r\nThis service will provide high-quality products in just a few steps. By putting your correct information and required product you can avail the goodness of technology base pet shop. At petshub you can buy premium quality accessories like shampoo, towels, collars,  spike collars, dog sofa, hooks, dog house, cat collars, training tools, sprays and much more. Other than this, customer can also buy fish and birds accessories. Petshub prefer quality over any other thing. Petshub is the very first platform in Pakistan which offers all under one roof type of facility. Now you can take extra care of your pets and give them a happier and healthier life. Our COD service has increased your comfort to double.', '2017-02-20 19:18:52', '23-05-2021 06:04:47 PM'),
(7, 'Pets Health Care', 'In addition to feeding and exercising your dog, other aspects of general care are needed to keep your dog healthy throughout its life. These include routine veterinary care for vaccinations, parasite control, and dental care; grooming; and protection from household hazards.\r\nAdult dogs should have a complete veterinary examination at least once a year. Puppies need veterinary visits usually every 3 to 4 weeks until they are about 4 months old. Geriatric dogs (older than 7 to 8 years old) should see their veterinarian twice a year or more frequently because illness is more common in older pets and it can be identified sooner. Your veterinarian may recommend a wellness program for your pet, including routine blood work to monitor for problems such as early kidney or liver disease.', '2021-05-23 12:39:12', NULL),
(8, 'Our Brands', '', '2021-05-23 12:39:47', NULL),
(9, 'About Us', 'PetWell is Pakistanâ€™s largest online pet store where you can find all you want for a pet. We have all type of brands like Royal Canin, Nutragold, Bonnie, Brit, Dibaq, Dr Clauder, Farmina Matisse, Mera Finest Fit, Happy cat food, Meow mix, Mera Classic, Mr Pet, Proline food, Reflex, Reflex Plus, Taste of wild, Whiskas. We offer high quality imported accessories items for pets, especially for cats and dogs. Fastest home delivery service is available in Lahore, Islamabad, Karachi, Faisalabad, Peshawar, Quetta, Abbottabad, Multan, Gujranwala and all across the Pakistan.', '2021-05-23 12:40:00', '23-05-2021 06:12:08 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '15', 1, '2021-05-22 11:11:20', 'COD', NULL),
(8, 4, '2', 1, '2021-05-22 13:54:58', 'COD', NULL),
(9, 4, '11', 1, '2021-05-22 13:54:58', 'COD', NULL),
(10, 4, '20', 1, '2021-05-22 13:54:58', 'COD', NULL),
(11, 4, '7', 1, '2021-05-26 08:42:44', 'COD', NULL),
(12, 4, '3', 4, '2021-05-31 09:15:04', 'COD', NULL),
(13, 4, '8', 4, '2021-05-31 09:15:04', 'COD', NULL),
(14, 4, '20', 2, '2021-05-31 09:15:04', 'COD', NULL),
(15, 4, '2', 2, '2021-05-31 09:24:04', NULL, 'Delivered'),
(16, 1, '1', 1, '2021-06-02 11:01:23', 'Internet Banking', NULL),
(17, 1, '23', 1, '2021-06-02 11:05:25', 'COD', NULL),
(18, 1, '23', 1, '2021-06-02 11:06:41', 'Debit / Credit card', NULL),
(19, 1, '7', 1, '2021-06-02 11:07:55', 'COD', NULL),
(20, 5, '7', 5, '2021-06-07 06:43:16', 'COD', 'in Process'),
(21, 5, '7', 1, '2021-06-17 08:25:08', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 15, 'Delivered', 'isejriusirj9wsji', '2021-05-31 09:37:41'),
(6, 20, 'in Process', 'sorry we may this product in process state', '2021-06-17 08:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Brit Premium Junior Large - 3 Kg', 'Brit Premium Dog Food', 1200, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><span style=\"font-size: 14px;\">Brit premium is a complete chicken formula food for junior dogs (1-24 months) with large breed (25-45 kg).</span><br></div>', 'Brit-Premium-Junior-Large-15kg.jpeg', 'Brit-Premium-Junior-Large-15kg.jpeg', 'Brit-Premium-Junior-Large-15kg.jpeg', 200, 'Out of Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Royal Canin Maxi Starter - 1 Kg', 'Royal Canin', 1900, 2100, 'Royal Canin Maxi Starter is perfect for bitches during the gestation and lactation period. It is for a 1-month puppy to till 6-month puppy.', 'Royal-canin-maxi-starter.jpg', 'Royal-canin-maxi-starter.jpg', 'Royal-canin-maxi-starter.jpg', 200, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, ' Royal Canin Maxi Puppy - 4 Kg', 'Royal Canin', 4790, 5000, '<div>Royal Canin Labrador Retriever Adult dry dog food is designed to meet the nutritional needs of purebred Labrador Retrievers 15 months and older.</div><div>For large dogs.</div><div>Adult weight from 26 to 44 kg.</div><div>From 2 â€“ 15 months old.</div>', 'Royal-Canin-Maxi-Puppy-1-768x640.jpg', 'royal-canin-maxi-adult-1.jpg', 'Royal-canin-maxi-starter.jpg', 200, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Royal Canin Dog Food for Labrador Retriever Adult - 3 Kg', 'Royal Canin', 4600, 5600, '<div>Royal Canin Labrador Retriever Adult dry dog food is designed to meet the nutritional needs of purebred Labrador Retrievers 15 months and older<br></div>', 'royal-canin-dog-food-for-labrador-retriever-adult.jpg', 'royal-canin-dog-food-for-labrador-retriever-adult.jpg', 'royal-canin-dog-food-for-labrador-retriever-adult.jpg', 200, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Royal Canin Club Pro Junior Dog Food â€“ 20kg', 'Royal Canin', 14500, 18000, '<span style=\"font-family: Lato, sans-serif; font-size: 16px;\">Royal Canin Club Pro Junior Dog Food is a complete food in itself that maintains the general health of your dog.</span>', 'CLUB-PRO-JUNIOR-â€“-ROYAL-CANIN-768x717.jpg', 'CLUB-PRO-JUNIOR-â€“-ROYAL-CANIN-768x717.jpg', 'CLUB-PRO-JUNIOR-â€“-ROYAL-CANIN-768x717.jpg', 200, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Royal Canin Energy 4800 Dog Food â€“ 20kg', 'Royal Canin', 14500, 22300, 'Royal Canin Energy 4800 Dog Food in 20kg is the perfect food for all small and medium-breed dogs.', 'royal-canin-energy-4800-dog-food.jpg', 'royal-canin-energy-4800-dog-food.jpg', 'royal-canin-energy-4800-dog-food.jpg', 200, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 3, 4, 'Fluffy Cat Food â€“ 1.2 KG', 'Fluffy', 650, 0, 'Fluffy a cat deserves the best, total weight 1.2 kg', 'fluffy-1.2-KG-768x768.jpg', 'fluffy-1.2-KG-768x768.jpg', 'fluffy-1.2-KG-768x768.jpg', 200, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 3, 4, 'Goody Kitten Cat Food - 2.5 Kg', 'Goody ', 1350, 1550, 'Goody Kitten Cat Food Weight - 2.5 Kg', 'Goody-Kitten-Cat-Food.jpg', 'Goody-Kitten-Cat-Food.jpg', 'Goody-Kitten-Cat-Food.jpg', 200, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Taste Of The Wild â€“ High Prairie Puppy Formula - 13 Kg', 'Taste of the Wild', 13000, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'Taste-of-the-wild.jpg', 'Taste-of-the-wild.jpg', 'Taste-of-the-wild.jpg', 10, 'In Stock', '2017-02-04 04:17:03', ''),
(19, 6, 12, 'Double Sided Cat Face Food Bowl', 'Cat Bowls', 300, 500, 'Double Sided Cat Face Food Bowl<br>', 'cat-face-bowl.jpg', 'cat-face-bowl.jpg', 'cat-face-bowl.jpg', 50, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'Dog Chewing Toy kong', 'Dog Toys', 800, 0, 'Dog Chewing Toy Kong are amongst the most durable and long lasting chewable toys.', 'Dog-Chewing-Toy-Kong-768x768.jpg', 'Dog-Chewing-Toy-Kong-768x768.jpg', 'Dog-Chewing-Toy-Kong-768x768.jpg', 100, 'In Stock', '2017-03-10 20:19:22', ''),
(21, 4, 3, 'Brit Premium Junior Large - 15 Kg', 'Brit Premium Dog Food', 4, 0, 'Brit premium is a complete chicken formula food for junior dogs (1-24 months) with large breed (25-45 kg).<br>', 'Brit-Premium-Junior-Large-15kg.jpeg', 'Brit-Premium-Junior-Large-15kg.jpeg', 'Brit-Premium-Junior-Large-15kg.jpeg', 200, 'Out of Stock', '2021-05-23 22:49:12', NULL),
(23, 3, 19, 'NutraGold-3kg', 'Adult Cat Food', 3050, 3500, '<span style=\"font-family: Lato, sans-serif; font-size: 16px;\">Nutra Gold is good food for your cat health. This food is for adult cats.</span><br>', 'nutragold-indoor-adult-cat.jpg', 'nutragold-indoor-adult-cat.jpg', 'nutragold-indoor-adult-cat.jpg', 200, 'In Stock', '2021-06-02 10:42:54', NULL),
(24, 3, 20, 'Taste of Wild', 'Cat Food', 2600, 0, '<span style=\"font-family: Lato, sans-serif; font-size: 16px;\">Taste of wild cat food is actually in&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; font-family: Lato, sans-serif; font-size: 16px;\">2.05kg</span><span style=\"font-family: Lato, sans-serif; font-size: 16px;\">&nbsp;packing. Taste of wild contains high level protein which help to strengthen your cat muscles. Pure ingredients used to make this food. This food is rich of nutrients. This food made in USA. You can order it online via the&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; font-family: Lato, sans-serif; font-size: 16px;\"><a href=\"https://www.petshub.pk/\" style=\"box-sizing: border-box; background-color: transparent; touch-action: manipulation; color: rgb(51, 72, 98);\">best online pet store in Pakistan.</a></span><br>', 'Taste-of-wild-cat-food.jpg', 'Taste-of-wild-cat-food.jpg', 'Taste-of-wild-cat-food.jpg', 200, 'In Stock', '2021-06-05 05:02:23', NULL),
(25, 11, 21, 'Boltz Premium Rabbit Food, Nutritionist  300 gm', 'Rabbit Food', 680, 750, '<font face=\"Lato, sans-serif\"><span style=\"font-size: 16px;\">Boltz balanced diet contain skimmed milk, natural&nbsp;oil, fruits with less sugar, helping&nbsp;keep your rabbit calmer.</span></font>', '0cf8b48fd69423866c80d6a43719ac07.jpg', '0cf8b48fd69423866c80d6a43719ac07.jpg', '0cf8b48fd69423866c80d6a43719ac07.jpg', 100, 'In Stock', '2021-06-05 05:17:40', NULL),
(26, 3, 22, 'Reflex Kitten Food Chicken Flavor 15kg', 'Reflex cat food', 1350, 8200, '<span style=\"font-family: Lato, sans-serif; font-size: 16px;\">Reflex kitten food Chicken Flavor is a premium food for kitties. Although it is a complete and balanced with chicken protein. Reflex Kitten Food Chicken Flavor is for your kitty. It is a premium quality food for your cat and kitten</span><br>', 'Reflex-kitten-food-510x727.jpg', 'Reflex-kitten-food-510x727.jpg', 'Reflex-kitten-food-510x727.jpg', 200, 'In Stock', '2021-06-05 05:49:18', NULL),
(27, 3, 22, 'Reflex Sterilised Fish Adult Cat Food 15kg', 'Reflex cat food', 1150, 8500, '<span style=\"font-family: Lato, sans-serif; font-size: 16px;\">Reflex sterillised fish food Flavor is a premium food for adult cat. Although it is a complete and balanced with fish protein. Reflex sterillised Food fish Flavor is for your adult cat. It is a premium quality food for your cat .</span>', 'reflex-sterilised-fish-adult-cat-food-510x510.jpg', 'reflex-sterilised-fish-adult-cat-food-510x510.jpg', 'reflex-sterilised-fish-adult-cat-food-510x510.jpg', 200, 'In Stock', '2021-06-05 05:57:25', NULL),
(28, 3, 22, 'Reflex Adult Cat Food Multi Color Chicken 15kg', 'Reflex cat food', 1150, 1950, '<h1 class=\"product-title product_title entry-title\" style=\"box-sizing: border-box; width: 330px; margin-bottom: 0.5em; text-rendering: optimizespeed; line-height: 1.3;\"><font color=\"#777777\" face=\"Lato, sans-serif\"><span style=\"font-size: 16px; font-weight: 400;\">Reflex Adult Cat Food Multi Color Chicken</span></font><span style=\"color: rgb(119, 119, 119); font-family: Lato, sans-serif; font-size: 16px; font-weight: 400;\">&nbsp;Flavor is a premium food for&nbsp;</span><font color=\"#777777\" face=\"Lato, sans-serif\"><span style=\"font-size: 16px; font-weight: 400;\">Reflex Adult Cat Food Multi Color Chicken</span></font>.&nbsp;</h1>', 'reflex-adult-cat-food-multi-color-chicken-1-510x510.jpg', 'reflex-adult-cat-food-multi-color-chicken-1-510x510.jpg', 'reflex-adult-cat-food-multi-color-chicken-1-510x510.jpg', 100, 'In Stock', '2021-06-05 06:07:41', NULL),
(29, 3, 8, 'Diamond Natural Indoor Cat Food Chicken & Rice – 2.72Kg', 'Cat dry food', 2850, 3050, '<span style=\"font-family: Lato, sans-serif; font-size: 16px;\">Diamond Natural indoor cat food is designed formula for you adult cat to provide for his daily needs. Although it promoted ideal weight condition for you cat. So he can stay healthy.</span><br>', 'diamond-naturals-indoor-cat-food-2-72-kg.png', 'diamond-naturals-indoor-cat-food-2-72-kg.png', 'diamond-naturals-indoor-cat-food-2-72-kg.png', 150, 'In Stock', '2021-06-05 06:14:07', NULL),
(30, 3, 8, 'Diamond Care Urinary For Adult Cats', 'Cat dry food', 3750, 4000, '<br>', 'diamond-care-urinary-support-formula-for-adult-cats-510x510.jpg', 'diamond-care-urinary-support-formula-for-adult-cats-510x510.jpg', 'diamond-care-urinary-support-formula-for-adult-cats-510x510.jpg', 100, 'In Stock', '2021-06-05 06:17:25', NULL),
(31, 3, 9, 'Royal Canin Baby Cat Milk', 'Royal food', 4000, 0, '<span style=\"font-family: Lato, sans-serif; font-size: 16px;\">Royal canin cat food is the right food for your furry friend if you want a healthy friend.Royal Canin Adult Persian Cat Food flavors are charming so cats like it</span><br>', 'royal-canin-baby-cat-milk-510x510.jpg', 'royal-canin-baby-cat-milk-510x510.jpg', 'royal-canin-baby-cat-milk-510x510.jpg', 100, 'In Stock', '2021-06-07 07:01:42', NULL),
(32, 3, 9, 'Royal Canin Feline Urinary SO Dry Cat Food 1.5Kg', 'Royal food', 4200, 0, '<br>', 'Royal-canin-urinary-food-510x510.jpg', 'Royal-canin-urinary-food-510x510.jpg', 'Royal-canin-urinary-food-510x510.jpg', 100, 'In Stock', '2021-06-07 07:04:51', NULL),
(33, 3, 9, 'Royal Canin Hair And Skin Cat Food 2Kg', 'Royal food', 4150, 6400, '<br>', 'royal-canin-hair-and-skin-dry-cat-food-2kg.jpg', 'royal-canin-hair-and-skin-dry-cat-food-2kg.jpg', 'royal-canin-hair-and-skin-dry-cat-food-2kg.jpg', 150, 'In Stock', '2021-06-07 07:13:10', NULL),
(34, 3, 10, 'NutraGold – Adult Cat Food', 'NutraGold', 1200, 3050, '<span style=\"font-family: Lato, sans-serif; font-size: 16px;\">Nutra Gold is good food for your cat health. This food is for adult cats.</span><br>', 'nutragold-dry-cat-food.jpg', 'nutragold-dry-cat-food.jpg', 'nutragold-dry-cat-food.jpg', 200, 'In Stock', '2021-06-07 07:17:46', NULL),
(35, 3, 10, 'NutraGold Holistic Kitten – 1 KG', 'NutraGold', 1299, 1450, '<br>', 'NutraGold-Holistic-Kitten-–-1-KG.jpeg', 'NutraGold-Holistic-Kitten-–-1-KG.jpeg', 'NutraGold-Holistic-Kitten-–-1-KG.jpeg', 150, 'Out of Stock', '2021-06-07 07:21:54', NULL),
(36, 5, 24, 'Inter Nutri Exotic', 'bird food', 800, 1000, '<span style=\"font-family: Lato, sans-serif; font-size: 16px;\">The natural mixture of banana, coconut and figs has been combined with great love and care. Hence giving good nutritional food for birds</span><br>', 'inter-nutri-exotic-bird-mixture-510x510.jpg', 'inter-nutri-exotic-bird-mixture-510x510.jpg', 'inter-nutri-exotic-bird-mixture-510x510.jpg', 200, 'In Stock', '2021-06-11 09:50:09', NULL),
(38, 13, 26, 'rabbir food', 'Royal food', 1150, 2600, 'bhjn hhghjjn bhhj', '0cf8b48fd69423866c80d6a43719ac07.jpg', '0cf8b48fd69423866c80d6a43719ac07.jpg', '0cf8b48fd69423866c80d6a43719ac07.jpg', 100, 'In Stock', '2021-06-11 16:47:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Dog Milk Replacer', '2017-01-26 16:24:52', '23-05-2021 06:40:45 PM'),
(3, 4, 'Dog Dry Food', '2017-01-26 16:29:09', '23-05-2021 06:41:04 PM'),
(4, 4, 'Royal Canin Dog Food', '2017-01-30 16:55:48', '23-05-2021 06:41:24 PM'),
(5, 4, 'Taste Of The Wild Dog Food', '2017-02-04 04:12:40', '23-05-2021 06:41:38 PM'),
(6, 4, 'Winner Plus Dog Food', '2017-02-04 04:13:00', '23-05-2021 06:41:57 PM'),
(7, 4, 'Reflex Dog Food', '2017-02-04 04:13:27', '23-05-2021 06:42:12 PM'),
(8, 3, 'Cat Dry Food', '2017-02-04 04:13:54', '23-05-2021 06:42:48 PM'),
(9, 3, 'Royal Canin Cat Food', '2017-02-04 04:36:45', '23-05-2021 06:43:53 PM'),
(10, 3, 'NutraGold Cat Food', '2017-02-04 04:37:02', '23-05-2021 06:44:12 PM'),
(11, 4, 'Inter Nutri Dog Food', '2017-02-04 04:37:51', '23-05-2021 06:44:35 PM'),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(13, 4, 'Pai Pai Dog Food', '2021-05-23 13:14:49', NULL),
(14, 4, 'Mera Dog Food', '2021-05-23 13:15:01', NULL),
(15, 4, 'Mera Dog Food', '2021-05-23 14:08:26', NULL),
(16, 6, 'Dog Accessories', '2021-05-25 20:54:21', NULL),
(17, 6, 'Cat Accessories', '2021-05-25 20:54:31', NULL),
(18, 3, 'sana brand food', '2021-05-31 09:27:00', NULL),
(19, 3, 'NutraGold – Adult Cat Food', '2021-06-02 10:38:32', NULL),
(20, 3, 'Taste of Wild Cat Food 2Kg', '2021-06-05 04:59:07', NULL),
(21, 11, 'Boltz Premium Rabbit', '2021-06-05 05:13:27', NULL),
(22, 3, 'Reflex cat food', '2021-06-05 05:45:07', NULL),
(23, 3, 'ROYAL CANIN CAT FOOD', '2021-06-07 06:57:35', NULL),
(24, 5, 'Inter Nutri Exotic Bird Mixture', '2021-06-11 09:45:49', NULL),
(25, 12, 'indian parrot', '2021-06-11 15:42:49', NULL),
(26, 13, 'Boltz Premium Rabbit', '2021-06-11 16:46:06', NULL),
(27, 14, 'Boltz Premium Rabbit', '2021-06-11 16:52:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 11:10:13', NULL, 0),
(25, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 11:11:12', NULL, 1),
(26, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 18:26:11', NULL, 0),
(27, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 18:26:18', '23-05-2021 03:13:40 AM', 1),
(28, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 20:57:15', '24-05-2021 02:27:53 AM', 1),
(29, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 20:58:09', NULL, 0),
(30, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 20:58:20', '24-05-2021 02:44:20 AM', 1),
(31, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 22:08:58', '24-05-2021 05:16:50 AM', 1),
(32, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 07:14:58', NULL, 1),
(33, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 08:42:14', NULL, 1),
(34, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-31 09:14:37', '31-05-2021 03:04:59 PM', 1),
(35, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-02 08:10:23', NULL, 1),
(36, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-02 10:09:53', '02-06-2021 03:40:16 PM', 1),
(37, 'sadiaarshad2335@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-02 10:15:28', NULL, 0),
(38, 'sanaawan268@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-02 10:16:14', NULL, 0),
(39, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-02 10:16:48', '02-06-2021 03:47:02 PM', 1),
(40, 'sadiaarshad2335@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-02 10:17:39', NULL, 0),
(41, 'sadiaarshad2335@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-02 10:19:43', NULL, 1),
(42, 'sadiaarshad2335@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-07 06:43:04', NULL, 1),
(43, 'sadiaarshad2335@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-11 15:45:47', NULL, 1),
(44, 'sadiaarshad2335@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-11 15:48:09', NULL, 1),
(45, 'sadiaarshad2335@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-17 08:25:02', '17-06-2021 02:04:42 PM', 1),
(46, 'hamza.iefr@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-17 08:34:52', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'sadiaarshad', 'sadiaarshad2335@gmail.com', 3344857253, '566131c021f2bee4b3a80589a3336229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02 10:19:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(5, 4, 8, '2021-05-31 09:18:58'),
(6, 5, 37, '2021-06-11 15:48:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
