SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `admin` (
  `adm_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'zeroual', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@gmail.com', '', '2024-07-22 07:18:13');


CREATE TABLE `dishes` (
  `d_id` int NOT NULL,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Tagine Meat and Prune', 'Meat and prune tagine is a traditional Moroccan dish where meat is slowly cooked with prunes, almonds, onions, and a blend of aromatic spices.', 20.00, '66a01faa02a8e.jpg'),
(2, 1, 'Couscous with Seven Vegetables', 'Couscous with seven vegetables is an emblematic dish of Morocco where steamed wheat semolina is served with a stew of varied vegetables', 15.00, '66a022a57c312.jpg'),
(3, 4, 'Chicken Madeira', 'Chicken Madeira, like Chicken Marsala, is made with chicken, mushrooms, and a special fortified wine. But, the wines are different;', 23.00, '62908bdf2f581.jpg'),
(4, 1, 'Pastilla Chicken and Almond', 'Pastilla is a sweet and savory tart made of layers of chicken cooked with onions, scrambled eggs, toasted almonds and cinnamon, all wrapped in thin filo pastry and sprinkled with icing sugar.', 8.00, '66a0181d7cc19.jpg'),
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti with prawns in a fresh tomato sauce. This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta. Garnish each with remaining tablespoon parsley.', 21.00, '606d7491a9d13.jpg'),
(6, 2, 'Cheesy Mashed Potato', 'Deliciously Cheesy Mashed Potato. The ultimate mash for your Thanksgiving table or the perfect accompaniment to vegan sausage casserole.', 5.00, '606d74c416da5.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', 8.00, '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', 11.00, '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', 5.00, '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', 7.00, '606d75a7e21ec.jpg'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', 6.00, '606d75ce105d0.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', 11.00, '606d7600dc54c.jpg'),
(13, 4, 'Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', 11.00, '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', 9.00, '606d768a1b2a1.jpg'),
(15, 4, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', 6.00, '606d76ad0c0cb.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 10.00, '606d76eedbb99.jpg');


CREATE TABLE `remark` (
  `id` int NOT NULL,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `restaurant` (
  `rs_id` int NOT NULL,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `restaurant`
INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 5, 'Restaurant Dar El Kaid', 'RestaurantDarElKaid@gmail.com', '+212 522-202384', 'www.darelkaid.ma', '9am', '11pm', 'mon-sat', 'Rue Mohamed El Alaoui, Casablanca', '66a009ea50d58.jpg', '2024-07-23 22:34:21'),
(2, 2, 'Green Black', 'GreenBlack@gmail.com', '+212 522-296045', 'www.GreenBlack.com', '8am', '11pm', 'Mon-Sat', 'Marina Shopping Center, Casablanca', '66a00ef00556a.jpg', '2024-07-23 22:34:54'),
(3, 3, 'Golden China', 'GoldenChina@mail.com', '+212 5222-73526', 'www.GoldenChina.com', '6am', '8pm', 'mon-sat', '12 Rue el Oraibi Jilali, Casablanca', '66a010c1ec215.jpg', '2024-07-23 21:28:05'),
(4, 4, 'West', 'west@gmail.com', '+212 660-492949', 'www.west.com', '10am', '12pm', 'mon-sat', '91 Boulevard Driss Slaoui Ain Diab, Casablanca', '66a0121d84e2f.jpg', '2024-07-23 21:27:53');

CREATE TABLE `res_category` (
  `c_id` int NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(2, 'Italian', '2024-07-23 09:45:23'),
(3, 'Chinese', '2024-07-23 09:45:25'),
(4, 'American', '2024-07-23 09:45:28'),
(5, 'Moroccan', '2024-07-23 20:12:22');

CREATE TABLE `users` (
  `u_id` int NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `users_orders` (
  `o_id` int NOT NULL,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);


ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);


ALTER TABLE `admin`
  MODIFY `adm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `dishes`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `remark`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


ALTER TABLE `restaurant`
  MODIFY `rs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `res_category`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `users`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `users_orders`
  MODIFY `o_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

COMMIT;
