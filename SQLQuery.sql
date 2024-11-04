INSERT INTO categories (category_id, category_name, description) VALUES 
(1, 'Cupcake', N'Những chiếc bánh cupcake ngọt ngào và thơm ngon được làm từ các nguyên liệu cao cấp, với nhiều hương vị đa dạng như chocolate, vanilla, red velvet, và nhiều hơn nữa. Mỗi chiếc cupcake được phủ lớp kem mềm mịn và rắc các hạt trang trí đầy màu sắc, rất phù hợp cho các bữa tiệc và dịp lễ.'),
(2, 'Pastry', N'Các loại bánh pastry của chúng tôi được làm mới mỗi ngày, với kết cấu nhẹ và giòn tan ngay trong miệng. Từ bánh croissant bơ, Danish pastry với nhân hoa quả hoặc cream cheese, đến các loại bánh puff pastry cổ điển, mỗi chiếc bánh đều được chế biến tỉ mỉ. Hoàn hảo cho bữa sáng hoặc bữa xế.'),
(3, 'Muffin', N'Bánh muffin của chúng tôi mềm, xốp và đầy ắp hương vị. Khách hàng có thể chọn các hương vị cổ điển như blueberry, chocolate chip, banana nut và các loại theo mùa. Mỗi chiếc muffin được nướng chín tới, mang đến hương vị thơm ngon như bánh nhà làm, hoàn hảo khi dùng kèm với một tách cà phê hoặc trà.'),
(4, 'Waffle', N'Bánh waffle giòn vàng bên ngoài, mềm xốp bên trong. Bánh được làm theo yêu cầu và có thể tùy chọn thêm các loại topping như trái cây tươi, kem tươi, siro chocolate và siro maple. Lý tưởng cho bữa sáng hoặc brunch, mỗi miếng bánh mang lại trải nghiệm ấm áp và đầy lôi cuốn.')


INSERT INTO categories (category_name, description) VALUES 
('Cupcake', N'Những chiếc bánh cupcake ngọt ngào và thơm ngon được làm từ các nguyên liệu cao cấp, với nhiều hương vị đa dạng như chocolate, vanilla, red velvet, và nhiều hơn nữa.'),
('Pastry', N'Các loại bánh pastry của chúng tôi được làm mới mỗi ngày, với kết cấu nhẹ và giòn tan ngay trong miệng. Từ bánh croissant bơ, Danish pastry với nhân hoa quả hoặc cream cheese, đến các loại bánh puff pastry cổ điển, mỗi chiếc bánh đều được chế biến tỉ mỉ.'),
('Muffin', N'Bánh muffin của chúng tôi mềm, xốp và đầy ắp hương vị. Khách hàng có thể chọn các hương vị cổ điển như blueberry, chocolate chip, banana nut và các loại theo mùa. Mỗi chiếc muffin được nướng chín tới, mang đến hương vị thơm ngon như bánh nhà làm.'),
('Waffle', N'Bánh waffle giòn vàng bên ngoài, mềm xốp bên trong. Bánh được làm theo yêu cầu và có thể tùy chọn thêm các loại topping như trái cây tươi, kem tươi, siro chocolate và siro maple.')
select * from categories

select * from products

