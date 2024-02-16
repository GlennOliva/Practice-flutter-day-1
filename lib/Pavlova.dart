import 'package:flutter/material.dart';
import 'package:flutter_prac2/components/PavlovaCart.dart';
import 'package:flutter_prac2/components/PavlovaIcon.dart';
import 'package:flutter_prac2/components/PavlovaRow.dart';
import 'package:flutter_prac2/components/PavlovaStar.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({Key? key});




// Row pavLovaIcon() => Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     Container(
//       padding: const EdgeInsets.only(left: 35),
//       child: buildicontab(Icons.kitchen, 'PREP', '25 min'),
//     ),
//     const SizedBox(width: 10),
//     buildicontab(Icons.timer, 'COOK', '35 min'),
//     const SizedBox(width: 10),
//     buildicontab(Icons.restaurant, 'FEEDS', '8'),
//     const SizedBox(width: 15),
//   ],
// );

// Container pavLovaStar(int rating) {
//   return Container(
//     margin: const EdgeInsets.only(bottom: 10), 
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           children: List.generate(5, (index) {
//             if (index < rating) {
//               return const Icon(
//                 Icons.star,
//                 color: Colors.green,
//                 size: 30,
//               );
//             } else {
//               return const Icon(
//                 Icons.star,
//                 color: Colors.grey,
//                 size: 30,
//               );
//             }
//           }),
//         ),
//         const SizedBox(width: 10), // Add a SizedBox between the stars and text
//         Text('$rating Reviews'),
//       ],
//     ),
//   );
// }


// Column pavLovaCart() {
//   return Column(
//     children: [
//       const SizedBox(height: 20,),
//       SizedBox(
//         width: 250, // Set your desired width
//         child: ElevatedButton.icon(
//           onPressed: () {
//             // Add your action when the button is pressed
//           },
//            icon: const Icon(
//             Icons.shopping_cart,
//             color: Colors.white, // Set the icon color to white
//           ),
//           label: const Text('Add to Cart' , style:  TextStyle(color: Colors.white , fontSize: 18),),
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
//           ),
//         ),
//       ),
//     ],
//   );
// }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pavlova App' ,  textAlign: TextAlign.center,),
      ),
      body: Center(
        child: ListView(
         children: const [
           PavlovaRow(), 
          PavlovaStar(rating: 3),
          PavlovaIcon(),
          PavlovaCart()
         ],
        ),
      ),
    );
  }
  

}

// Column buildicontab(IconData iconval, String title, String time) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Icon(iconval, color: Colors.green),
//       const SizedBox(height: 10),
//       Text(
//         title,
//         style: const TextStyle(
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const SizedBox(height: 10),
//       Text(
//         time,
//         style: const TextStyle(fontWeight: FontWeight.bold),
//       ),
//     ],
//   );
// }

