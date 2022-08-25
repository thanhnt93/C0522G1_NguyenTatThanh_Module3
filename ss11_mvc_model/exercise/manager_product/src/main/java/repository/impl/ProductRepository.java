package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();


    static {
        productList.add(new Product(1, "Iphone", 1000, "Smartphone", "Apple"));
        productList.add(new Product(2, "Samsung", 500, "Smartphone", "Samsung"));
        productList.add(new Product(3, "Nokia", 200, "Smartphone", "Nokia"));
        productList.add(new Product(4, "Oppo", 600, "Smartphone", "OPPo"));
        productList.add(new Product(5, "Xiaomi", 1000, "Smartphone", "Xiaomi"));
        productList.add(new Product(6, "Iphone11", 2000, "Smartphone", "Apple"));
        productList.add(new Product(7, "Iphone", 1000, "Smartphone", "Apple"));
        productList.add(new Product(8, "Samsung", 500, "Smartphone", "Samsung"));
        productList.add(new Product(9, "Nokia", 200, "Smartphone", "Nokia"));
        productList.add(new Product(10, "Oppo", 600, "Smartphone", "OPPo"));
        productList.add(new Product(11, "Xiaomi", 1000, "Smartphone", "Xiaomi"));
        productList.add(new Product(12, "Iphone11", 2000, "Smartphone", "Apple"));
        productList.add(new Product(13, "Iphone", 1000, "Smartphone", "Apple"));
        productList.add(new Product(14, "Samsung", 500, "Smartphone", "Samsung"));
        productList.add(new Product(15, "Nokia", 200, "Smartphone", "Nokia"));
        productList.add(new Product(16, "Oppo", 600, "Smartphone", "OPPo"));
        productList.add(new Product(17, "Xiaomi", 1000, "Smartphone", "Xiaomi"));
        productList.add(new Product(18, "Iphone11", 2000, "Smartphone", "Apple"));
        productList.add(new Product(19, "Iphone", 1000, "Smartphone", "Apple"));
        productList.add(new Product(20, "Samsung", 500, "Smartphone", "Samsung"));
        productList.add(new Product(21, "Nokia", 200, "Smartphone", "Nokia"));
        productList.add(new Product(22, "Oppo", 600, "Smartphone", "OPPo"));
        productList.add(new Product(23, "Xiaomi", 1000, "Smartphone", "Xiaomi"));
        productList.add(new Product(24, "Iphone11", 2000, "Smartphone", "Apple"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productList.add( product);
    }

    @Override
    public void remove(int id) {
        productList.remove(id);
    }

    @Override
    public List<Product> search(String name) {
        List<Product> searchList = new ArrayList<>();
        for (Product item :
                productList) {
            if (item.getName().contains(name)){
                searchList.add(item);
            }
        }
        return searchList;
    }

    @Override
    public Product searchByID(int id) {

            return productList.get(id);
    }
}