-- Dữ liệu mẫu cho phân loại Cupcake
INSERT INTO products (description, image, price, product_name, size, stock_quantity, category_id) VALUES
(N'Cupcake hương vanilla mềm mại với lớp kem bơ ngọt ngào, mang đến hương vị dịu nhẹ, thích hợp cho những ai yêu thích sự tinh tế và nhẹ nhàng.', 'vanilla_cupcake.jpg', 25000, 'Vanilla Cupcake', 1, 100, 3)
INSERT INTO products (description, image, price, product_name, size, stock_quantity, category_id) VALUES
(N'Cupcake chocolate đậm đà, phủ lớp kem chocolate thơm ngon, hoàn hảo cho tín đồ socola, với hương vị rich và ngọt ngào.', 'chocolate_cupcake.jpg', 27000, 'Chocolate Cupcake', 1, 120, 3),
(N'Cupcake red velvet với lớp kem cheese béo ngậy, nổi bật với màu đỏ rực rỡ và hương vị độc đáo, tạo nên sự khác biệt cho bữa tiệc của bạn.', 'red_velvet_cupcake.jpg', 30000, 'Red Velvet Cupcake', 1, 80, 3),
(N'Cupcake trà xanh với hương vị matcha thơm ngon, hòa quyện giữa vị trà xanh thanh mát và độ ngọt của kem, mang lại trải nghiệm thưởng thức tuyệt vời.', 'matcha_cupcake.jpg', 28000, 'Matcha Cupcake', 1, 90, 3),
(N'Cupcake hương dâu, màu hồng đẹp mắt, với lớp kem dâu ngọt ngào và vị chua thanh, là lựa chọn lý tưởng cho những ai yêu thích trái cây.', 'strawberry_cupcake.jpg', 26000, 'Strawberry Cupcake', 1, 110, 3),
(N'Cupcake cam chanh tươi mát với vị chua nhẹ, thích hợp cho những ai yêu thích sự mới mẻ và khác biệt trong từng miếng bánh.', 'orange_cupcake.jpg', 26000, 'Orange Citrus Cupcake', 1, 95, 3);

-- Dữ liệu mẫu cho phân loại Pastry
INSERT INTO products ( description, image, price, product_name, size, stock_quantity, category_id) VALUES
(N'Bánh croissant bơ giòn tan, lớp vỏ vàng ươm, hoàn hảo cho bữa sáng hoặc bữa phụ, mang lại cảm giác no bụng và hài lòng.', 'butter_croissant.jpg', 35000, 'Butter Croissant', 1, 150, 4),
(N'Pastry Danish với nhân kem cheese ngọt ngào, lớp bánh mềm mại kết hợp hoàn hảo với nhân cheese béo ngậy, tạo nên một món ăn không thể cưỡng lại.', 'cheese_danish.jpg', 40000, 'Cheese Danish', 1, 80, 4),
(N'Bánh pain au chocolat với lớp sô cô la tan chảy bên trong, mang đến hương vị ngọt ngào và béo ngậy, rất được yêu thích.', 'chocolate_pain_au_chocolat.jpg', 37000, 'Pain au Chocolat', 1, 75, 4),
(N'Bánh puff pastry nhân táo, thơm mùi bơ và vị ngọt thanh, là món ăn hoàn hảo cho những ai yêu thích hương vị trái cây.', 'apple_puff.jpg', 32000, 'Apple Puff Pastry', 1, 90, 4),
(N'Pastry với nhân hạt dẻ cười và mật ong, hương vị thơm ngon và bổ dưỡng, thích hợp cho bữa sáng hoặc bữa ăn nhẹ.', 'pistachio_pastry.jpg', 45000, 'Pistachio Honey Pastry', 1, 60, 4),
(N'Bánh quế nhân hạnh nhân và mứt việt quất, sự kết hợp hoàn hảo giữa vị ngọt và độ giòn, mang đến trải nghiệm thú vị.', 'almond_blueberry_danish.jpg', 42000, 'Almond Blueberry Danish', 1, 70, 4);

