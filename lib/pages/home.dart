import 'package:flutter/material.dart';
import 'package:mage_ui/widgets/accountButton.dart';
import 'package:mage_ui/widgets/separatedTitleMenu.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
            title: Image.asset('images/logo-long-light.png', height: 25.0)),
        body: ListView(
          children: <Widget>[
            Akun(),
            Divider(),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: MenuUtama()),
            MenuTambahan(),
            Promo(),
          ],
        ));
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[100],
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      margin: EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://avatars2.githubusercontent.com/u/29970198?s=460&u=768854ef28abebdce6eea7c1447fa7517e1205df&v=4'))),
                    ),
                    Text(
                      'Yusuf Umar Hanafi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.qr_code, color: Colors.blue),
                    Text("Scan")
                  ],
                )
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                accountButton(Icons.monetization_on, "TravelpediaPay", () {}),
                accountButton(Icons.payments, "Payment", () {}),
                accountButton(Icons.history, "Paylater", () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 5,
      mainAxisSpacing: 20.0,
      children: menuUtamaItem,
    );
  }
}

class PromoItem extends StatelessWidget {
  PromoItem({this.title, this.color, this.onPressed});

  final String title;
  final Color color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Container(
          padding: EdgeInsets.all(10),
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: color),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title,
                  style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

List promoItemTitle = ["Cashback 50%", "Promo Lele Air", "Promo MAGE6"];

List<Color> promoItemColor = [Colors.red, Colors.blue, Colors.orange[500]];

List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: 'Tiket Pesawat',
    icon: Icons.flight,
    colorBox: Colors.blue[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Hotel',
    icon: Icons.hotel,
    colorBox: Colors.blue[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Pesawat + Hotel',
    icon: Icons.flight_land,
    colorBox: Colors.purple,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Xperience',
    icon: Icons.check,
    colorBox: Colors.orange[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Eats',
    icon: Icons.food_bank,
    colorBox: Colors.orange,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Kereta Api',
    icon: Icons.train,
    colorBox: Colors.orange[600],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Bus & Travel',
    icon: Icons.bus_alert,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Finansial',
    icon: Icons.attach_money,
    colorBox: Colors.indigo[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Mobil',
    icon: Icons.directions_car,
    colorBox: Colors.teal,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Semua Produk',
    icon: Icons.apps,
    colorBox: Colors.grey[300],
    iconColor: Colors.black,
  ),
];

class MenuUtamaItem extends StatelessWidget {
  MenuUtamaItem({this.title, this.icon, this.colorBox, this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(children: <Widget>[
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
          child: Icon(icon, color: iconColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 12.0),
            textAlign: TextAlign.center,
          ),
        )
      ]),
    );
  }
}

class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  MenuTambahanItem(title: 'Tagihan & Isi Ulang', icon: Icons.receipt),
  MenuTambahanItem(title: 'Pay Later', icon: Icons.payment),
  MenuTambahanItem(
      title: 'Status Penerbangan', icon: Icons.airplanemode_active),
  MenuTambahanItem(
      title: 'Pulsa & Paket Internet', icon: Icons.signal_cellular_4_bar),
  MenuTambahanItem(title: 'Online Check-In', icon: Icons.airplanemode_inactive),
  MenuTambahanItem(title: 'Notifikasi Harga', icon: Icons.notifications),
];

class MenuTambahanItem extends StatelessWidget {
  MenuTambahanItem({this.title, this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        separatedTitleMenu("Promo Saat Ini", () {}),
        Container(
          width: double.infinity,
          height: 100.0,
          padding: EdgeInsets.only(left: 8.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 15.0),
              itemCount: promoItemTitle.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 170.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: promoItemColor[index]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(promoItemTitle[index],
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
