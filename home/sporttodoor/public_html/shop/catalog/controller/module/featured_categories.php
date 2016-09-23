<?php
class ControllerModuleFeaturedCategories extends Controller {
	public function index($setting) {
		static $module = 0;
		$this->load->language('module/featured_categories');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		if (!isset($this->request->get['route']) || isset($this->request->get['route']) && $this->request->get['route'] == 'common/home') {
			$data['home'] = 'yes';
		}else{
			$data['home'] = 'no';
		}

		$this->load->model('catalog/category');

		$this->load->model('tool/image');

		$data['categorys'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		if (!empty($setting['category'])) {
			$categorys = array_slice($setting['category'], 0, (int)$setting['limit']);

			foreach ($categorys as $category_id) {
				
				$category_info = $this->model_catalog_category->getCategory($category_id);

				if ($category_info) {
					if ($category_info['image']) {
						$image = $this->model_tool_image->resize($category_info['image'], $setting['width'], $setting['height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
					}

					$data['categorys'][] = array(
						'category_id'  => $category_info['category_id'],
						'thumb'       => $image,
						'name'        => $category_info['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
						'href'        => $this->url->link('product/category', 'path=' . $category_info['category_id'])
					);
				}
			}
		}
		$data['module'] = $module++;
		return $this->load->view('module/featured_categories.tpl', $data);
	}
}