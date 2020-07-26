<?php
class ControllerModuleTmImageCategory extends Controller {
	public function index() {
		$this->load->language('module/tm_image_category');

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_all'] = $this->language->get('text_all');

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (isset($parts[0])) {
			$data['category_id'] = $parts[0];
		} else {
			$data['category_id'] = 0;
		}

		if (isset($parts[1])) {
			$data['child_id'] = $parts[1];
		} else {
			$data['child_id'] = 0;
		}

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');
		$this->load->model('tool/image');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			


				
				if ($category['image']) {
						$image = $this->model_tool_image->resize($category['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}

				
				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'column'   => $category['column'] ? $category['column'] : 1,
					'thumb'       => $image,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/tm_image_category.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/tm_image_category.tpl', $data);
		} else {
			return $this->load->view('default/template/module/tm_image_category.tpl', $data);
		}
	}
}