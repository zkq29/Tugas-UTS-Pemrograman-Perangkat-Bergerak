class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;
  final List<String> sizes;
  final double rating;
  final int stock;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.sizes,
    required this.rating,
    required this.stock,
  });

  // Dummy data produk sport
  static List<Product> getDummyProducts() {
    return [
      Product(
        id: '1',
        name: 'Nike Alphafly 3',
        description:
            'Sepatu Lari terbaik kami untuk setengah maraton dan maraton..',
        price: 3268000,
        imageUrl:
            'https://cdn11.bigcommerce.com/s-21x65e8kfn/images/stencil/original/products/83554/457061/NIK24605_1000_3__93342.1761146567.jpg',
        category: 'Sepatu',
        sizes: ['40', '41', '42', '43', '44'],
        rating: 4.8,
        stock: 25,
      ),
      Product(
        id: '2',
        name: 'Adidas Adizero Adios Pro 4',
        description:
            'Sepatu running jarak jauh ringan yang didesain untuk memecahkan rekor.',
        price: 4000000,
        imageUrl:
            'https://cdn11.bigcommerce.com/s-21x65e8kfn/images/stencil/original/products/83738/458420/ADI18272_1000_1__45044.1761654130.jpg',
        category: 'Sepatu',
        sizes: ['39', '40', '41', '42', '43'],
        rating: 4.9,
        stock: 18,
      ),
      Product(
        id: '3',
        name: 'Los Angeles Lakers Icon Edition',
        description: 'Mens Nike Dri-FIT NBA Swingman Jersey',
        price: 1379000,
        imageUrl:
            'https://static.nike.com/a/images/t_web_pdp_936_v2/f_auto/a9de5c36-c3f9-498c-a1e8-48be750478b0/LAL+MNK+DF+SWGMN+JSY+ICN+22.png',
        category: 'Jersey',
        sizes: ['S', 'M', 'L', 'XL'],
        rating: 4.5,
        stock: 50,
      ),
      Product(
        id: '4',
        name: 'Chelsea F.C. 2025/26 Match Third',
        description: 'Mens Nike Dri-FIT ADV Total 90 Football',
        price: 1979000,
        imageUrl:
            'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto/2660ca71-c6b0-4b0b-abd9-97f60ae04f6f/CFC+M+NK+DFADV+JSY+SS+MATCH+3R.png',
        category: 'Jersey',
        sizes: ['S', 'M', 'L', 'XL'],
        rating: 4.7,
        stock: 35,
      ),
      Product(
        id: '5',
        name: 'Nike Skills total 90',
        description: 'football.',
        price: 259000,
        imageUrl:
            'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto/246cb198-b5b8-452d-8dac-47c947d908a0/NIKE+SKILLS+T90+FA25.png',
        category: 'Peralatan',
        sizes: ['One Size'],
        rating: 4.6,
        stock: 42,
      ),
      Product(
        id: '6',
        name: 'Nike Academy',
        description: 'football.',
        price: 389000,
        imageUrl:
            'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto/d9f3b14b-641f-4629-8e7c-152896ed8249/NK+ACADEMY+-+FA25.png',
        category: 'Peralatan',
        sizes: ['One Size'],
        rating: 4.4,
        stock: 30,
      ),
      Product(
        id: '7',
        name: 'Puma Velocity Nitro 4',
        description: ' Mens Running Shoes - AW25.',
        price: 2099000,
        imageUrl:
            'https://cdn11.bigcommerce.com/s-21x65e8kfn/images/stencil/original/products/80718/458678/PUM2730_1000_15__99906.1761733222.jpg',
        category: 'Sepatu',
        sizes: ['40', '41', '42', '43', '44'],
        rating: 4.7,
        stock: 22,
      ),
      Product(
        id: '8',
        name: 'Nike Match',
        description: 'Goalkeeper Football Gloves.',
        price: 308000,
        imageUrl:
            'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto/54c2af32-22a8-4006-9954-2eb3fb32c1ad/NK+GK+MATCH+-+HO24.png',
        category: 'Aksesoris',
        sizes: ['6', '7', '8', '9', '10', '11'],
        rating: 4.5,
        stock: 28,
      ),
      Product(
        id: '9',
        name: 'Nike Academy Team',
        description: 'Backpack (30L).',
        price: 649000,
        imageUrl:
            'https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto/5b9f0a26-2c6c-4968-9f16-3f7b5c8f8312/NK+ACDMY+TEAM+BKPK+2.3.png',
        category: 'Aksesoris',
        sizes: ['One Size'],
        rating: 4.5,
        stock: 28,
      ),
      Product(
        id: '10',
        name: 'Puma Velocity Nitro 2',
        description: 'Womens Running Shoes - AW25.',
        price: 1899000,
        imageUrl:
            'https://cdn11.bigcommerce.com/s-21x65e8kfn/images/stencil/original/products/81731/444822/PUM2905_1000_5__68327.1755786113.jpg',
        category: 'Sepatu',
        sizes: ['40', '41', '42', '43', '44'],
        rating: 4.7,
        stock: 22,
      ),
    ];
  }
}
