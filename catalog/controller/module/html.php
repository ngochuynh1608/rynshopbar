<?php
class ControllerModuleHTML extends Controller {
	public function index($setting) {
		if (isset($setting['module_description'][$this->config->get('config_language_id')])) {
			$data['heading_title'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
			$data['html'] = html_entity_decode($setting['module_description'][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');
            $data['setting']=$setting;
            $this->load->language('module/productcategory');

	        $this->load->model('tool/image');

			$data['lang'] = $this->language->get('code');
			$this->load->model('catalog/category');

			$this->load->model('catalog/product');
			$category_id = 139;
			$category_info = $this->model_catalog_category->getCategory($category_id);

				if ($category_info) {
					
					$products = array();

					$filter_data = array(
						'filter_category_id' => $category_id,
						'filter_sub_category' => true,
						'start' => 0,
						'limit' => 8
					);

					$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

					$results = $this->model_catalog_product->getProductmenus($filter_data);

					
					foreach ($results as $result) {
						if($result){
						if ($result['image']) {
							$image = $this->model_tool_image->resize($result['image'], 104, 104);
						} else {
							$image = $this->model_tool_image->resize('placeholder.png', 104, 104);
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

						$data['products'][] = array(
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

				}
			if($data['products']){
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/html.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/html.tpl', $data);
			} else {
				return $this->load->view('default/template/module/html.tpl', $data);
			}
			}
		}
	}
}