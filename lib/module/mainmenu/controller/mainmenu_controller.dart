import 'package:flutter/material.dart';
import 'package:caffe_app/core.dart';
import '../view/mainmenu_view.dart';

class MainmenuController extends State<MainmenuView> {
  static late MainmenuController instance;
  late MainmenuView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List kategori = [
    "Rekomendasi",
    "Aneka Kopi",
    "Sarapan",
    "Aneka Jus",
    "Snack"
  ];
  int pilihkategori = 0;
  updatekategori(int newIndex) {
    pilihkategori = newIndex;
    setState(() {});
  }
  // untuk mengarah ke halaman mainmenu_view tekan CTRL+SHIFT+V

  // dummy product list
  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "photo":
          "https://asset.kompas.com/crops/VBs6hy5_8TPQwbLfAZRqZ3MwVN4=/556x0:5524x3312/750x500/data/photo/2022/07/18/62d4e8c69cef4.jpg",
      "product_name": "Ayam Geprek",
      "price": 15,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 20,
      "is_favorite": false,
    },
    {
      "id": 2,
      "photo":
          "https://asset.kompas.com/crops/yoovaRyPxaPFOY4gfCciore2eUY=/3x0:700x465/750x500/data/photo/2020/12/30/5fec5602f116e.jpg",
      "product_name": "Ayam Bakar",
      "price": 25,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 18,
      "is_favorite": true,
    },
    {
      "id": 3,
      "photo":
          "https://asset.kompas.com/crops/9w-jxYs27CSSga6ZZngjxHur5t4=/0x0:4939x3293/780x390/data/photo/2022/09/25/63300cfd403f0.jpg",
      "product_name": "Es Teh",
      "price": 33,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": false,
    },
    {
      "id": 4,
      "photo":
          "https://img-global.cpcdn.com/recipes/71241e5eaaa9672f/1200x630cq70/photo.jpg",
      "product_name": "Lele Bakar",
      "price": 15,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 25,
      "is_favorite": true,
    },
    {
      "id": 5,
      "photo":
          "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/akurat/gallery/2021/11/big/gal_618dd692a19465-28576895-85708281.JPG",
      "product_name": "Jus Jeruk",
      "price": 5,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": true,
    },
    {
      "id": 6,
      "photo":
          "https://asset.kompas.com/crops/UhV2ngrlUWo92yJyruxM7I-vSNE=/69x65:869x598/750x500/data/photo/2021/11/25/619f7dc86e939.jpg",
      "product_name": "Bebek Goreng",
      "price": 25,
      "category": "20",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 45,
      "is_favorite": false,
    },
    {
      "id": 7,
      "photo":
          "https://asset.kompas.com/crops/3FlWFMVMqfZUNfEWap6lOvG8o10=/0x390:667x834/750x500/data/photo/2022/08/16/62fae87cb1142.jpeg",
      "product_name": "Bebek Bakar",
      "price": 25,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 56,
      "is_favorite": false,
    },
    {
      "id": 8,
      "photo":
          "https://img-global.cpcdn.com/recipes/539561beae7b8af3/400x400cq70/photo.jpg",
      "product_name": "Jus Mangga",
      "price": 6,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true,
    },
    {
      "id": 9,
      "photo":
          "https://kurio-img.kurioapps.com/21/05/12/49765d59-9376-4b35-b797-3a325f972c7b.jpe",
      "product_name": "Jus Jambu",
      "price": 5,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 10,
      "photo":
          "https://images.tokopedia.net/img/cache/700/VqbcmM/2022/8/4/39bb8a03-913e-4ba6-91ca-05ccbdffb727.jpg",
      "product_name": "Jus Alpukat ",
      "price": 10,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 11,
      "photo":
          "https://www.jagel.id/api/listimage/v/Jus-Apel--0-880618a217412916.jpg",
      "product_name": "Jus Apel ",
      "price": 10,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
    {
      "id": 12,
      "photo":
          "https://cdn1-production-images-kly.akamaized.net/IKnE06y17S2jCDkXU0MyhAXGLVA=/1200x900/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2338494/original/090787200_1535012040-6.21_NAT_Pitaya_Wordpress-Body-Image.jpg",
      "product_name": "Jus Buah Naga ",
      "price": 8,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 50,
      "is_favorite": true
    },
  ];
}
