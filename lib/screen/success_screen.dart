import 'package:flutter/material.dart';


class SuccessScreen extends StatelessWidget {

  final String invoiceNo;
 const SuccessScreen({
  Key? key,
  required this.invoiceNo}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF2D3951),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
           Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color:Color(0xFF2D3951)
              ),
            ),
            Center(
              child: Container(
                padding:const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF27344E)
                ),
               child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/check.png",width: 75,height: 75,),
                  const SizedBox(height: 20,),
                  Text("វិក្កយបត្រលេខ ៖ $invoiceNo បានទូទាត់រួចរាល់",style:const TextStyle(color: Color(0xFFC5DCFF)),)

                ],
               ),
              ),
            )
          ],
        ),
      )
      );
  }
}