-- [DONE] TODO: Populate tables with data [Buccat, Bundalian]
INSERT INTO categories
(category_id, category_name, description)
VALUES
    (1, 'Food & Beverages', 'Food products, bottled drinks, and beverages.'),
    (2, 'School Supplies', 'Notebooks, pens, pencils, and coloring materials'),
    (3, 'Children''s Toys', 'Board games and puzzles'),
    (4, 'Personal Care', 'Skincare, haircare, cosmetics, and hygiene products'),
    (5, 'Office Supplies', 'Copy paper, markers, and pens'),
    (6, 'Jewelry', 'Earrings, rings, and necklaces');

INSERT INTO customers
(customer_id, first_name, last_name, email_address, birth_date, phone)
VALUES
    (1, 'Warleyne', 'Cassanova', 'warleyne.cassanova@ciit.edu.ph', '2007-07-11', '09010234567'),
    (2, 'Maria Zhulliane', 'Abaloyan', 'maria.abaloyan@ciit.edu.ph', '2008-06-16', '09181234567'),
    (3, 'Carl Nicolo', 'Ronas', 'carl.ronas@ciit.edu.ph', '1995-11-10', '09191234567'),
    (4, 'Dorothy Neil', 'Zerna', 'dorothy.zerna@ciit.edu.ph', '2001-02-18', '09201234567'),
    (5, 'Christine', 'Sebastian', 'christine.sebastian@ciit.edu.ph', '1997-07-30', '09211234567'),
    (6, 'Amir Sameh Momtaz', 'Soltan', 'amir.soltan@ciit.edu.ph', '1999-04-12', '09221234567'),
    (7, 'Duncan Marius', 'Lopez', 'duncan.lopez@ciit.edu.ph', '2002-09-25', '09231234567'),
    (8, 'Arjan', 'Manzano', 'arjan.manzano@ciit.edu.ph', '1996-12-03', '09241234567'),
    (9, 'Jedidiah', 'Lopez', 'jedidiah.lopez@ciit.edu.ph', '2000-06-17', '09251234567'),
    (10, 'Andree Isabella', 'Low', 'andree.low@ciit.edu.ph', '1998-03-08', '09261234567');

INSERT INTO employees
(employee_id, first_name, last_name, role, email, hire_date)
VALUES
    (1, 'Gerald', 'Chavez', 'Store Manager', 'gerald.chavez@store.com', '2022-01-15'),
    (2, 'Felman', 'Garcia', 'Cashier', 'felman.garcia@store.com', '2023-03-10'),
    (3, 'Mark Anthony', 'Aya-ay', 'Sales Associate', 'mark.ayaay@store.com', '2023-06-20'),
    (4, 'Anabelle', 'Buccat', 'Inventory Clerk', 'anabelle.buccat@store.com', '2022-11-05'),
    (5, 'Maricar', 'Bundalian', 'Cashier', 'maricar.bundalian@store.com', '2024-02-12');

INSERT INTO suppliers
(supplier_id, supplier_name, contact_name, phone, email)
VALUES
    (1, 'Buccat Enterprises Inc.', 'Atty. Miguel R. Buccat', '09171234567', 'contact@miguelbuccat.com'),
    (2, 'Estavillo Stationery Co.', 'Justine Estavillo', '09181234567', 'justineestavillo@gmail.com'),
    (3, 'Macamay Beverages Inc.', 'Kassandra Joyce Macamay', '09191234567', 'kassandra.macamay@macamay-beverages.com.ph'),
    (4, 'Guiam Cosmetic Corporation', 'Benjamin Matthew Guiam', '09201234567', 'benjamin@guiamcosmetics.com.ph'),
    (5, 'Zerna Shine Inc.', 'Dorothy Neil Zerna', '09211234567', 'dorothyzerna@zernashine.com.ph'),
    (6, 'Lopez Specialties Co.', 'Jedidiah Lopez', '09221234567', 'ceo@lspecialties.com');

