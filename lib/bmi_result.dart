import 'package:flutter/material.dart';
import 'dart:math';
import 'about_me.dart';

class BMIResult extends StatelessWidget {


  BMIResult({@required this.nama_lengkap, @required this.zodiac, @required this.tahun_lahir});
  final int tahun_lahir;
  final String nama_lengkap;
  final String zodiac;



  @override
  Widget build(BuildContext context) {
    String cBMI;
    if (zodiac =="Aries") cBMI="Zodiak Aries merupakan zodiak orang yang lahir pada tanggal 21 Maret sampai tanggal 20 April. Lambang zodiak yang berupa domba atau biri-biri jantan ini masuk ke dalam kategori kardinal atau aktif. Jadi, orang yang berzodiak Aries secara umum memiliki sifat yang berani, suka tantangan, mempunyai daya juang, percaya diri, mengutamakan tindakan serta memiliki inisiatif.";
    else if (zodiac == "Sagitarius" ) cBMI="Sagitarius (Pemanah) adalah suatu rasi bintang dari zodiak. "
        "Sagittarius berada di antara Scorpius di sebelah barat dan Capricornus di sebelah timur. "
        "Dalam Zodiak, individu yang memiliki bintang Sagittarius, terlahir pada 22 November hingga 21 Desember, ketika matahari ada pada bintang Sagittarius.";
    else if(zodiac == "Taurus") cBMI="Zodiak ini dimiliki oleh orang yang lahir pada tanggal 21 April sampai 20 Mei.Simbol dari Taurus adalah kehendak yang kuat dan kepastian. Untuk memperoleh rasa aman secara jasmani dan rohani mereka mau berjuang. "
        "Taurus yang tidak suka didesak membuat banyak orang yang memberikannya julukan si Lamban. Namun, Taurus bisa dipercaya dalam upaya membantu keluar dari masalah yang ada. Mereka tidak mudah melanggar janji dan memiliki stamina serta ketekunan untuk berusaha bertahan dari semua lawan-lawannya.";
    else if(zodiac == "Gemini") cBMI="Orang yang mempunyai tanggal lahir 21 Mei sampai tanggal 20 Juni masuk dalam zodiak Gemini dengan lambang berupa anak kembar."
        "Simbol dari zodiak ini memiliki pesona yang alami dan karisma yang bisa menarik seluruh zodiak. Banyak ide yang mereka miliki dan bisa membuat orang lain tertarik. Namun, jika berada di sekitar orang yang tidak mampu mengikuti jalan pikiran mereka, mereka cenderung merasa mudah bosan.";
    else if(zodiac == "Leo") cBMI="Orang-orang yang mempunyai tanggal kelahiran antara tanggal 21 Juli sampai tanggal 21 Agustus termasuk dalam zodiak Leo. Lambang zodiak Leo yaitu berupa singa dengan planet matahari dan elemen api. Sifat yang dimiliki oleh orang yang berzodiak Leo yaitu ramah, mempunyai jiwa kepemimpinan, berani, berbakat, suka kemegahan serta keagungan."
        "Zodiak Leo seringkali bersifat egois, mengejar kemewahan, selalu membanggakan diri, suka pamer dan otoriter. Selain itu mereka mempunyai tingkat kepercayaan diri yang tinggi, stylist, cukup dermawan serta aristokratik. ";
    else if(zodiac == "Capricorn") cBMI="Bagi Anda yang lahir antara tanggal 21 Desember hingga tanggal 19 Januari berarti zodiak Anda termasuk ke dalam jenis Capricorn. Beberapa sifat yang cukup menonjol dari orang yang mempunyai zodiak Capricorn yaitu mengutamakan reputasi, kesuksesan, jabatan, loyal, status, bijaksana, takut akan hambatan, bertanggung jawab, pesimis, rendah diri, berfikir sempit dan memiliki rasa khawatir yang berlebihan.";
    else if(zodiac == "Cancer") cBMI="Tanggal 21 Juni sampai tanggal 20 Juli merupakan kelahiran dari orang yang mempunyai zodiak Cancer. Lambang dari zodiak ini adalah kepiting. Kategori yang masuk dalam zodiak Cancer yaitu aktif atau cardinal. Jadi, biasanya orang yang mempunyai zodiak ini bersifat sabar, cerdas, suka menolong, jujur, sensitif, takut dan mudah bersimpati."
        "Cancer terkadang juga tidak konsisten, sering merasa tidak aman, senang pura-pura dan defensif. Mereka cenderung sentimentil dan mempunyai suasana hati yang tidak menentu. Namun mereka juga perhatian, setia dan memiliki sifat pemaaf. Daya ingat yang dimilikinya kuat.";
    else if(zodiac == "Pisces") cBMI="Orang yang terlahir pada tanggal 19 Febuari sampai tanggal 20 Maret masuk dalam kategori zodiak Pisces. Lambang dari zodiak Pisces yaitu berupa dua ekor ikan. Pada umumnya sifat Pisces yaitu romantis, agak manja, memiliki kegemaran di bidang seni, religius, mengalah, setia, selalu memegang teguh kepercayaan, mendengar kata hati, terkadang merasa bingung, risau, mudah kecewa serta tidak konsisten.Tetapi Pisces mempunyai sisi manusiawi yang besar, simple, suka berimajinasi dan penuh cinta.";
    else if(zodiac == "Virgo") cBMI="Tanggal 22 Agustus sampai tanggal 22 September merupakan kelahiran dari orang yang berzodiak Virgo. Simbol atau lambang dari zodiak ini yaitu putri cantik. Elemen yang dimiliki oleh zodiak ini yaitu tanah dan termasuk ke dalam kategori variabel. Jadi sifat orang yang berzodiak Virgo yaitu pekerja keras, simple, perfectionist, senang melayani, fokus pada pekerjaan dan percaya diri."
        "Meskipun demikian, karakter orang dengan zodiak Virgo berpandangan sempit, dan tidak mau mengalah, kadang senang mengeluh, terlalu kaku, cemas atau khawatir, sering gugup dan senang mengkritik.";
    else if(zodiac == "Libra") cBMI="Neraca atau timbangan adalah lambang dari zodiak Libra. Zodiak ini masuk dalam jenis kardinal aktif. Orang yang berzodiak Libra adalah mereka yang lahir tanggal 23 September sampai tanggal 22 Oktober. Secara umum pemilik zodiak libra menyukai keseimbangan, mengutamakan kesetaraan, harmonisasi, senang beraliansi, suka keadilan, family man, suka hal-hal yang berbau seni, ceria, senang menolong serta pandai berdiplomasi."
        " Mereka penuh dengan keraguan, bermuka dua, agak bimbang, memiliki naluri yang kuat dan mempesona.";
    else if(zodiac == "Scorpio") cBMI="Orang yang lahir pada tanggal 23 Oktober sampai tanggal 22 November mempunyai zodiak jenis Scorpio. Simbol dari zodiak ini yaitu berupa kalajengking yang memiliki elemen air. Kategori zodiak Scorpio adalah statis. Jadi, karakter yang dihasilkan yaitu meliputi suka dengan kemewahan, kreatif, stamina tinggi, mempunyai keinginan yang kuat dan senang membantu orang lain."
        "Scorpio juga fanatik, pencemburu, senang menyerang, agak tamak, ekstrim dan suka menuntut. Scorpio cenderung pendiam, sangat banyak akal serta pendendam. ";
    else if(zodiac == "Aquarius") cBMI="Orang-orang yang tanggal kelahirannya 20 Januari sampai tanggal 18 Febuari adalah pemilik zodiak Aquarius. Pada umumnya orang yang mempunyai zodiak Aquarius sifatnya spontan, cinta petualangan, berjiwa sosial tinggi, progresif, ingin memberikan manfaat bagi orang-orang yang ada disekitarnya dan jiwa kemanusiaannya tinggi."
        "Individu yang berzodiak Aquarius juga radikal, suka memberontak, tidak konsisten dan suka membantah. Tetapi pembawaannya tenang, cerdas, kreatif,";
    else cBMI="Salah memasukkan nama zodiak";


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Result Zodiac'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: (){
              Navigator.pushNamed(context, '/Haltiga');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
//        color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20,child: Container(
//              color: Colors.white,
              ),),
              new Text(
                "Nama : ${nama_lengkap}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 10,child: Container(
//              color: Colors.white,
              ),),
              new Text(
                "Umur : ${2020-tahun_lahir}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,child: Container(
//              color: Colors.white,
              ),),
              new Text(
                "${zodiac}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,child: Container(
//                color: Colors.white,
              ),),
              new Text(
                "Keterangan : " + cBMI,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
              ),
            ],
          ),
        ),
      ),

      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(

          color: Colors.black54,
          child: Text('BACK',
            style: TextStyle(
                fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

