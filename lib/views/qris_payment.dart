import 'package:court_booking/views/receipt_booking.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:court_booking/widgets/button.dart';

class QrisPayment extends StatelessWidget {
  const QrisPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "QRIS Payment",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
              Text(
                "Payment Amount",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Rp 125.000",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),

              Container(
                width: 260,
                height: 260,
                color: Colors.grey.shade300,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Image.network(
                      'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=Example',
                      width: 160,
                      height: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              Text(
                "Scan to Pay",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Point your camera at this QR code",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.grey[900],
                ),
              ),
              SizedBox(height: 5),

              Text(
                "Open your mobile banking qr e-wallet app and scan the QR code above to complete your payment",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
              ),

              SizedBox(height: 30),
              CustomButton(
                textButton: "I Have Paid",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReceiptBooking()),
                  );
                },
              ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                    },
                    child: Row(
                      children: [
                        Icon(Icons.share, size: 18),
                        SizedBox(width: 4),
                        Text("Share"),
                      ],
                    ),
                  ), 
                  SizedBox(width: 24),
                  InkWell(
                    onTap: () {

                    },
                    child: Row(
                      children: [
                        Icon(Icons.download, size: 18),
                        SizedBox(width: 4),
                        Text("Download"),
                      ],
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
