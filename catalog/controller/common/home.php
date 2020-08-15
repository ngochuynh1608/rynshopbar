<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
        
        $this->language->load('information/news');
		$this->load->model('extension/news');
        $data['all_news'] = array();
		$filter_data = array(
            'start' => 0,
			'limit' => 4,
            'category'  => 2
		);
		$all_news = $this->model_extension_news->getAllNews($filter_data);
		$this->load->model('tool/image');
	 
		foreach ($all_news as $news) {
			$data['all_news'][] = array (
				'title' 		=> html_entity_decode($news['title'], ENT_QUOTES),
				'image'			=> $this->model_tool_image->resize($news['image'], 260, 150),
				'description' 	=> (strlen(strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES))) > 150 ? substr(strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES)), 0, 150) . '...' : strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES))),
				//'description'  => strip_tags(html_entity_decode($news['short_description'])),
                'view' 			=> $this->url->link('information/news/news', 'news_id=' . $news['news_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($news['date_added'])),
				'category_new' => $news['category']
			);
		}
       	$this->language->load('information/information');
		$this->load->model('catalog/information');
		$information_info = $this->model_catalog_information->getInformation(12);
		$information_image = $this->model_catalog_information->getimageInformation(12);
		if($information_info){
				$data['s-title'] = $information_info['title'];
				$data['s-view'] = $this->url->link('information/information', 'infomation_id=' . $information_info['information_id']);
				if ($information_image['image']) {
				$data['s-thumb'] =$this->model_tool_image->resize($information_image['image'],500,330);
			} else {
				$data['s-thumb'] = '';
			}

		}
		$setup = $this->model_catalog_information->getInformation(14);
		$setup_image = $this->model_catalog_information->getimageInformation(14);
		if($setup){
				$data['st-title'] = $setup['title'];
				$data['st-view'] = $this->url->link('information/information', 'infomation_id=' . $setup['information_id']);
				if ($setup_image['image']) {
				$data['st-thumb'] =$this->model_tool_image->resize($setup_image['image'],400,220);
			} else {
				$data['st-thumb'] = '';
			}

		}
		$bar = $this->model_catalog_information->getInformation(15);
		$bar_image = $this->model_catalog_information->getimageInformation(15);
		if($bar){
				$data['b-title'] = $bar['title'];
				$data['b-view'] = $this->url->link('information/information', 'infomation_id=' . $bar['information_id']);
				if ($bar_image['image']) {
				$data['b-thumb'] =$this->model_tool_image->resize($bar_image['image'],300,200);
			} else {
				$data['b-thumb'] = '';
			}

		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}

	}
}