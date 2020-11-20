import 'package:flutter/material.dart';
import 'package:ps_store/utils/util.dart';

class Products {
  final String name;
  final String image;
  final Color color;
  final String desc;
  final String desc2;
  final String price;
  final String tag;
  final String details;
  Products({
    this.name,
    this.image,
    this.color,
    this.desc,
    this.price,
    this.tag,
    this.desc2,
    this.details,
  });
}

final List<Products> productsDetails = [
  Products(
    name: 'Ps5 DualSense',
    image: 'assets/images/dualsense-ps5.png',
    color: UIColors.color7,
    desc: 'Wireless',
    desc2: 'Controller',
    price: '\$79.99',
    tag: 'ps5',
    details:
        'teh hsbjds hsbhdhsdhsdbs dhvsgdsgd sgdgsf dgfsghdfgs fdgs sfdghs gdfs hfhdf dhfhdfhdhf dhfhdhf dhfhd fhdhf hdvhfdb fhdfsfd bfuosh fdgf dfjvdgflkdfbbdbfkj dnf jhdgfdgsfdfghsfghgs dfsdfsd sgdgs dgs shhjf hjdhf hfdfhd hdfd hvdfd hdfhgdf hdfgjd fdd vhdgh vfvf vfhd',
  ),
  Products(
    name: 'Ps5 DualSense',
    image: 'assets/images/psvr.png',
    color: UIColors.color3,
    desc: 'Wireless',
    desc2: 'Controller',
    price: '\$79.99',
    tag: 'head',
    details:
        'teh hsbjds hsbhdhsdhsdbs dhvsgdsgd sgdgsf dgfsghdfgs fdgs sfdghs gdfs hfhdf dhfhdfhdhf dhfhdhf dhfhd fhdhf hdvhfdb fhdfsfd bfuosh fdgf dfjvdgflkdfbbdbfkj dnf jhdgfdgsfdfghsfghgs dfsdfsd sgdgs dgs shhjf hjdhf hfdfhd hdfd hvdfd hdfhgdf hdfgjd fdd vhdgh vfvf vfhd',
  ),
  Products(
      name: 'Dual Shock',
      image: 'assets/images/dualshock4.png',
      color: UIColors.color4,
      desc: 'Wireless',
      desc2: 'Controller',
      price: '\$59.99',
      tag: 'ps1',
      details:
          'teh hsbjds hsbhdhsdhsdbs dhvsgdsgd sgdgsf dgfsghdfgs fdgs sfdghs gdfs hfhdf dhfhdfhdhf dhfhdhf dhfhd fhdhf hdvhfdb fhdfsfd bfuosh fdgf dfjvdgflkdfbbdbfkj dnf jhdgfdgsfdfghsfghgs dfsdfsd sgdgs dgs shhjf hjdhf hfdfhd hdfd hvdfd hdfhgdf hdfgjd fdd vhdgh vfvf vfhd'),
  Products(
      name: 'Gold Wireless',
      image: 'assets/images/gold-wireless-headset-rose-gold.png',
      color: UIColors.color5,
      desc: 'Headset',
      desc2: ' Rose Gold Edition',
      price: '\$119.99',
      tag: 'ps2',
      details:
          'teh hsbjds hsbhdhsdhsdbs dhvsgdsgd sgdgsf dgfsghdfgs fdgs sfdghs gdfs hfhdf dhfhdfhdhf dhfhdhf dhfhd fhdhf hdvhfdb fhdfsfd bfuosh fdgf dfjvdgflkdfbbdbfkj dnf jhdgfdgsfdfghsfghgs dfsdfsd sgdgs dgs shhjf hjdhf hfdfhd hdfd hvdfd hdfhgdf hdfgjd fdd vhdgh vfvf vfhd'),
  Products(
      name: 'Ps4charger',
      image: 'assets/images/ps4charger.png',
      color: UIColors.color6,
      desc: 'Headset',
      desc2: 'Rose Gold Edition',
      price: '\$119.99',
      tag: 'ps3',
      details:
          'teh hsbjds hsbhdhsdhsdbs dhvsgdsgd sgdgsf dgfsghdfgs fdgs sfdghs gdfs hfhdf dhfhdfhdhf dhfhdhf dhfhd fhdhf hdvhfdb fhdfsfd bfuosh fdgf dfjvdgflkdfbbdbfkj dnf jhdgfdgsfdfghsfghgs dfsdfsd sgdgs dgs shhjf hjdhf hfdfhd hdfd hvdfd hdfhgdf hdfgjd fdd vhdgh vfvf vfhd'),
];