-- Dữ liệu mẫu cho phân loại Muffin
INSERT INTO products ( description, image, price, product_name, size, stock_quantity, category_id) VALUES
( N'Muffin việt quất tươi ngon, hương thơm tự nhiên và vị ngọt nhẹ, là sự lựa chọn hoàn hảo cho bữa sáng hoặc món ăn vặt.', 'blueberry_muffin.jpg', 28000, 'Blueberry Muffin', 1, 120, 5),
( N'Muffin sô cô la chip với những miếng socola tan chảy, mang đến hương vị ngọt ngào và hấp dẫn cho những tín đồ yêu thích socola.', 'chocolate_chip_muffin.jpg', 30000, 'Chocolate Chip Muffin', 1, 130, 5),
( N'Muffin chuối hạnh nhân bổ dưỡng, chứa nhiều chất xơ và tốt cho sức khỏe, là món ăn tuyệt vời cho bất kỳ ai.', 'banana_nut_muffin.jpg', 32000, 'Banana Nut Muffin', 1, 100, 5),
( N'Muffin dâu tây ngọt dịu, với màu sắc tươi sáng và hương vị dễ chịu, phù hợp cho mọi lứa tuổi.', 'strawberry_muffin.jpg', 27000, 'Strawberry Muffin', 1, 90, 5),
( N'Muffin cam chanh với vị chua ngọt thanh mát, mang đến trải nghiệm mới lạ và thú vị.', 'lemon_orange_muffin.jpg', 26000, 'Lemon Orange Muffin', 1, 110, 5),
( N'Muffin cà phê mocha độc đáo, dành cho những người yêu thích cà phê với hương vị mạnh mẽ và cuốn hút.', 'mocha_muffin.jpg', 30000, 'Mocha Muffin', 1, 95, 5);

-- Dữ liệu mẫu cho phân loại Waffle
INSERT INTO products (description, image, price, product_name, size, stock_quantity, category_id) VALUES
(N'Waffle giòn rụm với siro maple ngọt ngào, là sự kết hợp hoàn hảo giữa vị giòn và ngọt, mang lại cảm giác thích thú cho người thưởng thức.', 'maple_waffle.jpg', 40000, 'Maple Waffle', 1, 50, 6),
(N'Waffle socola với kem tươi và trái cây tươi, là món tráng miệng lý tưởng cho những ai yêu thích sự ngọt ngào.', 'chocolate_waffle.jpg', 45000, 'Chocolate Waffle', 1, 60, 6),
(N'Waffle trái cây nhiệt đới với chuối và dứa, mang đến hương vị tươi mới và thanh mát cho bữa ăn nhẹ.', 'tropical_fruit_waffle.jpg', 42000, 'Tropical Fruit Waffle', 1, 45, 6),
(N'Waffle truyền thống với bơ tan chảy, đơn giản nhưng ngon miệng, là lựa chọn tuyệt vời cho bữa sáng.', 'classic_butter_waffle.jpg', 38000, 'Classic Butter Waffle', 1, 55, 6),
(N'Waffle kem vani cho buổi chiều thư giãn, lớp kem vani mát lạnh hòa quyện với độ giòn của waffle, mang đến trải nghiệm thư giãn tuyệt vời.', 'vanilla_ice_cream_waffle.jpg', 47000, 'Vanilla Ice Cream Waffle', 1, 40, 6),
(N'Waffle caramel giòn tan với hạt óc chó, mang lại hương vị béo ngậy và thơm ngon, là món ăn không thể bỏ qua.', 'caramel_waffle.jpg', 46000, 'Caramel Walnut Waffle', 1, 35, 6);


SELECT *
FROM products
ORDER BY product_name -- Sắp xếp theo product_id hoặc cột khác
OFFSET (2 - 1) * 8 ROWS
FETCH NEXT 8 ROWS ONLY;

select * from products ORDER BY product_name


--// Giả sử bạn có phương thức này để lấy tổng số sản phẩm
--        int totalProducts = getTotalProducts(); // Tính tổng số sản phẩm
--        int pageSize = 8; // Số sản phẩm trên mỗi trang
        
--        // Tính số lượng trang
--        int totalPages = (int) Math.ceil((double) totalProducts / pageSize);


--<c:if test="${pageContext.request.userPrincipal != null && pageContext.request.isUserInRole('admin')}">
--    <a href="${pageContext.request.contextPath}/admin"><img class="acc-admin" src="./resources/images/icons8-admin-64.png" alt="Admin"></a>
--</c:if>