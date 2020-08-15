<?php
class ControllerModuleProductcategory extends Controller {
	public function index($setting) {
		$this->load->language('module/productcategory');

        $this->load->model('tool/image');

		$data['lang'] = $this->language->get('code');
		
		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_tax'] = $this->language->get('text_tax');
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();
        $data['name_module']=$setting['name'];
		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		if (!empty($setting['category'])) {
			$categories = array_slice($setting['category'], 0, (int)$setting['limit']);

			foreach ($categories as $category_id) {
				$category_info = $this->model_catalog_category->getCategory($category_id);

				if ($category_info) {
					
					$products = array();

					$filter_data = array(
						'filter_category_id' => $category_id,
						'filter_sub_category' => true,
						'start'              => 0,
						'limit'              => $setting['limit']
					);

					$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

					$results = $this->model_catalog_product->getProducts($filter_data);

					
					foreach ($results as $result) {
						if($result){
						if ($result['image']) {
							$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
						} else {
							$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
						}

						if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
							$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
						} else {
							$price = false;
						}

						if ((float)$result['special']) {
							$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
						} else {
							$special = false;
						}

        				if ($this->config->get('config_tax')) {
        					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
        				} else {
        					$tax = false;
        				}
        
        				if ($this->config->get('config_review_status')) {
        					$rating = $result['rating'];
        				} else {
        					$rating = false;
        				}
                        $gift=strip_tags(html_entity_decode($result['gift'], ENT_QUOTES, 'UTF-8'));
                        if(empty($gift))
                        {
                            $gift="";
                        }
                        else
                        {
                            $gift=utf8_substr(strip_tags(html_entity_decode($result['gift'], ENT_QUOTES, 'UTF-8')), 0, 45) ;
                        }

						$products[] = array(
        					'product_id'  => $result['product_id'],
        					'thumb'       => $image,
        					'name'        => utf8_substr(strip_tags(html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8')), 0, 45),
        					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
        					'price'       => $price,
        					'special'     => $special,
        					'tax'         => $tax,
        					'rating'      => $rating,
                            'gift'        => $gift,
                            'sort_description'  => html_entity_decode($result['sort_description'], ENT_QUOTES, 'UTF-8'),
        					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
                            'percent'	  => round(100 - (float)$special/$price*100),
							);
						}
				 	}
                    $image2="";
    				if ($category_info['image']) {
    					$image2 = $this->model_tool_image->resize($category_info['image'], 570,340);
    				} else {
    					$image2 = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_wishlist_width'), $this->config->get('config_image_wishlist_width'));
    				}
					$data['categories'][] = array(
						'category_id'            => $category_info['category_id'],
						'products'	             => $products,
						'name'                   => $category_info['name'],
						'href'                   => $this->url->link('product/category', 'path=' . $category_info['category_id']),
                        'image'                  => $image2,
                        'description' 	=> (strlen(strip_tags(html_entity_decode($category_info['description'], ENT_QUOTES))) > 500 ? substr(strip_tags(html_entity_decode($category_info['description'], ENT_QUOTES)), 0, 500) . '...' : strip_tags(html_entity_decode($category_info['description'], ENT_QUOTES))),
                        //'description'            => strip_tags(html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8'))
					);
				}
			}
		}
		if ($data['categories']) {
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/productcategory.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/productcategory.tpl', $data);
			} else {
				return $this->load->view('default/template/module/productcategory.tpl', $data);
			}
		}
	}
}