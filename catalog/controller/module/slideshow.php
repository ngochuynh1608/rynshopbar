<?php
class ControllerModuleSlideshow extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);
        $data['name']=$setting['name'];
		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title'            => $result['title'],
					'link'             => $result['link'],
                    'color'            => $result['color'],
                    'description'      => $result['description'],
					'image'            => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'],'w')
				);
			}
		}

		$data['module'] = $module++;

		$this->load->model('catalog/manufacturer');

		$manufacturers = $this->model_catalog_manufacturer->getManufacturers();
		if(!empty($manufacturers)){
			foreach ($manufacturers as $manufacturer) {
				if (is_file(DIR_IMAGE . $manufacturer['image'])) {
					$data['manufacturers'][] = array(
						'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $manufacturer['manufacturer_id']),
						'image' => $this->model_tool_image->resize($manufacturer['image'],150, 55,'w')
					);
				}
			}
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/slideshow.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/slideshow.tpl', $data);
		} else {
			return $this->load->view('default/template/module/slideshow.tpl', $data);
		}
	}
}