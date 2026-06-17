import 'package:court_booking/views/package_duration.dart';
import 'package:court_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sports Courts",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20)
            ),
            elevation: 2,
            color: Colors.white,
            child: Column(
              children: [
                 Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJpciV7V-W4aCc9M3iQP8bLjqOo2uxWyJYiVkxthwZjg&s=10',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Futsal Court A", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Icon(Icons.star, color: Colors.amber,),
                          Text("4.5", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Indoor || Air Conditioned", style: GoogleFonts.poppins(color: fromCssColor("#4B5563")),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Rp. 50.000/hour", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            CustomButton(textButton: "Select", onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PackageDuration())
                              );
                            },
                            heightButton: 25,
                            widthButton: 100,
                            titleSize: 12,
                            borderSize: 8,)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