INSERT INTO orders
(order_id, customer_id, employee_id, ordered_on, total_amount, order_status)
VALUES
    (1, 1, 2, '2026-01-05 09:30:00', 240.00, 'Completed'),
    (2, 2, 3, '2026-01-06 10:15:00', 296.00, 'Completed'),
    (3, 3, 2, '2026-01-07 13:45:00', 710.00, 'Completed'),
    (4, 4, 5, '2026-01-08 14:20:00', 1080.00, 'Completed'),
    (5, 5, 1, '2026-01-09 11:00:00', 645.00, 'Processing'),
    (6, 6, 4, '2026-01-10 15:30:00', 948.00, 'Completed'),
    (7, 7, 3, '2026-01-11 09:10:00', 540.00, 'Pending'),
    (8, 8, 5, '2026-01-12 16:00:00', 1500.00, 'Completed'),
    (9, 9, 2, '2026-01-13 12:25:00', 330.00, 'Processing'),
    (10, 10, 1, '2026-01-14 10:50:00', 740.00, 'Completed');

INSERT INTO products
(product_id, category_id, supplier_id, product_name, unit_price, stock)
VALUES
    (1, 1, 3, 'Bottled Water 500ml', 15.00, 82),
    (2, 1, 1, 'Chocolate Cookies', 45.00, 44),
    (3, 2, 2, 'Spiral Notebook', 55.00, 71),
    (4, 2, 2, 'Ballpoint Pen', 12.00, 133),
    (5, 3, 6, 'Wooden Puzzle', 180.00, 23),
    (6, 3, 6, 'Board Game', 350.00, 19),
    (7, 4, 4, 'Facial Cleanser', 250.00, 35),
    (8, 4, 4, 'Shampoo 250ml', 120.00, 55),
    (9, 5, 1, 'Bond Paper (Short)', 180.00, 67),
    (10, 5, 1, 'Permanent Marker', 35.00, 87),
    (11, 6, 5, 'Silver Earrings', 450.00, 13),
    (12, 6, 5, 'Gold-plated Necklace', 750.00, 8);

INSERT INTO payments
(payment_id, order_id, paid_on, amount_paid, payment_method, payment_status)
VALUES
    (1, 1, '2026-01-05 09:35:00', 240.00, 'Cash', 'Paid'),
    (2, 2, '2026-01-06 10:20:00', 296.00, 'GCash', 'Paid'),
    (3, 3, '2026-01-07 13:50:00', 710.00, 'Cash', 'Paid'),
    (4, 4, '2026-01-08 14:25:00', 1080.00, 'Credit Card', 'Paid'),
    (5, 5, '2026-01-09 11:05:00', 300.00, 'GCash', 'Partial'),
    (6, 6, '2026-01-10 15:35:00', 948.00, 'Cash', 'Paid'),
    (7, 7, '2026-01-11 09:15:00', 0.00, 'Cash', 'Pending'),
    (8, 8, '2026-01-12 16:05:00', 1500.00, 'Debit Card', 'Paid'),
    (9, 9, '2026-01-13 12:30:00', 200.00, 'GCash', 'Partial'),
    (10, 10, '2026-01-14 10:55:00', 740.00, 'Cash', 'Paid');

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, discount)
VALUES
    (1, 1, 1, 10, 0.00),
    (2, 1, 2, 2, 0.00),
    (3, 2, 3, 4, 20.00),
    (4, 2, 4, 8, 0.00),
    (5, 3, 5, 2, 0.00),
    (6, 3, 6, 1, 0.00),
    (7, 4, 7, 3, 30.00),
    (8, 4, 8, 3, 0.00),
    (9, 5, 9, 3, 0.00),
    (10, 5, 10, 3, 0.00),
    (11, 6, 11, 2, 0.00),
    (12, 6, 4, 4, 0.00),
    (13, 7, 1, 8, 0.00),
    (14, 7, 2, 4, 0.00),
    (15, 8, 12, 2, 0.00),
    (16, 9, 3, 5, 5.00),
    (17, 9, 4, 5, 0.00),
    (18, 10, 7, 2, 0.00),
    (19, 10, 8, 2, 0.00);


--

-- TODO : Create queries to retrieve data [Aya-ay, Danao]

--