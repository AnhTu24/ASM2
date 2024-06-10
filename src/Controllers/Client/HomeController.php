<?php 

namespace Ductong\XuongOop\Controllers\Client;

use Ductong\XuongOop\Commons\Controller;
use Ductong\XuongOop\Commons\Helper;
use Ductong\XuongOop\Models\Category;
use Ductong\XuongOop\Models\Product;

class HomeController extends Controller
{
    private Product $product;
    private Category $category;

    public function __construct()
    {
        $this->product = new Product();
        $this->category = new Category();
    }

    public function index() {
        $name = 'DucTV44';
        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $perPage = 4; 

        $topProducts = (new Product())->topProducts();
    
        $result = $this->product->paginate($page, $perPage);
        // Helper::debug($result);
        $this->renderViewClient('home', [
            'name' => $name,
            'products' => $result['data'],
            'totalPage' => $result['totalPage'],
            'currentPage' => $result['currentPage'],
            'totalRecords' => $result['totalRecords'],
            'topProducts' => $topProducts
        ]);
    }

    public function shop()
    {
        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $perPage = 4; // Or any desired number of products per page
    
        $result = $this->product->paginate($page, $perPage);
        // Helper::debug($result);
        $this->renderViewClient('shop', [
            'products' => $result['data'],
            'totalPage' => $result['totalPage'],
            'currentPage' => $result['currentPage'],
            'totalRecords' => $result['totalRecords']
        ]);

    }

    public function detail($id){
        $product = $this->product->findByID($id);
        // Helper::debug($product);
        $product['view'] = $product['view'] + 1;

        // Store c_name before unsetting
        $categoryName = $product['c_name']; 
    
        // Remove c_name before updating the product
        unset($product['c_name']); 
    
        $this->product->update($id, $product); 
       
        // Add c_name back to the product array
        $product['c_name'] = $categoryName;

        $this->renderViewClient('detail', [
            'product' => $product
        ]);
    }

    public function search()
    {
        $query = isset($_GET['s']) ? $_GET['s'] : '';
        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $perPage = 4; // Or any desired number of products per page

        $results = $this->product->searchByNamePaginate($query, $page, $perPage);

        $this->renderViewClient('search', [
            'query' => $query,
            'products' => $results['data'],
            'totalPage' => $results['totalPage'],
            'currentPage' => $results['currentPage'],
            'totalRecords' => $results['totalRecords']
        ]);
    }

    

}