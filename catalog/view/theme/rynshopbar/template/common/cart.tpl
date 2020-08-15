
<div id="mini-cart" class="cart animated mini-cart">         
    <div class="mini-cart-trigger">
        
        <a href="<?php echo $cart; ?>">
            <i class="fa fa-shopping-cart"></i>
            Giỏ hàng &nbsp; (<span class="cart-count"><?php echo $text_items; ?></span>)
        </a>
        
    <?php if ($products || $vouchers) { ?>
        <div id="header-cart" class="mini-cart-content">
            <div id="minicart-error-message" class="minicart-message"></div>
                <div id="minicart-success-message" class="minicart-message"></div>
                    <div class="minicart-wrapper">
                        <p class="block-subtitle">Danh sách</p>
                    <div>
                    <ul id="cart-sidebar" class="mini-products-list reset-list">
                        <?php foreach ($products as $product) { ?>
                        <li class="item" xmlns="http://www.w3.org/1999/html">
                            <a href="<?php echo $product['href']; ?>" title="" class="product-image">
                                <img src="<?php echo $product['thumb'];?>" width="90" height="90" alt=""></a>
                                <div class="product-details-mini">
                                    <!--<span class="brand">Ancient Ocean</span>-->
                                    <p class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name'];?></a></p>
                                    <table class="info-wrapper">
                                        <tbody>
                                            <tr>
                                                <th>Giá</th>
                                                <td><?php echo $product['price']; ?> VNĐ</td>
                                            </tr>
                                            <tr class="qty-wrapper">
                                                <th>Số lượng</th>
                                                <td><?php echo $product['quantity']; ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <button type="button" onclick="removeCart('<?php echo $product['key']; ?>');" title="<?php echo $button_remove; ?>" class=""><i class="fa fa-times"></i></button>
                                </div>
                            </li>
                            <?php } ?>
                        </ul>
                </div>
        
                <div id="minicart-widgets"></div>
                <div class="block-content">
                    <a class="cart-link" href="<?php echo $cart;?>">Đi đến giỏ hàng</a>
                        <p class="subtotal">
                            <?php $count=1; ?>
                             <?php foreach ($totals as $total) { if($count==1){?>
                                
                                <span class="label"><?php echo $total['title']; ?></span> 
                                <span class="price"><?php echo $total['text']; ?></span>    
                                
                             <?php } $count++; } ?>                                            
                        </p>
                </div>
                <div class="minicart-actions">
                    <ul class="checkout-types minicart reset-list">
                        <li>
                            <a title="Checkout" class="button button-default checkout-button" href="<?php echo $checkout;?>">
                                <i class="fa fa-shopping-cart"></i><span>Thanh toán</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>  
        </div>

    <?php } else { ?>
        <div id="header-cart" class="mini-cart-content">
                
                <div id="minicart-error-message" class="minicart-message"></div>
                <div id="minicart-success-message" class="minicart-message"></div>
                
                <div class="minicart-wrapper">
                    
                    
                    <p class="block-subtitle">Danh sách    </p>
                    <p class="empty">Giỏ hàng của bạn đang trống.</p>
                </div>
            </div>
    <?php } ?>
    </div>
</div>

