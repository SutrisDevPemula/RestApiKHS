<?php
class ControllerModuleTmManufacturer extends Controller {
	public function index() {
		$this->load->language('module/tm_manufacturer');

		$data['heading_title'] = $this->language->get('heading_title');

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		$data['heading_title'] = $this->language->get('heading_title');
        $data['text_select'] = $this->language->get('text_select');

        if (isset($this->request->get['manufacturer_id'])) {
            $data['manufacturer_id'] = $this->request->get['manufacturer_id'];
        } else {
            $data['manufacturer_id'] = 0;
        }
        
        $this->load->model('catalog/manufacturer');
				
        $data['manufacturers'] = array();

        $results = $this->model_catalog_manufacturer->getManufacturers();

        foreach ($results as $result) {
						
			$data['manufacturers'][] = array(
                'manufacturer_id' => $result['manufacturer_id'],
                'name'       	  => $result['name'],
                'image'       	  =>HTTPS_SERVER.'image/'.$result['image'],
				'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $result['manufacturer_id'])
            );
        }

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/tm_manufacturer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/tm_manufacturer.tpl', $data);
		} else {
			return $this->load->view('default/template/module/tm_manufacturer.tpl', $data);
		}
	}
}