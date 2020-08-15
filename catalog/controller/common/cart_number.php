<?php
class ControllerCommonCartNumber extends Controller {
	public function index() {	
	    $this->load->language('common/header');
        $data['cart_mini'] = $this->load->controller('common/cart');
		$data['text_items'] = $this->cart->countProducts();
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/cart_number.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/cart_number.tpl', $data);
		} else {
			return $this->load->view('default/template/common/header.tpl', $data);
		}
	}
    public function info() {
		$this->response->setOutput($this->index());
	}
}