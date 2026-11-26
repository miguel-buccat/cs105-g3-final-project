-- [DONE] TODO: Create tables [Buccat]
CREATE TABLE `categories` (
  `category_id`     int(11)         PRIMARY KEY NOT NULL,
  `category_name`   varchar(100)    NOT NULL,
  `description`     text DEFAULT    NULL
);

CREATE TABLE `customers` (
  `customer_id`     int(11)         PRIMARY KEY NOT NULL,
  `first_name`      varchar(100)    NOT NULL,
  `last_name`       varchar(100)    NOT NULL,
  `email_address`   varchar(255)    UNIQUE NOT NULL,
  `birth_date`      date            NOT NULL,
  `phone`           varchar(20)     DEFAULT NULL
);

CREATE TABLE `employees` (
  `employee_id`     int(11)         PRIMARY KEY NOT NULL,
  `first_name`      varchar(100)    NOT NULL,
  `last_name`       varchar(100)    NOT NULL,
  `role`            varchar(50)     NOT NULL,
  `email`           varchar(255)    NOT NULL,
  `hire_date`       date            NOT NULL
);

CREATE TABLE `suppliers` (
  `supplier_id`     int(11)         PRIMARY KEY NOT NULL,
  `supplier_name`   varchar(150)    NOT NULL,
  `contact_name`    varchar(100)    DEFAULT NULL,
  `phone`           varchar(20)     DEFAULT NULL,
  `email`           varchar(255)    DEFAULT NULL
);

CREATE TABLE `orders` (
  `order_id`        int(11)         PRIMARY KEY NOT NULL,
  `customer_id`     int(11)         NOT NULL,
  `employee_id`     int(11)         NOT NULL,
  `ordered_on`      datetime        NOT NULL,
  `total_amount`    decimal(10,2)   NOT NULL,
  `order_status`    varchar(50)     NOT NULL,
  KEY `fk_order_customer` (`customer_id`),
  KEY `fk_order_employee` (`employee_id`),
  CONSTRAINT `fk_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `fk_order_employee` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
);

CREATE TABLE `payments` (
  `payment_id`      int(11)         PRIMARY KEY NOT NULL,
  `order_id`        int(11)         NOT NULL,
  `paid_on`         datetime        NOT NULL,
  `amount_paid`     decimal(10,2)   NOT NULL,
  `payment_method`  varchar(50)     NOT NULL,
  `payment_status`  varchar(50)     NOT NULL,
  KEY `fk_payment_order` (`order_id`),
  CONSTRAINT `fk_payment_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
);

CREATE TABLE `products` (
  `product_id`      int(11)         PRIMARY KEY NOT NULL,
  `category_id`     int(11)         NOT NULL,
  `supplier_id`     int(11)         NOT NULL,
  `product_name`    varchar(200)    NOT NULL,
  `unit_price`      decimal(10,2)   NOT NULL,
  `stock`           int(11)         NOT NULL,
  KEY `fk_product_category` (`category_id`),
  KEY `fk_product_supplier` (`supplier_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `fk_product_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`)
);

CREATE TABLE `order_items` (
  `order_item_id`   int(11)         PRIMARY KEY NOT NULL,
  `order_id`        int(11)         NOT NULL,
  `product_id`      int(11)         NOT NULL,
  `quantity`        int(11)         NOT NULL,
  `discount`        decimal(10,2)   DEFAULT 0.00,
  KEY `fk_order_item_order` (`order_id`),
  KEY `fk_order_item_product` (`product_id`),
  CONSTRAINT `fk_order_item_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `fk_order_item_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
);